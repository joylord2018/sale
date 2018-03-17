package com.neo.service.impl;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Order_account;
import com.neo.dao.Order_accountdao;
import com.neo.service.Ord_AcountUtilService;
@Service
public class Ord_AcountUtilImpl implements Ord_AcountUtilService{
	@Autowired
	private Order_accountdao odao;
	
	public void addCountForCust(){
		System.out.println("执行定时任务");
		Calendar c=Calendar.getInstance();
		int year=c.get(Calendar.YEAR);
		List<Order_account> list=odao.findfromorder(year);
		for (Order_account order_account : list) {
			odao.addAccount(order_account);
		}
	}

	@Override
	public List<Order_account> findbyvo(String cname, Integer year) {
		
		return odao.findbyvo(cname, year);
	}
}
