package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.Store;

public interface StoreCUID {
	
	public List<Store> getStoreItems();
	
	/**
	 * 根据商店id获取物品
	 * @return
	 */
	public List<Store> getStoreItemsByStoreid(int storeId);
	
	/**
	 * 根据物品ID获取物品
	 * @return
	 */
	public Store getStoreItemsByItemid(int Itemid);
	
	
	public Store getStoreItemsByid(int storeId, int Itemid);
	
	/**
	 * 更新物品数量
	 * @param storeId
	 * @param Itemid
	 * @param count
	 * @return
	 */
	public int updateStoreItemsByid(int storeId, int Itemid, int count);

}
