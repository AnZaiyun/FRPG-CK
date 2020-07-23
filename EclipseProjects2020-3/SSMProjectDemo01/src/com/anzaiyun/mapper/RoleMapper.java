package com.anzaiyun.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.anzaiyun.bean.Role;

public interface RoleMapper {
	
	/**
	 * ����ָ��ҳ�����ؽ�ɫ��Ϣ
	 * @param Uid
	 * @param curpage
	 * ҳ����Ŀǰһҳ10����Ϣ
	 * @return
	 */
	public List<Role> getRoleByUid(@Param("Uid") int Uid,@Param("curpage") int curpage);
	
	/**
	 * ����ָ��������role��Ϣ����rid��������
	 * @param Uid
	 * @param rnumber
	 * Ҫ���صĽ�ɫ��Ϣ����
	 * @return
	 */
	public List<Role> getRoleByUid2(@Param("Uid") int Uid,@Param("rnumber") int rnumber);
	
	public int getRolePage(int Uid);
	
	/**
	 * ��ȡ��ɫ��Ϣ��������װ������ֵ
	 * @param rid
	 * @return
	 */
	public Role getRoleByRid(int rid);
	
	/**
	 * ��ȡ��ɫ��Ϣ������װ������ֵ
	 * @param rid
	 * @return
	 */
	public Role getRoleFullByRid(int rid);
	
//	public String CKRole(@Param("uid") int uid,@Param("a_l_number") int a_l_number,
//			@Param("return_code") int return_code,@Param("return_str") String return_str);
//	���ִ��η�ʽ�����ԣ�����ָ���������ͣ�Ҳ���Դ���map
	public String CKRole(Map<String, Object> map);
	

	
	/**
	 * ����װ��id���½�ɫ��������Ϣ
	 * @param uid
	 * @param rid
	 * @param zbid1
	 * @param zbid2
	 * @return
	 */
	public int UpdateRoleZB(@Param("uid") int uid,@Param("rid") int rid,@Param("zbid1")  int zbid1,@Param("zbid2")  int zbid2);
	
	/**
	 * �����츳id���½�ɫ��������Ϣ
	 * @param uid
	 * @param rid
	 * @param giftid1
	 * @return
	 */
	public int UpdateRoleGift(@Param("uid") int uid,@Param("rid") int rid,@Param("giftid1")  int giftid1);
	
	/**
	 * ���ݽ�ɫidɾ����ɫ
	 * @param uid
	 * @param rid
	 * @return
	 */
	public boolean deleteRoleByRid(@Param("uid") int uid,@Param("rid") int rid);
	
	/**
	 * ��ȡ��ɫ�����츳�ӳɺ�Ľ�ɫ���ԣ�����ǰ̨forms���棬giftid�ı�ʱʹ��
	 * @param uid
	 * @param rid
	 * @param giftid
	 * @return
	 */
	public Role getRoleGiftsx(@Param("uid") int uid,@Param("rid") int rid,@Param("giftid") int giftid);

}
