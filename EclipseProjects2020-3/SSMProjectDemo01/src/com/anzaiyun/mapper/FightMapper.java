package com.anzaiyun.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.anzaiyun.bean.FightLog;

public interface FightMapper {
	
	public String FightNomoral(Map<String, Object> map) ; 
	
	/**
	 * 获取战斗日志
	 * @param uid
	 * @param rid
	 * @param fnumber
	 * @return
	 */
	public List<FightLog> getFightLog(@Param("uid") int uid,@Param("rid") int rid,@Param("fnumber")  int fnumber);

}
