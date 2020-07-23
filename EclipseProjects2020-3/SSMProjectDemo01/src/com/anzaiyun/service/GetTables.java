package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.Role;
import com.anzaiyun.bean.UserBag;
import com.anzaiyun.bean.ZB;

public interface GetTables {
	
	public List<Role> getAllRole(int uid, int curpage);
	
	public int getRolePage(int uid);
	
	public List<ZB> getAllZB(int uid);
	
	/**
	 * 获取所有装备，不包含其它角色已使用的装备
	 * @param uid
	 * @return
	 */
	public List<ZB> getAllZBWithoutUse(int uid, int rid);
	
	public List<UserBag> getUserBagsByItemid(int uid , String itemid);

}
