package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.junit.runners.Parameterized.Parameters;

import com.neo.bo.Sal_chance;
import com.neo.vo.SalchanceVO;

public interface Sal_chancedao {

	public int addSal_chance(@Param("sc")Sal_chance sc);
	public List<Sal_chance> findSalchance(@Param("scvo")SalchanceVO scvo);
	public int findSalcount(@Param("scvo")SalchanceVO scvo);
	public Sal_chance findscbyid(@Param("id")int id,@Param("dueid")Integer dueid);
	
	public int updatesalbyid(@Param("sc")Sal_chance sc);
	public int updatescbyid(@Param("sc")Sal_chance sc);
	
	public int deletesal(@Param("id") int id);
	//dev
	public List<Sal_chance> finddev(@Param("scvo")SalchanceVO scvo);
	public int finddevcount(@Param("scvo")SalchanceVO scvo);
	public int updatescst(@Param("id")int id,@Param("res")String res);
}