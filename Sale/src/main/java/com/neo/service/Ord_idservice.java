package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Ord_id;

public interface Ord_idservice {

	public Ord_id findbyid(int id);
	public List<Ord_id> findords(int pagesize,int pageno,String cid);
	public int countord(String cid);
	
	public Ord_id findlastord(String cid);
	
}
