package com.anzaiyun.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anzaiyun.bean.ZB;
import com.anzaiyun.service.ZbCUID;
import com.anzaiyun.service.ZbCUIDImpl;

@Controller
@RequestMapping("ZBInfo")
public class ZBInfoHandler {
	
	private ZbCUID zbCUID = new ZbCUIDImpl();
	
	@RequestMapping(value = "formsGetZBDetail" ,method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> formsGetZBDetail(@RequestBody ZB zb,ServletRequest request, Model model) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		zb= zbCUID.FindZbByZBid(zb.getZbid());
		
		resultMap.put("zname", zb.getZname());
		resultMap.put("zlevel", zb.getZlevel());
		resultMap.put("expstr", zb.getExpstr());
		resultMap.put("rare", zb.getRare());
		resultMap.put("hp", zb.getHp());
		resultMap.put("mp", zb.getMp());
		resultMap.put("atk", zb.getAtk());
		resultMap.put("def", zb.getDef());
		System.out.println(zb.toString());
		return resultMap;
    }

}
