package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Cst_lost;
import com.neo.vo.CstLostVO;

public interface Cst_lostdao {

	public int addCl(@Param("cl")Cst_lost cl);
	public List<Cst_lost> findCL(@Param("clvo")CstLostVO clvo);
	public int findCLcount(@Param("clvo")CstLostVO clvo);
	
	public Cst_lost findclbyid(@Param("id") int id);
	public int updatecl(@Param("cl")Cst_lost cl);
	
}