package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Order_account;

public interface Ord_AcountUtilService {
	public void addCountForCust();
	public List<Order_account> findbyvo(String cname,Integer year);
}
