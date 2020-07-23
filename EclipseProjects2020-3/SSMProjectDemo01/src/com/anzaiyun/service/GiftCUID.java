package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.Gift;

public interface GiftCUID {
	
public int getGiftPage(int uid);
	
	/**
	 * ����ָ��ҳ�������츳��Ϣ
	 * @param uid
	 * @param curpage
	 * ҳ����Ŀǰһҳ10����Ϣ
	 * @return
	 */
	public List<Gift> getGiftsByUid( int uid, int curpage);
	
	/**
	 * ����ָ���������츳��Ϣ����giftid��������
	 * @param uid
	 * @param rnumber
	 * Ҫ���ص��츳��Ϣ����
	 * @return
	 */
	public List<Gift> getGiftsByUid2( int uid, int rnumber);
	
	/**
	 * ����giftid��ȡ�츳��Ϣ
	 * @param rid
	 * @return
	 */
	public Gift getGiftsByGiftid( int uid,  int giftid);
	
	/**
	 * ����rid��ȡ�츳��Ϣ
	 * @param uid
	 * @param rid
	 * @return
	 */
	public List<Gift> getGiftsByRid(int uid ,int rid);
	
	public List<Gift> CKGift(int uid ,int counts);

}
