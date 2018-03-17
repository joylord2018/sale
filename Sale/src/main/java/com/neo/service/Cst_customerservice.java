package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Cst_customer;
import com.neo.vo.CstcusomerVO;

public interface Cst_customerservice {
	public int addCst_cust(Cst_customer cc);
	public List<Cst_customer> findccli(CstcusomerVO ccvo);
	public int findcccount(CstcusomerVO ccvo);
	public Cst_customer findbyid(String id);
	public String  findcno();
	public List<Cst_customer> findccwait();
	public int updateccs(Cst_customer cc);
	
	public List<Cst_customer> buquan(String name);
	public List<Cst_customer> gouChen(String type);
}
