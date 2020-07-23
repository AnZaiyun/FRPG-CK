package com.anzaiyun.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.anzaiyun.bean.Gift;

public interface GiftMapper {
	
	public int getGiftPage(int uid);
	
	/**
	 * ����ָ��ҳ�������츳��Ϣ
	 * @param uid
	 * @param curpage
	 * ҳ����Ŀǰһҳ10����Ϣ
	 * @return
	 */
	public List<Gift> getGiftsByUid(@Param("uid") int uid,@Param("curpage") int curpage);
	
	/**
	 * ����ָ���������츳��Ϣ����giftid��������
	 * @param uid
	 * @param rnumber
	 * Ҫ���ص��츳��Ϣ����
	 * @return
	 */
	public List<Gift> getGiftsByUid2(@Param("uid") int uid,@Param("rnumber") int rnumber);
	
	/**
	 * ����giftid��ȡ�츳��Ϣ
	 * @param rid
	 * @return
	 */
	public Gift getGiftsByGiftid(@Param("uid") int uid, @Param("giftid") int giftid);
	
	/**
	 * ����rid��ȡ�츳��Ϣ
	 * @param uid
	 * @param rid
	 * @return
	 */
	public List<Gift> getGiftsByRid(@Param("uid") int uid, @Param("rid") int rid);
	
	public String CKGift(Map<String, Object> map);
}
