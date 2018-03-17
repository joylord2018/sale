package com.neo.util;

import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.context.ContextLoaderListener;

import com.neo.bo.Bas_dict;
import com.neo.bo.Sys_user;
import com.neo.service.Bas_dictservice;
import com.neo.service.Cst_customerservice;
import com.neo.service.Sys_userservice;


public class ApplicationData extends ContextLoaderListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		super.contextDestroyed(arg0);
		System.out.println("销毁缓存");
		ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		RedisUtil ru=(RedisUtil) ctx.getBean("redisUtil");
		ru.delete("salers");
		ru.delete("svr_status");
		ru.delete("svr_type");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
		super.contextInitialized(arg0);  
		System.out.println("缓存初始化");
		ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		
		//将销售经理存入缓存
		RedisUtil ru=(RedisUtil) ctx.getBean("redisUtil");
		List<Object> li=ru.getList("salers");
		if(li==null||li.size()==0){
			Sys_userservice sus=(Sys_userservice)ctx.getBean("sys_user");
			System.out.println(sus);
			List<Sys_user> salers=sus.findSaler();
			System.out.println("客户加入缓存");
			ru.setList("salers",salers);
		}
		//缓存服务类型;
		List<Object> svr_typeli=ru.getList("svr_type");
		if(svr_typeli==null||svr_typeli.size()==0){
			Bas_dictservice bds=(Bas_dictservice)ctx.getBean("bdser");
			List<Bas_dict> svr_type=bds.findbytype("svr_type");
			System.out.println("服务类型加入缓存");
			ru.setList("svr_type",svr_type);
		}
		//缓存创建状态;
		List<Object> svr_statusli=ru.getList("svr_status");
		if(svr_statusli==null||svr_statusli.size()==0){
			Bas_dictservice bds=(Bas_dictservice)ctx.getBean("bdser");
			List<Bas_dict> svr_status=bds.findbytype("svr_status");
			System.out.println("服务状态加入缓存");
			ru.setList("svr_status",svr_status);
		}
		//设置超时时间
				/*ru.settime("salers",5,TimeUnit.MINUTES);*/
		//获取客户id值
		Cst_customerservice ccs=(Cst_customerservice) ctx.getBean("ccSer");
		String no=ccs.findcno();
		if(no!=null&&!no.equals("")){
			String num=no.substring(6);
			NoUtil.getNoUt().setNo(Integer.parseInt(num));
		}

	}

}
