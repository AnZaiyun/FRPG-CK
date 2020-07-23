package com.anzaiyun.service;

import com.anzaiyun.bean.User;

public interface UserLogin {
	
	public boolean register(User user);
	
	public User login(String name,String pwd);

}
