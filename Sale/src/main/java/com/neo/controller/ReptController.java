package com.neo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neo.bo.Cst_customer;
import com.neo.bo.Cst_lost;
import com.neo.bo.Cst_service;
import com.neo.bo.Ord_Product;
import com.neo.bo.Order_account;
import com.neo.service.Cst_customerservice;
import com.neo.service.Cst_lostservice;
import com.neo.service.Cst_serservice;
import com.neo.service.Ord_AcountUtilService;
import com.neo.service.Ord_ProductService;
import com.neo.vo.CstLostVO;
import com.neo.vo.Provo;

@Controller
@RequestMapping("/html/~rept")
public class ReptController {
	
	@Autowired
	private Ord_AcountUtilService oas ;
	@Autowired
	private Cst_customerservice ccs;
	@Autowired
	private Cst_serservice css;
	@Autowired
	private Cst_lostservice cls;
	
	@RequestMapping("findyearcost.html")
	public String findYearCost(String cname,Integer year,Model model){
		List<Order_account> li=oas.findbyvo(cname, year);
		System.out.println(li);
		model.addAttribute("li", li);
		model.addAttribute("cname",cname);
		model.addAttribute("year",year);
		return "html/~rept/contr";
	}
	
	@RequestMapping("findgouchen.html")
	public String findgouchen(String type,Model model){
		if(type==null){
			type="cust_leave";
		}
		List<Cst_customer> li=ccs.gouChen(type);
		model.addAttribute("li", li);
		return "html/~rept/cons";
	}
	
	@RequestMapping("findserresult.html")
	public String findserresult(Integer year,Model model){
		List<Cst_service> li=css.goucheng(year);
		model.addAttribute("li", li);
		return "html/~rept/ser";
	}
	
	@RequestMapping("fenxicl.html")
	public String  fenxi(CstLostVO clvo,Model m){
		int res=cls.findCLcount(clvo);
		clvo.setMaxcount(res);
		List<Cst_lost> li=cls.findCL(clvo);
		m.addAttribute("li", li);
		m.addAttribute("clvo", clvo);
		return "html/~rept/lost";
	}
	
}
