package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Orders_line;

public interface Ord_lineservice {
	public List<Orders_line> findbyoid(int oid);
}
