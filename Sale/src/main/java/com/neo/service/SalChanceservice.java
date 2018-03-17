package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Sal_chance;
import com.neo.vo.SalchanceVO;

public interface SalChanceservice {

	public int addSalchance(Sal_chance sc);
	public List<Sal_chance> findSalchance(SalchanceVO scvo);
	public int findSalcount(SalchanceVO scvo);
	public Sal_chance findscbyid(int id,Integer dueid);
	public int updatesalbyid(Sal_chance sc);
	public int updatescbyid(Sal_chance sc);
	public int deletesal(int id);
	//dev
	public List<Sal_chance> finddev(SalchanceVO scvo);
	public int finddevcount(SalchanceVO scvo);
	public int updatescst(@Param("id")int id,@Param("res")String res);
}
