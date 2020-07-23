package com.anzaiyun.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.anzaiyun.bean.Store;

public interface StoreMapper {
	
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
	public int updateStoreItemsByid(@Param("storeId") int storeId,@Param("Itemid") int Itemid,@Param("sl") int sl);

}
