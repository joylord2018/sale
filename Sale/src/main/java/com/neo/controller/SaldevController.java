package com.neo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neo.bo.Sal_chance;
import com.neo.bo.Sal_plan;
import com.neo.bo.Sys_user;
import com.neo.service.SalChanceservice;
import com.neo.service.Sal_planservice;
import com.neo.util.RedisUtil;
import com.neo.vo.SalchanceVO;
@Controller
@RequestMapping("/html/~sale")
public class SaldevController {
	@Autowired
	private SalChanceservice scs;
	@Autowired
	private Sal_planservice sps;
	@Autowired
	private RedisUtil redisUtil =(RedisUtil) new ClassPathXmlApplicationContext("applicationContext.xml").getBean("redisUtil");
	public Sal_planservice getSps() {
		return sps;
	}

	public void setSps(Sal_planservice sps) {
		this.sps = sps;
	}

	public SalChanceservice getScs() {
		return scs;
	}

	public void setScs(SalChanceservice scs) {
		this.scs = scs;
	}
		//分页显示发展客户
		@RequestMapping("saldev.html")
		public String findSalchance(SalchanceVO scvo,Model m){
			int maxcount=scs.finddevcount(scvo);
			scvo.setMaxcount(maxcount);
			List<Sal_chance> li=scs.finddev(scvo);
			m.addAttribute("li",li);
			m.addAttribute("scvo",scvo);
			return "html/~sale/dev";
		}
		//按salchance的id查询
		@RequestMapping("finddevbyid.html")
		public String findbyid(int id,Model m,int type){
			Sal_chance sc=scs.findscbyid(id,2);
			List<Sal_plan> spli=sps.findspbyid(id);
			m.addAttribute("spli",spli);
			m.addAttribute("sc",sc);
			List<Object> li=redisUtil.getList("salers");
			List<Sys_user> salers=(List<Sys_user>) li.get(0);
			m.addAttribute("salers",salers);
			if(type==1){
				return "html/~sale/dev_plan";
			}else if(type==2){
				return "html/~sale/dev_execute";
			}else{
				return "html/~sale/dev_detail";
			}
				
		}
}
