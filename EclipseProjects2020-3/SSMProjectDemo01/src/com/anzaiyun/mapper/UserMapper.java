package com.anzaiyun.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.anzaiyun.bean.User;
import com.anzaiyun.bean.UserBag;

public interface UserMapper {
	
	public void addUser(User user);
	
	public User findUser (User user);
	
	public List<UserBag> getUserBagsByItemid(@Param("luid") Integer luid, @Param("itemid") String itemid);

}
