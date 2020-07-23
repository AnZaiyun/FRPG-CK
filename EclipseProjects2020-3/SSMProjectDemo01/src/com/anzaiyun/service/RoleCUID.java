package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.Role;

public interface RoleCUID {
	
	/**
	 * 查询角色的全部信息，属性值包含装备(装备不含其它角色已使用的装备)
	 * @param rid
	 * @return
	 */
	public Role FindRoleFullByRid(int rid);
	
	/**
	 * 查询角色的属性信息，属性值不包含装备
	 * @param rid
	 * @return
	 */
	public Role FindRoleByRid(int rid);
	
	
	public List<Role> CKRole(int uid, int count);
	
	/**
	 * 查询最新 的角色信息，根据roleid排序
	 * @param uid
	 * @param count
	 * @return
	 */
	public List<Role> FildLatestRole(int uid, int count);
	
	/**
	 * 更新角色的装备信息，需要一并更新角色属性和装备的使用状态
	 * @param rid
	 * @param zbid1
	 * @param zbid2
	 * @return 保留信息，用作更新成功与否的标志
	 */
	public int UpdateRoleZB(int uid, int rid,int zbid1,int zbid2);
	
	/**
	 * 更新角色的天赋信息，需要一并更新角色属性
	 * @param rid
	 * @param giftid1
	 * @return 保留信息，用作更新成功与否的标志
	 */
	public int UpdateRoleGift(int uid, int rid, int giftid1);
	
	/**
	 * 根据角色id删除角色
	 * @param uid
	 * @param rid
	 * @return
	 */
	public boolean deleteRoleByRid(int uid, int rid);
	
	/**
	 * 获取角色加上天赋加成后的角色属性，用于前台forms界面，giftid改变时使用
	 * @param uid
	 * @param rid
	 * @param giftid
	 * @return
	 */
	public Role getRoleGiftsx(int uid, int rid, int giftid);
	
}
