package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.Gift;

public interface GiftCUID {
	
public int getGiftPage(int uid);
	
	/**
	 * 根据指定页数返回天赋信息
	 * @param uid
	 * @param curpage
	 * 页数，目前一页10条信息
	 * @return
	 */
	public List<Gift> getGiftsByUid( int uid, int curpage);
	
	/**
	 * 返回指定数量的天赋信息，按giftid降序排列
	 * @param uid
	 * @param rnumber
	 * 要返回的天赋信息数量
	 * @return
	 */
	public List<Gift> getGiftsByUid2( int uid, int rnumber);
	
	/**
	 * 根据giftid获取天赋信息
	 * @param rid
	 * @return
	 */
	public Gift getGiftsByGiftid( int uid,  int giftid);
	
	/**
	 * 根据rid获取天赋信息
	 * @param uid
	 * @param rid
	 * @return
	 */
	public List<Gift> getGiftsByRid(int uid ,int rid);
	
	public List<Gift> CKGift(int uid ,int counts);

}
