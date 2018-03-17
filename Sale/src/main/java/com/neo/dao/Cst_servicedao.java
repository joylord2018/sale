package com.neo.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Cst_service;
import com.neo.vo.CstServiceVO;
import com.neo.vo.CstcusomerVO;

public interface Cst_servicedao {
  
	public int addcs(@Param("cs") Cst_service cs);
	public List<Cst_service> findcsli(@Param("csvo") CstServiceVO csvo);
	public int findcccount(@Param("csvo") CstServiceVO csvo);
	public int updateCS(@Param("cs") Cst_service cs);
	
	public Cst_service findcsbyid(@Param("id") int id,@Param("type") int type);
	
	public List<Cst_service> goucheng(@Param("year")Integer year);
}