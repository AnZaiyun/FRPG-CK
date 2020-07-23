package com.anzaiyun.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.anzaiyun.bean.ZB;

public interface ZBMapper {
	
	public List<ZB> getZbByUid(@Param("Uid") int Uid);
	
	public List<ZB> getZbByUidWithoutUse(@Param("Uid") int Uid,@Param("rid") int rid);
	
	public ZB FindZbByZBid(int zbid);
	
	public String CKZb(Map<String, Object> map);
	
	//返回指定数量的zb信息，按zbid降序排列
	public List<ZB> getZbByUid2(@Param("Uid") int Uid,@Param("rnumber") int rnumber);

}
