package com.anzaiyun.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.anzaiyun.bean.Role;

public interface RoleMapper {
	
	/**
	 * 根据指定页数返回角色信息
	 * @param Uid
	 * @param curpage
	 * 页数，目前一页10条信息
	 * @return
	 */
	public List<Role> getRoleByUid(@Param("Uid") int Uid,@Param("curpage") int curpage);
	
	/**
	 * 返回指定数量的role信息，按rid降序排列
	 * @param Uid
	 * @param rnumber
	 * 要返回的角色信息数量
	 * @return
	 */
	public List<Role> getRoleByUid2(@Param("Uid") int Uid,@Param("rnumber") int rnumber);
	
	public int getRolePage(int Uid);
	
	/**
	 * 获取角色信息，不包含装备属性值
	 * @param rid
	 * @return
	 */
	public Role getRoleByRid(int rid);
	
	/**
	 * 获取角色信息，包含装备属性值
	 * @param rid
	 * @return
	 */
	public Role getRoleFullByRid(int rid);
	
//	public String CKRole(@Param("uid") int uid,@Param("a_l_number") int a_l_number,
//			@Param("return_code") int return_code,@Param("return_str") String return_str);
//	两种传参方式都可以，可以指明参数类型，也可以传入map
	public String CKRole(Map<String, Object> map);
	

	
	/**
	 * 根据装备id更新角色的属性信息
	 * @param uid
	 * @param rid
	 * @param zbid1
	 * @param zbid2
	 * @return
	 */
	public int UpdateRoleZB(@Param("uid") int uid,@Param("rid") int rid,@Param("zbid1")  int zbid1,@Param("zbid2")  int zbid2);
	
	/**
	 * 根据天赋id更新角色的属性信息
	 * @param uid
	 * @param rid
	 * @param giftid1
	 * @return
	 */
	public int UpdateRoleGift(@Param("uid") int uid,@Param("rid") int rid,@Param("giftid1")  int giftid1);
	
	/**
	 * 根据角色id删除角色
	 * @param uid
	 * @param rid
	 * @return
	 */
	public boolean deleteRoleByRid(@Param("uid") int uid,@Param("rid") int rid);
	
	/**
	 * 获取角色加上天赋加成后的角色属性，用于前台forms界面，giftid改变时使用
	 * @param uid
	 * @param rid
	 * @param giftid
	 * @return
	 */
	public Role getRoleGiftsx(@Param("uid") int uid,@Param("rid") int rid,@Param("giftid") int giftid);

}
