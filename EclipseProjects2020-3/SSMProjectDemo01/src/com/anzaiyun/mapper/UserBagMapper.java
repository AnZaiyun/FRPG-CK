package com.anzaiyun.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.anzaiyun.bean.UserBag;

public interface UserBagMapper {
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
	public int updateUserBagsByItemid(@Param("sdid") int sdid, @Param("uid") int uid, @Param("itemid") int itemid, @Param("sl") int sl);
	
	/**
	 * У���û����������Ƿ��㹻
	 * @param uid
	 * @param itemid
	 * @return
	 */
	public int checkBagMoney(@Param("sdid") int sdid, @Param("uid") int uid, @Param("itemid") int itemid, @Param("sl") int sl);
	
}
