package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Cst_service;
import com.neo.vo.CstServiceVO;
import com.neo.vo.CstcusomerVO;

public interface Cst_serservice {

	public int addcs(Cst_service cs);
	public List<Cst_service> findcsli(CstServiceVO csvo);
	public int findcccount(CstServiceVO csvo);
	public int updateCS(Cst_service cs);
	public Cst_service findcsbyid(int id,int type);
	
	public List<Cst_service> goucheng(Integer year);
}
