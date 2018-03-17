package com.neo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neo.bo.Cst_linkman;
import com.neo.service.Cst_linkmanservice;

@Controller
@RequestMapping("/html/~cust/cust")
public class LinkmanContorller {
	@Autowired
	private Cst_linkmanservice cls;

	public Cst_linkmanservice getCls() {
		return cls;
	}

	public void setCls(Cst_linkmanservice cls) {
		this.cls = cls;
	}
	
	@RequestMapping("findclbycust.html")
	public String findclbycust(String cid,Model m){
		List<Cst_linkman> licl=cls.findbycustid(cid);
		m.addAttribute("licl",licl);
		return "html/~cust/cust/linkman";
	}
	@RequestMapping("findclbyid.html")
	public String findclbyid(int id,Model m){
		Cst_linkman cl=cls.findbyid(id);
		m.addAttribute("cl",cl);
		return "html/~cust/cust/linkman_edit";
	}
	
	@RequestMapping("updatecl.html")
	@ResponseBody
	public int updatecl(Cst_linkman cl,Model m){
		int res=cls.updatecl(cl);
		return res;
	}
	
	@RequestMapping("addcl.html")
	@ResponseBody
	public int addcl(Cst_linkman cl,Model m){
		int res=cls.addLinkman(cl);
		return res;
	}
	
	@RequestMapping("delcl.html")
	@ResponseBody
	public int delcl(int id){
		int res=cls.deletecl(id);
		return res;
	}
}
