package com.anzaiyun.bean;

import com.anzaiyun.util.TableNames;

public class UserBag {
	
	int luid;
	int itemid;
	
	@TableNames(tableName = "物品类别")
	String wplb;
	
	@TableNames(tableName = "物品名称")
	String vc_name;
	
	@TableNames(tableName = "数量")
	int lcount;
	
	@TableNames(tableName = "说明")
	String vc_sm;
	
	public UserBag() {
		super();
	}
	
	public UserBag(int luid, int itemid, String wplb, String vc_name, int lcount, String vc_sm) {
		super();
		this.luid = luid;
		this.itemid = itemid;
		this.wplb = wplb;
		this.vc_name = vc_name;
		this.lcount = lcount;
		this.vc_sm = vc_sm;
	}

	/**
	 * @return the luid
	 */
	public int getLuid() {
		return luid;
	}

	/**
	 * @param luid the luid to set
	 */
	public void setLuid(int luid) {
		this.luid = luid;
	}

	/**
	 * @return the itemid
	 */
	public int getItemid() {
		return itemid;
	}

	/**
	 * @param itemid the itemid to set
	 */
	public void setItemid(int itemid) {
		this.itemid = itemid;
	}

	/**
	 * @return the vc_name
	 */
	public String getVc_name() {
		return vc_name;
	}

	/**
	 * @param vc_name the vc_name to set
	 */
	public void setVc_name(String vc_name) {
		this.vc_name = vc_name;
	}

	/**
	 * @return the lcount
	 */
	public int getLcount() {
		return lcount;
	}

	/**
	 * @param lcount the lcount to set
	 */
	public void setLcount(int lcount) {
		this.lcount = lcount;
	}

	/**
	 * @return the vc_sm
	 */
	public String getVc_sm() {
		return vc_sm;
	}

	/**
	 * @param vc_sm the vc_sm to set
	 */
	public void setVc_sm(String vc_sm) {
		this.vc_sm = vc_sm;
	}
	
	

	/**
	 * @return the wplb
	 */
	public String getWplb() {
		return wplb;
	}

	/**
	 * @param wplb the wplb to set
	 */
	public void setWplb(String wplb) {
		this.wplb = wplb;
	}

	@Override
	public String toString() {
		return "UserBag [luid=" + luid + ", itemid=" + itemid + ", wplb=" + wplb + ", vc_name=" + vc_name + ", lcount="
				+ lcount + ", vc_sm=" + vc_sm + "]";
	}

	
	
	
	
	

}
