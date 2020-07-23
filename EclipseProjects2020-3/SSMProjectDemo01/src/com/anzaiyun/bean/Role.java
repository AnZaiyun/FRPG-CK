package com.anzaiyun.bean;

import com.anzaiyun.util.TableNames;

public class Role {
	
	int rnum;
	int rid;
	int luid;
	
	@TableNames(tableName = "角色名称")
	String rname;
	
	@TableNames(tableName = "等级")
	int rlevel;
	
	@TableNames(tableName = "经验值")
	String expstr;
	
	@TableNames(tableName = "稀有度")
	String rare;
	Float hp;
	Float mp;
	Float atk;
	Float def;
	
	@TableNames(tableName = "装备栏1")
	int zbid1;
	
	@TableNames(tableName = "装备栏2")
	int zbid2;
	
	@TableNames(tableName = "天赋")
	int giftid1;
	
	public Role() {
		super();
	}
	
	public Role(int rnum, int rid, int luid, String rname, int rlevel, String rare, Float hp, Float mp, Float atk, Float def) {
		super();
		this.rnum = rnum;
		this.rid = rid;
		this.luid = luid;
		this.rname = rname;
		this.rlevel = rlevel;
		this.rare = rare;
		this.hp = hp;
		this.mp = mp;
		this.atk = atk;
		this.def = def;
	}

	public Role(int rnum, int rid, int luid, String rname, int rlevel, String expstr, String rare, Float hp, Float mp,
			Float atk, Float def, int zbid1, int zbid2) {
		super();
		this.rnum = rnum;
		this.rid = rid;
		this.luid = luid;
		this.rname = rname;
		this.rlevel = rlevel;
		this.expstr = expstr;
		this.rare = rare;
		this.hp = hp;
		this.mp = mp;
		this.atk = atk;
		this.def = def;
		this.zbid1 = zbid1;
		this.zbid2 = zbid2;
	}

	/**
	 * @return the rnum
	 */
	public int getRnum() {
		return rnum;
	}

	/**
	 * @param rnum the rnum to set
	 */
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	/**
	 * @return the rid
	 */
	public int getRid() {
		return rid;
	}

	/**
	 * @param rid the rid to set
	 */
	public void setRid(int rid) {
		this.rid = rid;
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
	 * @return the rname
	 */
	public String getRname() {
		return rname;
	}

	/**
	 * @param rname the rname to set
	 */
	public void setRname(String rname) {
		this.rname = rname;
	}

	/**
	 * @return the rlevel
	 */
	public int getRlevel() {
		return rlevel;
	}

	/**
	 * @param rlevel the rlevel to set
	 */
	public void setRlevel(int rlevel) {
		this.rlevel = rlevel;
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
	 * @return the zbid1
	 */
	public int getZbid1() {
		return zbid1;
	}

	/**
	 * @param zbid1 the zbid1 to set
	 */
	public void setZbid1(int zbid1) {
		this.zbid1 = zbid1;
	}

	/**
	 * @return the zbid2
	 */
	public int getZbid2() {
		return zbid2;
	}

	/**
	 * @param zbid2 the zbid2 to set
	 */
	public void setZbid2(int zbid2) {
		this.zbid2 = zbid2;
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
	 * @return the giftid1
	 */
	public int getGiftid1() {
		return giftid1;
	}

	/**
	 * @param giftid1 the giftid1 to set
	 */
	public void setGiftid1(int giftid1) {
		this.giftid1 = giftid1;
	}

	@Override
	public String toString() {
		return "Role [rnum=" + rnum + ", rid=" + rid + ", luid=" + luid + ", rname=" + rname + ", rlevel=" + rlevel
				+ ", rare=" + rare + ", hp=" + hp + ", mp=" + mp + ", atk=" + atk + ", def=" + def + ", zbid1=" + zbid1
				+ ", zbid2=" + zbid2 + "]";
	}
	
	public String toString2() {
		return " [序号：" + rnum +  ", 角色名：" + rname + ", 稀有度：" + rare + "]";
	}

}
