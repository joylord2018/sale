package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Cst_activity;

public interface Cst_activityservice {
	public List<Cst_activity> findbycid(String cid);
	public int addca(Cst_activity ca);
	public Cst_activity findcabyid(int id);
	public int updateca(Cst_activity ca);
}
