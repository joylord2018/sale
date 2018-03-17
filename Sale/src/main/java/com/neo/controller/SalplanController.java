package com.neo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neo.bo.Sal_plan;
import com.neo.service.Sal_planservice;

@Controller
@RequestMapping("/html/~sale")
public class SalplanController {
	@Autowired
	private Sal_planservice sps;

	public Sal_planservice getSps() {
		return sps;
	}

	public void setSps(Sal_planservice sps) {
		this.sps = sps;
	}
	
	@RequestMapping("addsp.html")
	@ResponseBody
	public Map<String,Object> addsalplan(Sal_plan sp,Model m){
		Map<String,Object> map=new HashMap<String, Object>();
		int res=sps.addsp(sp);
		map.put("res",res);
		if(res>=0){
			List<Sal_plan> lisp=sps.findspbyid(sp.getPlaChcId());
			map.put("lisp",lisp);
		}
		return map;
	}
	@RequestMapping("delsp.html")
	@ResponseBody
	public int delsalplan(int id,Model m){
		
		return sps.delsp(id);
	}
	@RequestMapping("updateres.html")
	@ResponseBody
	public int updateres(int id,Model m,String res){
		
		return sps.updatespres(res, id);
	}
}
