package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.UserBag;

public interface BagCUID {
	
	/**
	 * 根据页码返回指定数量的背包物品信息
	 * @param uid
	 * @param page
	 * @return
	 */
	public List<UserBag> getUserBagsPage(int uid, int page);
	
	/**
	 * 获取所有的当前用户背包信息
	 * @param uid
	 * @return
	 */
	public List<UserBag> getUserBags(int uid);
	
	
	/**
	 * 根据物品类别获取用户背包信息
	 * @param uid
	 * @param wplb
	 * @return
	 */
	public List<UserBag> getUserBagsBywplb(int uid, String wplb);
	
	
	/**
	 * 查询指定的物品
	 * @param uid
	 * @param itemid
	 * @return
	 */
	public UserBag getUserBagsByItemid(int uid, int itemid);
	
	/**
	 * 购买物品，更新背包信息
	 * @param uid
	 * @param itemid
	 * @return
	 */
	public int updateUserBagsByItemid(int sdid, int uid, int itemid, int sl);
	
	/**
	 * 校验用户背包货币是否足够
	 * @param uid
	 * @param itemid
	 * @return
	 */
	public int checkBagMoney(int sdid, int uid, int itemid, int sl);
	

}
