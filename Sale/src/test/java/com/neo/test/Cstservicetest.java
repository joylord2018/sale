package com.neo.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.neo.bo.Order_account;
import com.neo.service.Ord_AcountUtilService;

public class Cstservicetest {

	@Test
	public void test() {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		Ord_AcountUtilService oas=(Ord_AcountUtilService)ctx.getBean("ord_AcountUtilImpl");
		List<Order_account> li=oas.findbyvo("汪",2018);
		for (Order_account order_account : li) {
			System.out.println(order_account.getCname()+","+order_account.getCount());
		}
	}

}
