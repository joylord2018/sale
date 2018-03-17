package com.neo.util;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.neo.bo.Cst_customer;
import com.neo.bo.Cst_lost;
import com.neo.bo.Cst_service;
import com.neo.bo.Sal_chance;
import com.neo.service.Cst_customerservice;
import com.neo.service.Cst_lostservice;
import com.neo.service.Cst_serservice;
import com.neo.service.SalChanceservice;
import com.neo.vo.CstLostVO;
import com.neo.vo.CstServiceVO;
import com.neo.vo.CstcusomerVO;
import com.neo.vo.SalchanceVO;

public class test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		Cst_customerservice ccs=(Cst_customerservice)ctx.getBean("ccSer");
		List<Cst_customer> li=ccs.gouChen("cust_credit");
		System.out.println(li.size());
	}

}
