package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.Store;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.anzaiyun.mapper.StoreMapper;

public class StoreCUIDImpl implements StoreCUID {
	private static ApplicationContext  context = (ApplicationContext)  new ClassPathXmlApplicationContext("applicationContext.xml");
	private static SqlSessionFactory sqlSessionFactory = (SqlSessionFactory) context.getBean("sqlSessionFacotry");

	@Override
	public List<Store> getStoreItems() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Store> getStoreItemsByStoreid(int storeId) {
		SqlSession session= sqlSessionFactory.openSession();
		StoreMapper storeMapper = session.getMapper(StoreMapper.class);
		
		List<Store> stores = storeMapper.getStoreItemsByStoreid(storeId);
		
		return stores;
	}

	@Override
	public Store getStoreItemsByItemid(int Itemid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Store getStoreItemsByid(int storeId, int Itemid) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int updateStoreItemsByid(int storeId, int Itemid, int count) {
		SqlSession session= sqlSessionFactory.openSession();
		StoreMapper storeMapper = session.getMapper(StoreMapper.class);
		int result = storeMapper.updateStoreItemsByid(storeId, Itemid, count);
		session.close();
		
		return result;
	}
	
	@Test
	public void testOthers() {
		int result = updateStoreItemsByid(1,1,2);
		
		System.out.println(result);
	}


}
