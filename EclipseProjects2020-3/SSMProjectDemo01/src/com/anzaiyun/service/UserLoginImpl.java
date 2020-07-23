package com.anzaiyun.service;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.anzaiyun.bean.User;
import com.anzaiyun.util.ILockAndUnlockPwd;

public class UserLoginImpl implements UserLogin {
	
	private static ApplicationContext  context = (ApplicationContext)  new ClassPathXmlApplicationContext("applicationContext.xml");
	private static SqlSessionFactory sqlSessionFactory = (SqlSessionFactory) context.getBean("sqlSessionFacotry");
	private static ILockAndUnlockPwd lockpwd = (ILockAndUnlockPwd) context.getBean("lockAndUnlockPwd"); 
	

	@Override
	public boolean register(User user) {
		// TODO Auto-generated method stub
		try {
			user.setUpassword(lockpwd.lockPassword(user.getUpassword()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		SqlSession session= sqlSessionFactory.openSession();
		Object result = session.insert("addUser", user);
		session.commit();
		session.close();
		
		System.out.println(result.toString());
		if (result.toString() == "1"){
			return true;
		}else {
			return false;
		}
		
	}

	@Override
	public User login(String name, String pwd) {
		// TODO Auto-generated method stub
		try {
			pwd = lockpwd.lockPassword(pwd);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		SqlSession session= sqlSessionFactory.openSession();
		User user = session.selectOne("findUser", new User(name, pwd));
		
		return user;
	}

}
