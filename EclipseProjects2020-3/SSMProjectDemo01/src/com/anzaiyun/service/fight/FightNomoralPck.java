package com.anzaiyun.service.fight;

import java.util.List;

import org.apache.tools.ant.taskdefs.Get;

import com.anzaiyun.bean.FightLog;

public interface FightNomoralPck {
	
	/**
	 * 普通战斗，一对一，需要指定角色
	 * @param uid
	 * @param rid
	 * @param fnumber
	 * @param rare
	 * @return
	 */
	public Boolean FightNomoral(int uid, int rid,  int fnumber,String rare);
	
	/**
	 * 获取战斗日志
	 * @param uid
	 * @param rid
	 * @param fnumber
	 * @return
	 */
	public List<FightLog> getFightLog(int uid, int rid,  int fnumber);
}
