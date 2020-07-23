package com.anzaiyun.bean;

public class User {
	
	private int lid;
	private String uname;
	private String upassword;
	
	public User() {
		super();
	}

	public User(String uname, String upassword) {
		super();
		this.uname = uname;
		this.upassword = upassword;
	}
	
	public User(int lid,String uname, String upassword) {
		super();
		this.lid = lid;
		this.uname = uname;
		this.upassword = upassword;
	}

	/**
	 * @return the lid
	 */
	public int getLid() {
		return lid;
	}

	/**
	 * @param lid the lid to set
	 */
	public void setLid(int lid) {
		this.lid = lid;
	}

	/**
	 * @return the uname
	 */
	public String getUname() {
		return uname;
	}

	/**
	 * @param uname the uname to set
	 */
	public void setUname(String uname) {
		this.uname = uname;
	}

	/**
	 * @return the upassword
	 */
	public String getUpassword() {
		return upassword;
	}

	/**
	 * @param upassword the upassword to set
	 */
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	@Override
	public String toString() {
		return "User [lid=" + lid + ", uname=" + uname + ", upassword=" + upassword + "]";
	}
	
	
	

}
