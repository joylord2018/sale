package com.neo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neo.bo.Cst_activity;
import com.neo.bo.Cst_customer;
import com.neo.service.Cst_activityservice;
import com.neo.service.Cst_customerservice;

@Controller
@RequestMapping("/html/~cust/cust")
public class CstActivityController {
	@Autowired
	private Cst_activityservice cas;
	@Autowired
	private Cst_customerservice ccs;
	
	public Cst_customerservice getCcs() {
		return ccs;
	}

	public void setCcs(Cst_customerservice ccs) {
		this.ccs = ccs;
	}

	public Cst_activityservice getCas() {
		return cas;
	}

	public void setCas(Cst_activityservice cas) {
		this.cas = cas;
	}

	@RequestMapping("findact.html")
	public String findact(String cid,Model m){
		Cst_customer cc=ccs.findbyid(cid);
		List<Cst_activity> lica=cas.findbycid(cid);
		m.addAttribute("lica", lica);
		m.addAttribute("cc", cc);
		return "html/~cust/cust/activities";
	}
	
	@RequestMapping("addact.html")
	@ResponseBody
	public int addact(Cst_activity ca,Model m){
		int res=cas.addca(ca);
		return res;
	}
	
	@RequestMapping("findcabyid.html")
	public String findcabyid(int cid,Model m){
		Cst_activity ca=cas.findcabyid(cid);
		m.addAttribute("ca", ca);
		return "html/~cust/cust/activities_edit";
	}
	
	@RequestMapping("updatecat.html")
	@ResponseBody
	public int updatecat(Cst_activity ca,Model m){
		int res=cas.updateca(ca);
		return res;
	}
}
