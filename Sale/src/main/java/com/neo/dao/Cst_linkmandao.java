package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Cst_linkman;

public interface Cst_linkmandao {

	public int addLinkman(@Param("cl")Cst_linkman cl);
	public List<Cst_linkman> findbycustid(@Param("id") String id);
	public Cst_linkman findbyid(@Param("id") int id);
	
	public int updatecl(@Param("cl") Cst_linkman cl);
	
	public int deletecl(@Param("id")int id);
}