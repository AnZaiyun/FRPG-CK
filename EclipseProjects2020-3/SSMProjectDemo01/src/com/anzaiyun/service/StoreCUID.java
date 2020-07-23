package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.Store;

public interface StoreCUID {
	
	public List<Store> getStoreItems();
	
	/**
	 * �����̵�id��ȡ��Ʒ
	 * @return
	 */
	public List<Store> getStoreItemsByStoreid(int storeId);
	
	/**
	 * ������ƷID��ȡ��Ʒ
	 * @return
	 */
	public Store getStoreItemsByItemid(int Itemid);
	
	
	public Store getStoreItemsByid(int storeId, int Itemid);
	
	/**
	 * ������Ʒ����
	 * @param storeId
	 * @param Itemid
	 * @param count
	 * @return
	 */
	public int updateStoreItemsByid(int storeId, int Itemid, int count);

}
