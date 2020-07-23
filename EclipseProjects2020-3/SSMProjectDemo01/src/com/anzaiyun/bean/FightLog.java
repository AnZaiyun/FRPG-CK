package com.anzaiyun.bean;

public class FightLog {
	
	int luid;
	int rid;
	String roleinfo;
	int l_result;
	String logmsg;
	String proinfo;

	public FightLog() {
		super();
	}

	public FightLog(int luid, int rid, String roleinfo, int l_result, String logmsg) {
		super();
		this.luid = luid;
		this.rid = rid;
		this.roleinfo = roleinfo;
		this.l_result = l_result;
		this.logmsg = logmsg;
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
	 * @return the roleinfo
	 */
	public String getRoleinfo() {
		return roleinfo;
	}

	/**
	 * @param roleinfo the roleinfo to set
	 */
	public void setRoleinfo(String roleinfo) {
		this.roleinfo = roleinfo;
	}

	/**
	 * @return the l_result
	 */
	public int getL_result() {
		return l_result;
	}

	/**
	 * @param l_result the l_result to set
	 */
	public void setL_result(int l_result) {
		this.l_result = l_result;
	}

	/**
	 * @return the logmsg
	 */
	public String getLogmsg() {
		return logmsg;
	}

	/**
	 * @param logmsg the logmsg to set
	 */
	public void setLogmsg(String logmsg) {
		this.logmsg = logmsg;
	}
	
	/**
	 * @return the proinfo
	 */
	public String getProinfo() {
		return proinfo;
	}

	/**
	 * @param proinfo the proinfo to set
	 */
	public void setProinfo(String proinfo) {
		this.proinfo = proinfo;
	}

	@Override
	public String toString() {
		return " [" + "角色：" + roleinfo + "  , 结果：" + proinfo
				+ "  , 战斗信息：" + logmsg + "]";
	}
	
	
	
	

}
