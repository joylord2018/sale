package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Ord_id;

public interface Ord_iddao {
	public Ord_id findbyid(@Param("id") int id);
	public List<Ord_id> findords(@Param("pagesize")int pagesize,@Param("index")int index,@Param("cid") String cid);
	public int countord(@Param("cid")String cid);
	public Ord_id findlastord(@Param("cid")String cid);
	
}