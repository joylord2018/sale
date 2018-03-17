package com.neo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neo.bo.Ord_id;
import com.neo.bo.Orders_line;
import com.neo.service.Ord_idservice;
import com.neo.service.Ord_lineservice;

@Controller
@RequestMapping("/html/~cust/cust")
public class OrdController {

	@Autowired
	private Ord_idservice ois;
	@Autowired
	private Ord_lineservice ols;
	public Ord_idservice getOis() {
		return ois;
	}

	public void setOis(Ord_idservice ois) {
		this.ois = ois;
	}
	
	public Ord_lineservice getOls() {
		return ols;
	}

	public void setOls(Ord_lineservice ols) {
		this.ols = ols;
	}

	@RequestMapping("findords.html")
	public String findords(Integer pagesize,Integer pageno,String cid,Model m){
		
		if(pagesize==null){
			pagesize=3;
		}
		if(pageno==null){
			pageno=1;
		}
		List<Ord_id> lio=ois.findords(pagesize, pageno, cid);
		int count=ois.countord(cid);
		m.addAttribute("lio",lio);
		m.addAttribute("pageno",pageno);
		m.addAttribute("pagesize",pagesize);
		m.addAttribute("count",count);
		m.addAttribute("maxpage",count%pagesize==0?count/pagesize:(count/pagesize)+1);
		return "html/~cust/cust/orders";
	}
	@RequestMapping("findordbyid.html")
	public String findordbyid(Integer id,Model m){
		Ord_id ord=ois.findbyid(id);
		m.addAttribute("ord",ord);
		List<Orders_line> liol=ols.findbyoid(id);
		m.addAttribute("liol", liol);
		return "html/~cust/cust/orders_detail";
	}
}
