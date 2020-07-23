package com.anzaiyun.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.anzaiyun.bean.Role;
import com.anzaiyun.bean.UserBag;
import com.anzaiyun.bean.ZB;
import com.anzaiyun.mapper.RoleMapper;
import com.anzaiyun.mapper.UserMapper;
import com.anzaiyun.mapper.ZBMapper;

public class GetTablesImpl implements GetTables {
	
	private static ApplicationContext  context = (ApplicationContext)  new ClassPathXmlApplicationContext("applicationContext.xml");
	private static SqlSessionFactory sqlSessionFactory = (SqlSessionFactory) context.getBean("sqlSessionFacotry");

	@Override
	public List<Role> getAllRole(int uid ,int curpage) {
		
		SqlSession session = sqlSessionFactory.openSession();
		RoleMapper roleMapper = session.getMapper(RoleMapper.class);
		List<Role> roles = roleMapper.getRoleByUid(uid, curpage);
		session.close();
		
		return roles;
	}

	@Override
	public List<ZB> getAllZB(int uid) {
		SqlSession session = sqlSessionFactory.openSession();
		List<ZB> zbs = session.selectList("getZbByUid", uid);
		session.close();
		
		return zbs;
	}
	
	@Override
	public List<ZB> getAllZBWithoutUse(int uid, int rid) {
		SqlSession session = sqlSessionFactory.openSession();
		ZBMapper zbMapper = session.getMapper(ZBMapper.class);
		List<ZB> zbs = zbMapper.getZbByUidWithoutUse(uid, rid);
		session.close();
		return zbs;
	}

	@Override
	public List<UserBag> getUserBagsByItemid(int luid, String itemid) {
		//利用接口的方式调用方法
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper userMapper = session.getMapper(UserMapper.class);
		List<UserBag> userBags = userMapper.getUserBagsByItemid(luid, itemid);
		session.close();
		
		return userBags;
	}

	@Override
	public int getRolePage(int uid) {
		SqlSession session = sqlSessionFactory.openSession();
		int rolePage = session.selectOne("getRolePage", uid);
		session.close();
		
		rolePage = rolePage/10;  //除法是向下取整的
		
		return rolePage+1;
	}



}
