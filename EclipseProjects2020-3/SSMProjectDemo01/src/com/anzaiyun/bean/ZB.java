package com.anzaiyun.bean;

import com.anzaiyun.util.TableNames;

public class ZB {
	
	int zbnum;
	int zbid;
	int luid;
	
	@TableNames(tableName = "装备名称")
	String zname;
	
	@TableNames(tableName = "等级")
	int zlevel;
	
	@TableNames(tableName = "经验")
	String expstr;
	
	@TableNames(tableName = "稀有度")
	String rare;
	Float hp;
	Float mp;
	Float atk;
	Float def;
	
	@TableNames(tableName = "状态")
	String sfsy;
	
	int lsfsy;
	
	public ZB() {
		super();
	}

	public ZB(int zbnum, int zbid, int luid, String zname, int zlevel, String rare, Float hp, Float mp, Float atk,
			Float def) {
		super();
		this.zbnum = zbnum;
		this.zbid = zbid;
		this.luid = luid;
		this.zname = zname;
		this.zlevel = zlevel;
		this.rare = rare;
		this.hp = hp;
		this.mp = mp;
		this.atk = atk;
		this.def = def;
	}

	public ZB(int zbnum, int zbid, int luid, String zname, int zlevel, String expstr, String rare, Float hp, Float mp,
			Float atk, Float def) {
		super();
		this.zbnum = zbnum;
		this.zbid = zbid;
		this.luid = luid;
		this.zname = zname;
		this.zlevel = zlevel;
		this.expstr = expstr;
		this.rare = rare;
		this.hp = hp;
		this.mp = mp;
		this.atk = atk;
		this.def = def;
	}

	/**
	 * @return the zbnum
	 */
	public int getZbnum() {
		return zbnum;
	}

	/**
	 * @param zbnum the zbnum to set
	 */
	public void setZbnum(int zbnum) {
		this.zbnum = zbnum;
	}

	/**
	 * @return the zbid
	 */
	public int getZbid() {
		return zbid;
	}

	/**
	 * @param zbid the zbid to set
	 */
	public void setZbid(int zbid) {
		this.zbid = zbid;
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
	 * @return the zname
	 */
	public String getZname() {
		return zname;
	}

	/**
	 * @param zname the zname to set
	 */
	public void setZname(String zname) {
		this.zname = zname;
	}

	/**
	 * @return the zlevel
	 */
	public int getZlevel() {
		return zlevel;
	}

	/**
	 * @param zlevel the zlevel to set
	 */
	public void setZlevel(int zlevel) {
		this.zlevel = zlevel;
	}

	/**
	 * @return the rare
	 */
	public String getRare() {
		return rare;
	}

	/**
	 * @param rare the rare to set
	 */
	public void setRare(String rare) {
		this.rare = rare;
	}

	/**
	 * @return the hp
	 */
	public Float getHp() {
		return hp;
	}

	/**
	 * @param hp the hp to set
	 */
	public void setHp(Float hp) {
		this.hp = hp;
	}

	/**
	 * @return the mp
	 */
	public Float getMp() {
		return mp;
	}

	/**
	 * @param mp the mp to set
	 */
	public void setMp(Float mp) {
		this.mp = mp;
	}

	/**
	 * @return the atk
	 */
	public Float getAtk() {
		return atk;
	}

	/**
	 * @param atk the atk to set
	 */
	public void setAtk(Float atk) {
		this.atk = atk;
	}

	/**
	 * @return the def
	 */
	public Float getDef() {
		return def;
	}

	/**
	 * @param def the def to set
	 */
	public void setDef(Float def) {
		this.def = def;
	}

	/**
	 * @return the expstr
	 */
	public String getExpstr() {
		return expstr;
	}

	/**
	 * @param expstr the expstr to set
	 */
	public void setExpstr(String expstr) {
		this.expstr = expstr;
	}

	/**
	 * @return the sfzy
	 */
	public String getSfsy() {
		return sfsy;
	}

	/**
	 * @param sfzy the sfzy to set
	 */
	public void setSfsy(String sfsy) {
		this.sfsy = sfsy;
	}

	/**
	 * @return the lsfsy
	 */
	public int getLsfsy() {
		return lsfsy;
	}

	/**
	 * @param lsfsy the lsfsy to set
	 */
	public void setLsfsy(int lsfsy) {
		this.lsfsy = lsfsy;
	}

	@Override
	public String toString() {
		return "ZB [zbnum=" + zbnum + ", zbid=" + zbid + ", luid=" + luid + ", zname=" + zname + ", zlevel=" + zlevel
				+ ", rare=" + rare + ", hp=" + hp + ", mp=" + mp + ", atk=" + atk + ", def=" + def + "]";
	}

	public String toString2() {
		return "装备[序号：" + zbnum +  ", 装备名：" + zname +  ", 稀有度：" + rare + "]";
	}
	
	
	
	
	
	
}
