package com.neo.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neo.bo.Cst_service;
import com.neo.service.Cst_serservice;
import com.neo.util.RedisUtil;
import com.neo.vo.CstServiceVO;
@Controller
@RequestMapping("/html/~cust/service")
public class CstserviceController {
	@Autowired
	private Cst_serservice css;
	
	
	public Cst_serservice getCss() {
		return css;
	}


	public void setCss(Cst_serservice css) {
		this.css = css;
	}
	private RedisUtil redisUtil =(RedisUtil) new ClassPathXmlApplicationContext("applicationContext.xml").getBean("redisUtil");
	
	
	@RequestMapping("findoption.html")
	@ResponseBody
	public Map<String,Object> findoption(){
		Map<String, Object> map=new HashMap<String, Object>();
		List<Object> lisalers=redisUtil.getList("salers");
		List<Object> svr_typeli=redisUtil.getList("svr_type");
		map.put("salers", lisalers.get(0));
		map.put("svr_type", svr_typeli.get(0));
		return map;	
	}
	
	@RequestMapping("addcs.html")
	@ResponseBody
	public int addcs(Cst_service cs){
		cs.setSvrCreateDate(new Date(System.currentTimeMillis()));
		int res=css.addcs(cs);
		return res;
	}
	
	@RequestMapping("findcsli.html")
	public String findcsli(CstServiceVO csvo,Model m){
		if(csvo.getSdate()!=null && !csvo.getSdate().equals("")){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			Date startdate = null;
			try {
				startdate = sdf.parse(csvo.getSdate());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			csvo.setStartdate(startdate);
		}
		if(csvo.getEdate()!=null && !csvo.getEdate().equals("")){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			Date enddate = null;
			try {
				enddate = sdf.parse(csvo.getEdate());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			csvo.setStartdate(enddate);
		}
		csvo.setMaxcount(css.findcccount(csvo));
		List<Cst_service> csli=css.findcsli(csvo);
		List<Object> svr_typeli=redisUtil.getList("svr_type");
		List<Object> lisalers=redisUtil.getList("salers");
		m.addAttribute("csli", csli);
		m.addAttribute("csvo", csvo);
		m.addAttribute("salers",lisalers.get(0));
		m.addAttribute("svr_type",svr_typeli.get(0));
		String url=null;
		if(csvo.getStatus().equals("1")){
			url="html/~cust/service/dispatch";
		}
		if(csvo.getStatus().equals("2")){
			url="html/~cust/service/deal";
		}
		if(csvo.getStatus().equals("3")){
			url="html/~cust/service/feedback";
		}
		if(csvo.getStatus().equals("4")){
			url="html/~cust/service/arch";
		}
		return url;
	}
	
	@RequestMapping("dueidadd.html")
	public String dueidadd(Cst_service cs,int urltype){
		String url=null;
		if(urltype==1){
			cs.setSvrStatus("2");
			cs.setSvrDueDate(new Date(System.currentTimeMillis()));
			url="redirect:findcsli.html?status=1";
		}
		if(urltype==2){
			cs.setSvrStatus("3");
			cs.setSvrDealDate(new Date());
			url="redirect:findcsli.html?status=3";
		}
		if(urltype==3){
			cs.setSvrStatus("4");
			url="redirect:findcsli.html?status=4";
		}
		int res=css.updateCS(cs);
		
		return url;
	}
	
	@RequestMapping("findcsbyid.html")
	public String findcsbyid(int id,Model m,Integer typeno){
		Cst_service cs=css.findcsbyid(id,typeno);
		m.addAttribute("cs",cs);
		if(typeno==3){
			return "html/~cust/service/feedback_detail";
		}
		if(typeno==4){
			return "html/~cust/service/detail";
		}
		return "html/~cust/service/deal_detail";
	}

}
