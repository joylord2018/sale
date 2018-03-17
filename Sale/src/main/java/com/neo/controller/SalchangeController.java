package com.neo.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neo.bo.Cst_customer;
import com.neo.bo.Cst_linkman;
import com.neo.bo.Sal_chance;
import com.neo.bo.Sys_user;
import com.neo.service.Cst_customerservice;
import com.neo.service.Cst_linkmanservice;
import com.neo.service.SalChanceservice;
import com.neo.util.NoUtil;
import com.neo.util.RedisUtil;
import com.neo.vo.SalchanceVO;

@Controller
@RequestMapping("/html/~sale")
public class SalchangeController {
	@Autowired
	private SalChanceservice scs;
	@Autowired
	private Cst_customerservice ccs;
	@Autowired
	private Cst_linkmanservice cls;
	private RedisUtil redisUtil =(RedisUtil) new ClassPathXmlApplicationContext("applicationContext.xml").getBean("redisUtil");
	
	public Cst_linkmanservice getCls() {
		return cls;
	}

	public void setCls(Cst_linkmanservice cls) {
		this.cls = cls;
	}

	public SalChanceservice getScs() {
		return scs;
	}

	public void setScs(SalChanceservice scs) {
		this.scs = scs;
	}
	
	public Cst_customerservice getCcs() {
		return ccs;
	}

	public void setCcs(Cst_customerservice ccs) {
		this.ccs = ccs;
	}

	//添加销售机会
	@RequestMapping("addsalchance.html")
	@ResponseBody
	public int add(Sal_chance sc){
		sc.setChcCreateDate(new Date(System.currentTimeMillis()));
		int res=scs.addSalchance(sc);
		return res;
	}
	//分页显示销售机会
	@RequestMapping("findsalchance.html")
	public String findSalchance(SalchanceVO scvo,Model m){
		int maxcount=scs.findSalcount(scvo);
		scvo.setMaxcount(maxcount);
		List<Sal_chance> li=scs.findSalchance(scvo);
		m.addAttribute("li",li);
		m.addAttribute("scvo",scvo);
		return "html/~sale/list";
	}
	//按salchance的id查询
	@RequestMapping("findbyid.html")
	public String findbyid(int id,Model m,int type,Integer dueid){
		Sal_chance sc=scs.findscbyid(id,dueid);
		m.addAttribute("sc",sc);
		List<Object> li=redisUtil.getList("salers");
		List<Sys_user> salers=(List<Sys_user>) li.get(0);
		m.addAttribute("salers",salers);
		if(type==1){
			return "html/~sale/dispatch";
		}else{
			return "html/~sale/edit";
		}
	}
	//指定销售经理
	@RequestMapping("addSaler.html")
	public String addSaler(int scid,int scno,Model m){
		
		Sal_chance sc=new Sal_chance();
		sc.setChcId(scno);
		sc.setChcDueId(scid);
		sc.setChcDueDate(new Date(System.currentTimeMillis()));
		sc.setChcStatus("2");
		int res=scs.updatesalbyid(sc);
		if(res<=0){
			return "redirect:/error.jsp";
		}
		return "redirect:findsalchance.html";
	}
	@RequestMapping("updatesc.html")
	@ResponseBody
	public int updatesc(Sal_chance sc){
		if(sc.getChcDueId()!=null){
			sc.setChcDueDate(new Date(System.currentTimeMillis()));
		}
		int res=scs.updatescbyid(sc);
		return res;	
	}
	//删除计划
	@RequestMapping("delsc.html")
	@ResponseBody
	public int deletesc(int id){
		int res=scs.deletesal(id);
		return res;
	}
	
	//删除计划
		@RequestMapping("upscst.html")
		@ResponseBody
		public int upscst(int id,String res){
			int reult=scs.updatescst(id, res);
			//开发成功
			if(res.equals("3")){
				//添加客户表
				Sal_chance sc=scs.findscbyid(id, null);
				Cst_customer ccer=new Cst_customer();
				NoUtil.getNoUt().setNo(NoUtil.getNoUt().getNo()+1);
				//设置客户主键
				String ccno=NoUtil.getNoUt().getPre()+NoUtil.getNoUt().getNo();
				ccer.setCustNo(ccno);
				//设置客户经理
				ccer.setCustManagerId(sc.getChcDueId());
				//设置客户名称
				ccer.setCustName(sc.getChcCustName());
				//创建客户
				ccer.setCustStatus("1");
				//添加至数据库
				int res2=ccs.addCst_cust(ccer);
				System.out.println("添加客户成功");
				if(res2>0){
					//添加联系人
					Cst_linkman cl=new Cst_linkman();
					cl.setLkmCustNo(ccno);
					cl.setLkmName(sc.getChcLinkman());
					cl.setLkmTel(sc.getChcTel());
					cls.addLinkman(cl);
				}
			}
			return reult;
		}
}
