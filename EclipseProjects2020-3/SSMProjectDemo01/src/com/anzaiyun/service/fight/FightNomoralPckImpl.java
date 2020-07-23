package com.anzaiyun.service.fight;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.anzaiyun.bean.FightLog;
import com.anzaiyun.mapper.FightMapper;

public class FightNomoralPckImpl implements FightNomoralPck{
	private static ApplicationContext  context = (ApplicationContext)  new ClassPathXmlApplicationContext("applicationContext.xml");
	private static SqlSessionFactory sqlSessionFactory = (SqlSessionFactory) context.getBean("sqlSessionFacotry");

	@Override
	public Boolean FightNomoral(int uid, int rid,  int fnumber,String rare) {
		SqlSession session = sqlSessionFactory.openSession();
		FightMapper fightMapper = session.getMapper(FightMapper.class);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("uid", uid);
		param.put("rid", rid);
		param.put("fnumber", fnumber);
		param.put("rare", rare);
		param.put("return_code", "");
		param.put("return_str", "");
		
		fightMapper.FightNomoral(param);
		Integer code = (Integer) param.get("return_code");
		String str = (String) param.get("return_str");
		
		if(code==0) {
			return true;
		}else {
			System.out.println("战斗失败，错误信息如下：\n" + str);
			return false;
		}
	}
	
	@Override
	public List<FightLog> getFightLog(int uid, int rid, int fnumber) {
		SqlSession session = sqlSessionFactory.openSession();
		FightMapper fightMapper = session.getMapper(FightMapper.class);
		List<FightLog> fightLogs = fightMapper.getFightLog(uid, rid, fnumber);
		return fightLogs;
	}
	
	@Test
	public void testOthers() {
//		FightNomoral(1,415,3,"E");
		List<FightLog> fightLogs = getFightLog(1,415,3);
		for(FightLog fightLog:fightLogs) {
			System.out.println(fightLog.toString());
		}
	}

	
	

}
