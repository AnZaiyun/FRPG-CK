package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.UserBag;

public interface BagCUID {
	
	/**
	 * ����ҳ�뷵��ָ�������ı�����Ʒ��Ϣ
	 * @param uid
	 * @param page
	 * @return
	 */
	public List<UserBag> getUserBagsPage(int uid, int page);
	
	/**
	 * ��ȡ���еĵ�ǰ�û�������Ϣ
	 * @param uid
	 * @return
	 */
	public List<UserBag> getUserBags(int uid);
	
	
	/**
	 * ������Ʒ����ȡ�û�������Ϣ
	 * @param uid
	 * @param wplb
	 * @return
	 */
	public List<UserBag> getUserBagsBywplb(int uid, String wplb);
	
	
	/**
	 * ��ѯָ������Ʒ
	 * @param uid
	 * @param itemid
	 * @return
	 */
	public UserBag getUserBagsByItemid(int uid, int itemid);
	
	/**
	 * ������Ʒ�����±�����Ϣ
	 * @param uid
	 * @param itemid
	 * @return
	 */
	public int updateUserBagsByItemid(int sdid, int uid, int itemid, int sl);
	
	/**
	 * У���û����������Ƿ��㹻
	 * @param uid
	 * @param itemid
	 * @return
	 */
	public int checkBagMoney(int sdid, int uid, int itemid, int sl);
	

}
