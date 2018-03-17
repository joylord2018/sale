package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Cst_activity;

public interface Cst_activitydao {
   
	public List<Cst_activity> findbycid(@Param("cid") String cid);
	public int addca(@Param("ca") Cst_activity ca);
	public Cst_activity findcabyid(@Param("id")int id);
	public int updateca(@Param("ca") Cst_activity ca);
}