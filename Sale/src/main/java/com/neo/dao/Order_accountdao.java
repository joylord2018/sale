package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Order_account;

public interface Order_accountdao {
	public List<Order_account> findfromorder(@Param("year") int year);
	public int addAccount(@Param("acc") Order_account acc);
	public List<Order_account> findbyvo(@Param("cname")String cname,@Param("year")Integer year);
}
