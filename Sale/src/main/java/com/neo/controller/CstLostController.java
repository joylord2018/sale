package com.neo.controller;
import java.lang.ProcessBuilder.Redirect;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neo.bo.Cst_customer;
import com.neo.bo.Cst_lost;
import com.neo.bo.Ord_id;
import com.neo.bo.Sal_chance;
import com.neo.service.Cst_customerservice;
import com.neo.service.Cst_lostservice;
import com.neo.service.Ord_idservice;
import com.neo.vo.CstLostVO;
import com.neo.vo.SalchanceVO;

@Controller
@RequestMapping("/html/~cust/lost")
public class CstLostController {
	@Autowired
	private Ord_idservice ois;
	@Autowired
	private Cst_lostservice cls;
	

	public Cst_lostservice getCls() {
		return cls;
	}


	public void setCls(Cst_lostservice cls) {
		this.cls = cls;
	}


	public Ord_idservice getOis() {
		return ois;
	}


	public void setOis(Ord_idservice ois) {
		this.ois = ois;
	}


	@RequestMapping("movelostcc.html")
	@ResponseBody
	public int movelostcc(String id,int mid){
		Cst_lost cl=new Cst_lost();
		cl.setLstCustNo(id);
		cl.setLstCustManagerId(mid);
		Ord_id od=ois.findlastord(id);
		cl.setLstLastOrderDate(od.getOdrDate());
		cl.setLstStatus("1");
		int res=cls.addCl(cl);
		return res;
	}
	
	@RequestMapping("findcstlost.html")
	public String findcstlost(CstLostVO clvo,Model m){
		int res=cls.findCLcount(clvo);
		clvo.setMaxcount(res);
		List<Cst_lost> clli=cls.findCL(clvo);
		m.addAttribute("clli", clli);
		m.addAttribute("clvo",clvo);
		return "html/~cust/lost/list";
	}
	
	@RequestMapping("findcstlostbyid.html")
	public String findcstlostbyid(int id,int type,Model m){
		Cst_lost cl=cls.findclbyid(id);
		m.addAttribute("cl", cl);
		if(type==1){
			return "html/~cust/lost/confirm";
		}else{
			return "html/~cust/lost/relay";
		}
	}
	
	@RequestMapping("updatecl.html")
	@ResponseBody
	public int  updatecl(Cst_lost cl,Model m){
		if(cl.getLstStatus().equals("3")){
			cl.setLstLostDate(new Date());
		}
		int res=cls.updatecl(cl);
		return res;
	}


}