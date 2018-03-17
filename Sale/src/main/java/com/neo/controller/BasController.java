package com.neo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neo.bo.Bas_dict;
import com.neo.bo.Ord_Product;
import com.neo.bo.Ord_Storage;
import com.neo.service.Bas_dictservice;
import com.neo.service.Ord_ProductService;
import com.neo.service.Ord_StorageService;
import com.neo.vo.DicVO;
import com.neo.vo.Provo;
import com.neo.vo.StorageVO;
@RequestMapping("/html/~basd")
@Controller
public class BasController {
	@Autowired
	private Bas_dictservice bds;
	@Autowired
	private Ord_ProductService ops;
	@Autowired
	private Ord_StorageService oss;
	@RequestMapping("findall.html")
	public String findall(DicVO dvo,Model m){
		List<Bas_dict> li=bds.findall(dvo);
		int res=bds.findallcounts(dvo);
		dvo.setMaxcount(res);
		m.addAttribute("li", li);
		m.addAttribute("dvo", dvo);
		return "html/~basd/dict";
	}
	@RequestMapping("findpro.html")
	public String  findpro(Provo prvo,Model m){
		int res=ops.findprocount(prvo);
		prvo.setMaxcount(res);
		List<Ord_Product> li=ops.findallpro(prvo);
		m.addAttribute("li", li);
		m.addAttribute("prvo", prvo);
		return "html/~basd/product";
	}
	
	@RequestMapping("findsto.html")
	public String  findsto(StorageVO svo,Model m){
		int res=oss.findcount(svo);
		svo.setMaxcount(res);
		List<Ord_Storage> li=oss.findallsto(svo);
		m.addAttribute("li", li);
		m.addAttribute("svo", svo);
		return "html/~basd/storage";
	}
	@RequestMapping("addBic.html")
	public String  addBic(Model m){

		return "html/~basd/storage";
	}
	@RequestMapping("dicbuquan.html")
	@ResponseBody
	public List<Bas_dict> buquan(String cname){
		List<Bas_dict> li=bds.buquan(cname);
		return li;
	}
}
