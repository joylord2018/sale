package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.neo.bo.Sal_plan;

public interface Sal_planservice {
	public List<Sal_plan> findspbyid(int scid);
	public int  addsp(Sal_plan sp);
	public int delsp(int id);
	public int updatespres(String res,int id);
}
