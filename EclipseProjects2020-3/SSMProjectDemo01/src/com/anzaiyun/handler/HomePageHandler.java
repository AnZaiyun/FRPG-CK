package com.anzaiyun.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anzaiyun.bean.Gift;
import com.anzaiyun.bean.Role;
import com.anzaiyun.bean.UserBag;
import com.anzaiyun.bean.ZB;
import com.anzaiyun.service.GetTables;
import com.anzaiyun.service.GetTablesImpl;
import com.anzaiyun.service.GiftCUID;
import com.anzaiyun.service.GiftCUIDImpl;
import com.anzaiyun.service.RoleCUID;
import com.anzaiyun.service.RoleCUIDImpl;
import com.anzaiyun.service.ZbCUID;
import com.anzaiyun.service.ZbCUIDImpl;

@Controller
@RequestMapping("HomePage")
public class HomePageHandler {
	
	private GetTables getTables = new GetTablesImpl();
	private RoleCUID roleCUID = new RoleCUIDImpl();
	private ZbCUID zbCUID = new ZbCUIDImpl();
	private GiftCUID giftCUID = new GiftCUIDImpl();
	
	@RequestMapping(value = "GetRoleAndZb" ,method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> GetRoleAndZb(@RequestParam("kind") int kind, @RequestParam(value = "count") int count, @RequestParam(value = "uid") int uid,
			ServletRequest request, Model model) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		String resultstr = "";
		if(kind == 1) {
			resultstr = "恭喜您获得以下角色卡：\n";
			List<Role> roles = roleCUID.CKRole(uid, count);
			for(Role role : roles) {
				resultstr = resultstr+"\n"+ role.toString2();
			}
		}else if (kind == 2){
			resultstr = "恭喜您获得以下装备卡：\n";
			List<ZB> zbs = zbCUID.CKZb(uid, count);
			for (ZB zb:zbs) {
				resultstr = resultstr+"\n"+ zb.toString2();
			}
		}else if (kind == 3){
			resultstr = "恭喜您获得以下天赋卡：\n";
			List<Gift> gifts = giftCUID.CKGift(uid, count);
			for (Gift gift:gifts) {
				resultstr = resultstr+"\n"+ gift.toString2();
			}
		}
		resultMap.put("result", resultstr);
		
		//抽卡结束后，背包信息有更新，前台需要同步更新
		List<UserBag> userBags = getTables.getUserBagsByItemid(uid, "1,2,3,4,5");
		for(UserBag userBag:userBags) {
			int itemid = userBag.getItemid();
			if( itemid== 1) {
				resultMap.put("Role Paper",  userBag.getLcount());
			}else if ( itemid== 2) {
				resultMap.put("ZB Paper",  userBag.getLcount());
			}else if ( itemid== 5) {
				resultMap.put("Gift Paper",  userBag.getLcount());
			} else if ( itemid== 3) {
				resultMap.put("Gold",  userBag.getLcount());
			}else if ( itemid== 4) {
				resultMap.put("Diamond",  userBag.getLcount());
			}
		}

		return resultMap;
    }

}
