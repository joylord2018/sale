package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Cst_linkman;

public interface Cst_linkmanservice {
	public int addLinkman(Cst_linkman cl);
	public List<Cst_linkman> findbycustid(String id);
	public Cst_linkman findbyid(int id);
	public int updatecl(Cst_linkman cl);
	public int deletecl(int id);
}
