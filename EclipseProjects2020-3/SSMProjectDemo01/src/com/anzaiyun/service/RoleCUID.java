package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.Role;

public interface RoleCUID {
	
	/**
	 * ��ѯ��ɫ��ȫ����Ϣ������ֵ����װ��(װ������������ɫ��ʹ�õ�װ��)
	 * @param rid
	 * @return
	 */
	public Role FindRoleFullByRid(int rid);
	
	/**
	 * ��ѯ��ɫ��������Ϣ������ֵ������װ��
	 * @param rid
	 * @return
	 */
	public Role FindRoleByRid(int rid);
	
	
	public List<Role> CKRole(int uid, int count);
	
	/**
	 * ��ѯ���� �Ľ�ɫ��Ϣ������roleid����
	 * @param uid
	 * @param count
	 * @return
	 */
	public List<Role> FildLatestRole(int uid, int count);
	
	/**
	 * ���½�ɫ��װ����Ϣ����Ҫһ�����½�ɫ���Ժ�װ����ʹ��״̬
	 * @param rid
	 * @param zbid1
	 * @param zbid2
	 * @return ������Ϣ���������³ɹ����ı�־
	 */
	public int UpdateRoleZB(int uid, int rid,int zbid1,int zbid2);
	
	/**
	 * ���½�ɫ���츳��Ϣ����Ҫһ�����½�ɫ����
	 * @param rid
	 * @param giftid1
	 * @return ������Ϣ���������³ɹ����ı�־
	 */
	public int UpdateRoleGift(int uid, int rid, int giftid1);
	
	/**
	 * ���ݽ�ɫidɾ����ɫ
	 * @param uid
	 * @param rid
	 * @return
	 */
	public boolean deleteRoleByRid(int uid, int rid);
	
	/**
	 * ��ȡ��ɫ�����츳�ӳɺ�Ľ�ɫ���ԣ�����ǰ̨forms���棬giftid�ı�ʱʹ��
	 * @param uid
	 * @param rid
	 * @param giftid
	 * @return
	 */
	public Role getRoleGiftsx(int uid, int rid, int giftid);
	
}
