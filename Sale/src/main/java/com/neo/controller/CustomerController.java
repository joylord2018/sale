package com.neo.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neo.bo.Bas_dict;
import com.neo.bo.Cst_customer;
import com.neo.bo.Cst_service;
import com.neo.bo.Sys_user;
import com.neo.service.Bas_dictservice;
import com.neo.service.Cst_customerservice;
import com.neo.util.RedisUtil;
import com.neo.vo.CstcusomerVO;

@Controller
@RequestMapping("/html/~cust/cust")
public class CustomerController {
	@Autowired
	private Cst_customerservice ccs;
	@Autowired
	private Bas_dictservice bds;
	private RedisUtil redisUtil =(RedisUtil) new ClassPathXmlApplicationContext("applicationContext.xml").getBean("redisUtil");
	public Bas_dictservice getBds() {
		return bds;
	}

	public void setBds(Bas_dictservice bds) {
		this.bds = bds;
	}

	
	public Cst_customerservice getCcs() {
		return ccs;
	}

	public void setCcs(Cst_customerservice ccs) {
		this.ccs = ccs;
	}

	@RequestMapping("findcustomer.html")
	public String findcustomer(CstcusomerVO ccvo,Model m){
		int maxcount=ccs.findcccount(ccvo);
		ccvo.setMaxcount(maxcount);
		List<Cst_customer> ccli=ccs.findccli(ccvo);
		m.addAttribute("ccli",ccli);
		m.addAttribute("ccvo",ccvo);
		//下拉菜单
		List<Bas_dict> licl=bds.findbytype("cust_leave");
		List<Bas_dict> licr=bds.findbytype("cust_region");
		m.addAttribute("licl",licl);
		m.addAttribute("licr",licr);
		return "html/~cust/cust/list";
	}
	@RequestMapping("findcustbyid.html")
	public String findcustbyid(String id,Model m){
		Cst_customer cc=ccs.findbyid(id);
		m.addAttribute("cc", cc);
		//下拉菜单
		List<Bas_dict> licl=bds.findbytype("cust_leave");
		List<Bas_dict> licr=bds.findbytype("cust_region");
		m.addAttribute("licl",licl);
		m.addAttribute("licr",licr);
		List<Object> li=redisUtil.getList("salers");
		List<Sys_user> salers=(List<Sys_user>) li.get(0);
		m.addAttribute("salers",salers);
		return "html/~cust/cust/edit";
	}
	//待完善客户
	@RequestMapping("findcustwait.html")
	public String findcustwait(Model m){
		List<Cst_customer> ccli=ccs.findccwait();
		m.addAttribute("ccli", ccli);
		return "html/~cust/cust/listwait";
	}
	
	@RequestMapping("updatecust.html")
	@ResponseBody
	public int updatecust(Cst_customer cc){
		int res=ccs.updateccs(cc);
		return res;
	}
	
	@RequestMapping("buquan.html")
	@ResponseBody
	public List<Cst_customer> buquan(String name){
		System.out.println(name);
		List<Cst_customer> li=null;
		if(name!=null && !name.equals("")){
			li=ccs.buquan(name);
		}
		
		return li;
	}
}
