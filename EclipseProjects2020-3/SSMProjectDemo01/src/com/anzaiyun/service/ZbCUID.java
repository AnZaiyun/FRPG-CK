package com.anzaiyun.service;

import java.util.List;

import com.anzaiyun.bean.ZB;

public interface ZbCUID {
	
    public ZB FindZbByZBid(int zbid);
	
	public void DelZbByRid(int zbid);
	
	public List<ZB> CKZb(int uid, int count);
	

}
