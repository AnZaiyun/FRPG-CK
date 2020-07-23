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

import com.anzaiyun.bean.FightLog;
import com.anzaiyun.bean.User;
import com.anzaiyun.service.fight.FightNomoralPck;
import com.anzaiyun.service.fight.FightNomoralPckImpl;

@Controller
@RequestMapping("Fight")
public class FightHandler {
	FightNomoralPck fight = new FightNomoralPckImpl();
	
	@RequestMapping(value = "FightNomoral" ,method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> FightNomoral(@RequestParam("rid") int rid,@RequestParam("rare") String rare,@RequestParam("fnumber") int fnumber,
			HttpSession session, ServletRequest request,Model model){
		System.out.println(rid+"  "+rare+"  "+fnumber);
		User user = (User)session.getAttribute("user");
		boolean result = fight.FightNomoral(user.getLid(), rid, fnumber, rare);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		if (result) {
			List<FightLog> fightLogs = fight.getFightLog(user.getLid(), rid, fnumber);
			String fightLogsstr = "";
			for (FightLog fightLog:fightLogs) {
				fightLogsstr = fightLogsstr+fightLog.toString()+"\n";
			}
			resultMap.put("fightLogs", fightLogsstr);	
			System.out.println(fightLogsstr);
		}else {
			System.out.println("Õ½¶·Ê§°Ü¡£¡£¡£");
			resultMap.put("fightLogs", "Õ½¶·Ê§°Ü¡£¡£¡£");	
		}
		
		
		
		return resultMap;
	}

}
