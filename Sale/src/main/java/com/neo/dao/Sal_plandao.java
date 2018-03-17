package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Sal_plan;

public interface Sal_plandao {
 
	public List<Sal_plan> findspbyid(@Param("scid")int scid);
	public int  addsp(@Param("sp") Sal_plan sp);
	public int delsp(@Param("id") int id);
	public int updatespres(@Param("res")String res,@Param("id")int id);
}