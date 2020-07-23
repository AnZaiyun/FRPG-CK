package com.anzaiyun.bean;

import com.anzaiyun.util.TableNames;

public class Store {
	
	@TableNames(tableName = "商店ID")
	int sdid;
	
	@TableNames(tableName = "物品ID")
	int itemid;
	
	@TableNames(tableName = "物品名称")
	String wpmc;
	
	@TableNames(tableName = "物品类别")
	String wplb;
	
	@TableNames(tableName = "价格")
	int price;
	
	@TableNames(tableName = "剩余数量")
	int sl;
	
	@TableNames(tableName = "说明")
	String sm;
	
	public Store() {
		super();
	}
	
	public Store(int sdid, int itemid, String wplb, String wpmc, int price, int sl, String sm) {
		super();
		this.sdid = sdid;
		this.itemid = itemid;
		this.wplb = wplb;
		this.wpmc = wpmc;
		this.price = price;
		this.sl = sl;
		this.sm = sm;
	}

	/**
	 * @return the sdid
	 */
	public int getSdid() {
		return sdid;
	}

	/**
	 * @param sdid the sdid to set
	 */
	public void setSdid(int sdid) {
		this.sdid = sdid;
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

	/**
	 * @return the wpmc
	 */
	public String getWpmc() {
		return wpmc;
	}

	/**
	 * @param wpmc the wpmc to set
	 */
	public void setWpmc(String wpmc) {
		this.wpmc = wpmc;
	}

	/**
	 * @return the price
	 */
	public int getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(int price) {
		this.price = price;
	}

	/**
	 * @return the sl
	 */
	public int getSl() {
		return sl;
	}

	/**
	 * @param sl the sl to set
	 */
	public void setSl(int sl) {
		this.sl = sl;
	}

	/**
	 * @return the sm
	 */
	public String getSm() {
		return sm;
	}

	/**
	 * @param sm the sm to set
	 */
	public void setSm(String sm) {
		this.sm = sm;
	}

	@Override
	public String toString() {
		return "Store [sdid=" + sdid + ", itemid=" + itemid + ", wplb=" + wplb + ", wpmc=" + wpmc + ", price=" + price
				+ ", sl=" + sl + ", sm=" + sm + "]";
	}
	
	

}
