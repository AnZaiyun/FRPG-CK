package com.anzaiyun.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.anzaiyun.bean.Store;

public interface StoreMapper {
	
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
	public int updateStoreItemsByid(@Param("storeId") int storeId,@Param("Itemid") int Itemid,@Param("sl") int sl);

}
