package com.anzaiyun.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.anzaiyun.bean.UserBag;
import com.anzaiyun.mapper.UserBagMapper;

public class BagCUIDImpl implements BagCUID {
	
	private static ApplicationContext  context = (ApplicationContext)  new ClassPathXmlApplicationContext("applicationContext.xml");
	private static SqlSessionFactory sqlSessionFactory = (SqlSessionFactory) context.getBean("sqlSessionFacotry");

	@Override
	public List<UserBag> getUserBagsPage(int uid, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserBag> getUserBags(int uid) {
		SqlSession session = sqlSessionFactory.openSession();
		UserBagMapper userBagMapper = session.getMapper(UserBagMapper.class);
		List<UserBag> userBags = userBagMapper.getUserBags(uid);
		session.close();
		return userBags;
	}

	@Override
	public UserBag getUserBagsByItemid(int uid, int itemid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateUserBagsByItemid(int sdid, int uid, int itemid, int sl) {
		SqlSession session = sqlSessionFactory.openSession();
		UserBagMapper userBagMapper = session.getMapper(UserBagMapper.class);
		int result  = userBagMapper.updateUserBagsByItemid(sdid, uid, itemid, sl);
		session.close();
		return result;
	}

	@Override
	public List<UserBag> getUserBagsBywplb(int uid, String wplb) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int checkBagMoney(int sdid, int uid, int itemid, int sl) {
		SqlSession session = sqlSessionFactory.openSession();
		UserBagMapper userBagMapper = session.getMapper(UserBagMapper.class);
		int sysl = userBagMapper.checkBagMoney(sdid, uid, itemid, sl);
		return sysl;
	}
	
	@Test
	public void testOthers() {
		int result = checkBagMoney(1,1,1,1);
		System.out.println(result);
		if(result>=0) {
			result = updateUserBagsByItemid(1,1,1,1);
			System.out.println(result);
		}
	}



}
