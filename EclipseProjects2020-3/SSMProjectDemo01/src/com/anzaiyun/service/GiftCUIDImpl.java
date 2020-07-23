package com.anzaiyun.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.anzaiyun.bean.Gift;
import com.anzaiyun.mapper.GiftMapper;

public class GiftCUIDImpl implements GiftCUID {
	
	private static ApplicationContext  context = (ApplicationContext)  new ClassPathXmlApplicationContext("applicationContext.xml");
	private static SqlSessionFactory sqlSessionFactory = (SqlSessionFactory) context.getBean("sqlSessionFacotry");

	@Override
	public int getGiftPage(int uid) {
		SqlSession session = sqlSessionFactory.openSession();
		GiftMapper giftMapper = session.getMapper(GiftMapper.class);
		int count = giftMapper.getGiftPage(uid);
		session.close();
		
		//10条信息每页
		count = count/10;
		return count;
	}

	@Override
	public List<Gift> getGiftsByUid(int uid, int curpage) {
		SqlSession session = sqlSessionFactory.openSession();
		GiftMapper giftMapper = session.getMapper(GiftMapper.class);
		List<Gift> gifts = giftMapper.getGiftsByUid(uid, curpage);
		session.close();
		return gifts;
	}

	@Override
	public List<Gift> getGiftsByUid2(int uid, int rnumber) {
		SqlSession session = sqlSessionFactory.openSession();
		GiftMapper giftMapper = session.getMapper(GiftMapper.class);
		List<Gift> gifts = giftMapper.getGiftsByUid2(uid, rnumber);
		session.close();
		return gifts;
	}

	@Override
	public Gift getGiftsByGiftid(int uid, int giftid) {
		SqlSession session = sqlSessionFactory.openSession();
		GiftMapper giftMapper = session.getMapper(GiftMapper.class);
		Gift gift = giftMapper.getGiftsByGiftid(uid, giftid);
		session.close();
		return gift;
	}

	@Override
	public List<Gift> CKGift(int uid ,int counts) {
		SqlSession session = sqlSessionFactory.openSession();
		GiftMapper giftMapper = session.getMapper(GiftMapper.class);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("uid", uid);
		param.put("a_l_number", counts);
		param.put("return_code", "");
		param.put("return_str", "");
		giftMapper.CKGift(param);
		session.close();
		if((Integer)param.get("return_code")== 0) {
			//过程处理成功，查询最新插入的gift信息返回
			List<Gift> gifts = getGiftsByUid2(uid, counts);
			
			return gifts;
		}else {
			System.out.println("过程处理失败，错误信息如下："+param.get("return_str"));
			return null;
		}
	}
	
	@Override
	public List<Gift> getGiftsByRid(int uid, int rid) {
		SqlSession session = sqlSessionFactory.openSession();
		GiftMapper giftMapper = session.getMapper(GiftMapper.class);
		List<Gift> gifts = giftMapper.getGiftsByRid(uid, rid);
		session.close();
		return gifts;
	}
	
	@Test
	public void testothers() {
		List<Gift> gifts = getGiftsByRid(1, 431);
		for (Gift gift:gifts) {
			System.out.println(gift.toString2());
		}
//		Gift gift = getGiftsByGiftid(1, 8438);
//		System.out.println(gift.toString());
		
	}

}
