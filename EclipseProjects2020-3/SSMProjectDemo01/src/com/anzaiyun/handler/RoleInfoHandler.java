package com.anzaiyun.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anzaiyun.bean.Role;
import com.anzaiyun.bean.User;
import com.anzaiyun.bean.ZB;
import com.anzaiyun.service.GetTables;
import com.anzaiyun.service.GetTablesImpl;
import com.anzaiyun.service.RoleCUID;
import com.anzaiyun.service.RoleCUIDImpl;
import com.anzaiyun.service.ZbCUID;
import com.anzaiyun.service.ZbCUIDImpl;


@Controller
@RequestMapping(value = "RoleInfo")
public class RoleInfoHandler {
	
	private GetTables getTables = new GetTablesImpl();
	private RoleCUID roleCUID = new RoleCUIDImpl();
	private ZbCUID zbCUID = new ZbCUIDImpl();

	/**
	 * 暂时废弃不做使用，因为使用ajax更新数据，无法更改session中的值，找到方法后恢复使用
	 * @return
	 */
	@RequestMapping("SaveChangeRole")
	@ResponseBody
	public Map<String, Object> store(@RequestParam("rid") int rid, @RequestParam("uid") int uid,
			@RequestParam(value = "giftid1", defaultValue = "-1") int giftid1,
			@RequestParam(value = "zbid1", defaultValue = "-1") int zbid1, @RequestParam(value = "zbid2", defaultValue = "-1") int zbid2,
			HttpSession session, ServletRequest request,Model model) {	
		Map<String, Object> result = new HashMap<String, Object>();
		
		int ret = roleCUID.UpdateRoleZB(uid, rid, zbid1, zbid2);
		
		System.out.println("store......................");
        ret = roleCUID.UpdateRoleGift(uid, rid, giftid1);
		
		request.removeAttribute("roles");
		result.put("result", ret);
		return result;
	}
	
	
	
	@RequestMapping(value = "RoleIdChange" ,method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> RoleIdChange(@RequestParam("rid") int rid,@RequestParam("uid") int uid,
			ServletRequest request, Model model) {
		System.out.println("RoleIdChange...");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Role role= roleCUID.FindRoleFullByRid(rid);
		
		List<ZB> zbs = getTables.getAllZBWithoutUse(uid, rid);
		
		resultMap.put("rname", role.getRname());
		resultMap.put("rlevel", role.getRlevel());
		resultMap.put("expstr", role.getExpstr());
		resultMap.put("rare", role.getRare());
		resultMap.put("hp", role.getHp());
		resultMap.put("mp", role.getMp());
		resultMap.put("atk", role.getAtk());
		resultMap.put("def", role.getDef());
		resultMap.put("zbid1", role.getZbid1());
		resultMap.put("zbid2", role.getZbid2());
		resultMap.put("giftid1", role.getGiftid1());
//		resultMap.put("zbs", zbs);
		resultMap.put("zbsCount", zbs.size());
		
		model.addAttribute("zbsCount", zbs.size());
		
		System.out.println("giftid:"+role.getGiftid1());
		return resultMap;
    }
//	使用json字符串的方式传值
//	public String formsGetDetail(@RequestBody Role role,ServletRequest request, Model model) {
//		System.out.println(role.getRid());
//		return "123";
//	}
	
	
	@RequestMapping(value = "RoleZbIdChange" ,method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> RoleZbIdChange(@RequestParam("rid") int rid, @RequestParam(value = "zbid1",defaultValue = "-1") int zbid1, 
			@RequestParam(value = "zbid2",defaultValue = "-1") int zbid2,
			ServletRequest request, Model model) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Role role= roleCUID.FindRoleByRid(rid);
		ZB zb = zbCUID.FindZbByZBid(zbid1);
		ZB zb2 = zbCUID.FindZbByZBid(zbid2);
		if(zb != null) {
			role.setHp(role.getHp() + zb.getHp());
			role.setMp(role.getMp() + zb.getMp());
			role.setAtk(role.getAtk() + zb.getAtk());
			role.setDef(role.getDef() + zb.getDef());
		}
		if(zb2 != null) {
			role.setHp(role.getHp() + zb2.getHp());
			role.setMp(role.getMp() + zb2.getMp());
			role.setAtk(role.getAtk() + zb2.getAtk());
			role.setDef(role.getDef() + zb2.getDef());
		}
		resultMap.put("hp", role.getHp());
		resultMap.put("mp", role.getMp());
		resultMap.put("atk", role.getAtk());
		resultMap.put("def", role.getDef());
		return resultMap;
    }
	
	@RequestMapping(value = "RoleGiftIdChange" ,method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> RoleGiftIdChange(@RequestParam("rid") int rid, @RequestParam(value = "giftid1",defaultValue = "-1") int giftid1, 
			HttpSession session, ServletRequest request, Model model) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		User user = (User)session.getAttribute("user");
		Role role= roleCUID.FindRoleFullByRid(rid);
		resultMap.put("giftid_old", role.getGiftid1());
		resultMap.put("hp_old", role.getHp());
		resultMap.put("mp_old", role.getMp());
		resultMap.put("atk_old", role.getAtk());
		resultMap.put("def_old", role.getDef());
		
		role= roleCUID.getRoleGiftsx(user.getLid(), rid, giftid1);
		
		resultMap.put("giftid", giftid1);
		resultMap.put("hp", role.getHp());
		resultMap.put("mp", role.getMp());
		resultMap.put("atk", role.getAtk());
		resultMap.put("def", role.getDef());
		return resultMap;
    }

}
