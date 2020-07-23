package com.anzaiyun.bean;

import com.anzaiyun.util.TableNames;

public class Gift {
	
	@TableNames(tableName = "���")
	int lnum;
	int giftid;
	int luid;
	
	@TableNames(tableName = "�츳����")
	String gname;
	
	@TableNames(tableName = "�ȼ�")
	int glevel;
	
	@TableNames(tableName = "����ֵ")
	String expstr;
	
	@TableNames(tableName = "ϡ�ж�")
	String rare;
	
	@TableNames(tableName = "�츳��Ϣ")
	String sxinfo;
	
	@TableNames(tableName = "״̬")
	String sfsy;
	
	int lsfsy;
	
	public Gift() {
		super();
	}
	
	public Gift(int lnum, int giftid, int luid, String gname, int glevel, String expstr, String rare, String sxinfo) {
		super();
		this.lnum = lnum;
		this.giftid = giftid;
		this.luid = luid;
		this.gname = gname;
		this.glevel = glevel;
		this.expstr = expstr;
		this.rare = rare;
		this.sxinfo = sxinfo;
	}

	/**
	 * @return the lnum
	 */
	public int getLnum() {
		return lnum;
	}

	/**
	 * @param lnum the lnum to set
	 */
	public void setLnum(int lnum) {
		this.lnum = lnum;
	}

	/**
	 * @return the giftid
	 */
	public int getGiftid() {
		return giftid;
	}

	/**
	 * @param giftid the giftid to set
	 */
	public void setGiftid(int giftid) {
		this.giftid = giftid;
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
	 * @return the gname
	 */
	public String getGname() {
		return gname;
	}

	/**
	 * @param gname the gname to set
	 */
	public void setGname(String gname) {
		this.gname = gname;
	}

	/**
	 * @return the glevel
	 */
	public int getGlevel() {
		return glevel;
	}

	/**
	 * @param glevel the glevel to set
	 */
	public void setGlevel(int glevel) {
		this.glevel = glevel;
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
	 * @return the sxinfo
	 */
	public String getSxinfo() {
		return sxinfo;
	}

	/**
	 * @param sxinfo the sxinfo to set
	 */
	public void setSxinfo(String sxinfo) {
		this.sxinfo = sxinfo;
	}

	/**
	 * @return the sfsy
	 */
	public String getSfsy() {
		return sfsy;
	}

	/**
	 * @param sfsy the sfsy to set
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
		return "Gift [lnum=" + lnum + ", giftid=" + giftid + ", luid=" + luid + ", gname=" + gname + ", glevel="
				+ glevel + ", expstr=" + expstr + ", rare=" + rare + ", sxinfo=" + sxinfo + "]";
	}
	
	public String toString2() {
		return "[�츳����" + gname + ", �ȼ���" + glevel + ",ϡ�жȣ�" + rare + ", �츳��Ϣ��" + sxinfo + "]";
	}
	
	
	
}
