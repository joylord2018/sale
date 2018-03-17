package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Orders_line;

public interface Orders_linedao {
  
	public List<Orders_line> findbyoid(@Param("oid")int oid);
}