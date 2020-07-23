package com.anzaiyun.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.anzaiyun.bean.ZB;
import com.anzaiyun.mapper.ZBMapper;

public class ZbCUIDImpl implements ZbCUID {
	private static ApplicationContext  context = (ApplicationContext)  new ClassPathXmlApplicationContext("applicationContext.xml");
	private static SqlSessionFactory sqlSessionFactory = (SqlSessionFactory) context.getBean("sqlSessionFacotry");


	@Override
	public ZB FindZbByZBid(int zbid) {
		SqlSession session = sqlSessionFactory.openSession();
		ZB zb = session.selectOne("FindZbByZBid", zbid);
		session.close();
		return zb;
	}

	@Override
	public void DelZbByRid(int zbid) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ZB> CKZb(int uid, int counts) {
		SqlSession session = sqlSessionFactory.openSession();
		ZBMapper zbMapper = session.getMapper(ZBMapper.class);
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("uid", uid);
		param.put("a_l_number", counts);
		param.put("return_code", "");
		param.put("return_str", "");
		zbMapper.CKZb(param);
		
		if((Integer)param.get("return_code")== 0) {
			List<ZB> zbs = zbMapper.getZbByUid2(uid, counts);
			session.close();
			return zbs;
			
		}else {
			System.out.println("过程处理失败，错误信息如下："+param.get("return_str"));
			session.close();
			return null;
		}

	}

}
