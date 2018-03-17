package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Cst_customer;
import com.neo.vo.CstcusomerVO;

public interface Cst_customerdao {

	public int addCst_cust(@Param("cc")Cst_customer cc);
	
	public List<Cst_customer> findccli(@Param("ccvo")CstcusomerVO ccvo);
	public int findcccount(@Param("ccvo")CstcusomerVO ccvo);
	public Cst_customer findbyid(@Param("id")String id);
	public String  findcno();
	public List<Cst_customer> findccwait();
	
	public int updateccs(@Param("cc") Cst_customer cc);
	
	public List<Cst_customer> buquan(@Param("name") String name);
	
	public List<Cst_customer> gouChen(@Param("type") String type);
	
}