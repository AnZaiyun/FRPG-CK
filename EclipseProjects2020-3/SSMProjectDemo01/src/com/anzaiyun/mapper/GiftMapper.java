package com.anzaiyun.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.anzaiyun.bean.Gift;

public interface GiftMapper {
	
	public int getGiftPage(int uid);
	
	/**
	 * 根据指定页数返回天赋信息
	 * @param uid
	 * @param curpage
	 * 页数，目前一页10条信息
	 * @return
	 */
	public List<Gift> getGiftsByUid(@Param("uid") int uid,@Param("curpage") int curpage);
	
	/**
	 * 返回指定数量的天赋信息，按giftid降序排列
	 * @param uid
	 * @param rnumber
	 * 要返回的天赋信息数量
	 * @return
	 */
	public List<Gift> getGiftsByUid2(@Param("uid") int uid,@Param("rnumber") int rnumber);
	
	/**
	 * 根据giftid获取天赋信息
	 * @param rid
	 * @return
	 */
	public Gift getGiftsByGiftid(@Param("uid") int uid, @Param("giftid") int giftid);
	
	/**
	 * 根据rid获取天赋信息
	 * @param uid
	 * @param rid
	 * @return
	 */
	public List<Gift> getGiftsByRid(@Param("uid") int uid, @Param("rid") int rid);
	
	public String CKGift(Map<String, Object> map);
}
