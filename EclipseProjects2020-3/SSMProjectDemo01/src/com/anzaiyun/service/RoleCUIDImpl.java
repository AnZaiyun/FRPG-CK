package com.anzaiyun.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.anzaiyun.bean.Role;
import com.anzaiyun.mapper.RoleMapper;

public class RoleCUIDImpl implements RoleCUID {
	
	private static ApplicationContext  context = (ApplicationContext)  new ClassPathXmlApplicationContext("applicationContext.xml");
	private static SqlSessionFactory sqlSessionFactory = (SqlSessionFactory) context.getBean("sqlSessionFacotry");
	
	@Override
	public Role FindRoleByRid(int rid) {
		SqlSession session = sqlSessionFactory.openSession();
		RoleMapper roleMapper = session.getMapper(RoleMapper.class);
		Role role = roleMapper.getRoleByRid(rid);
		session.close();
		return role;
	}
	
	@Override
	public Role FindRoleFullByRid(int rid) {
		SqlSession session = sqlSessionFactory.openSession();
		Role role = session.selectOne("getRoleFullByRid", rid);
		session.close();
		return role;
	}

	@Override
	public List<Role> CKRole(int uid, int counts) {
		SqlSession session = sqlSessionFactory.openSession();
		RoleMapper roleMapper = session.getMapper(RoleMapper.class);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("uid", uid);
		param.put("a_l_number", counts);
		param.put("return_code", "");
		param.put("return_str", "");
//		session.selectOne("CKRole", param);
		roleMapper.CKRole(param);
		session.close();
		
		if((Integer)param.get("return_code")== 0) {
			//过程处理成功，查询最新插入的role信息返回
			List<Role> roles = FildLatestRole(uid, counts);
			
			return roles;
		}else {
			System.out.println("过程处理失败，错误信息如下："+param.get("return_str"));
			return null;
		}
	}

	@Override
	public List<Role> FildLatestRole(int uid, int count) {
		SqlSession session = sqlSessionFactory.openSession();
		RoleMapper roleMapper = session.getMapper(RoleMapper.class);
		List<Role> roles = roleMapper.getRoleByUid2(uid, count);
		session.close();
		return roles;
	}

	@Override
	public int UpdateRoleZB(int uid, int rid, int zbid1, int zbid2) {
		SqlSession session = sqlSessionFactory.openSession();
		RoleMapper roleMapper = session.getMapper(RoleMapper.class);
		int result =  roleMapper.UpdateRoleZB(uid, rid, zbid1, zbid2);
		session.close();
		return result;
	}
	
	@Override
	public int UpdateRoleGift(int uid, int rid, int giftid1) {
		SqlSession session = sqlSessionFactory.openSession();
		RoleMapper roleMapper = session.getMapper(RoleMapper.class);
		int result =  roleMapper.UpdateRoleGift(uid, rid, giftid1);
		session.close();
		return result;
	}

	@Override
	public boolean deleteRoleByRid(int uid, int rid) {
		SqlSession session = sqlSessionFactory.openSession();
		RoleMapper roleMapper = session.getMapper(RoleMapper.class);
		boolean result = roleMapper.deleteRoleByRid(uid, rid);
		session.close();
		return result;
	}
	
	@Override
	public Role getRoleGiftsx(int uid, int rid, int giftid) {
		SqlSession session = sqlSessionFactory.openSession();
		RoleMapper roleMapper = session.getMapper(RoleMapper.class);
		Role role = roleMapper.getRoleGiftsx(uid, rid, giftid);
		return role;
	}
	
	@Test
	public void testother() {
		Role role = getRoleGiftsx(1,147,11);
		System.out.println(role.toString());
	}

	

	

}
