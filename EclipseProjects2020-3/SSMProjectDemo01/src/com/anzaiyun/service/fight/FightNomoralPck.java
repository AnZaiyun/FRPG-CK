package com.anzaiyun.service.fight;

import java.util.List;

import org.apache.tools.ant.taskdefs.Get;

import com.anzaiyun.bean.FightLog;

public interface FightNomoralPck {
	
	/**
	 * ��ͨս����һ��һ����Ҫָ����ɫ
	 * @param uid
	 * @param rid
	 * @param fnumber
	 * @param rare
	 * @return
	 */
	public Boolean FightNomoral(int uid, int rid,  int fnumber,String rare);
	
	/**
	 * ��ȡս����־
	 * @param uid
	 * @param rid
	 * @param fnumber
	 * @return
	 */
	public List<FightLog> getFightLog(int uid, int rid,  int fnumber);
}
