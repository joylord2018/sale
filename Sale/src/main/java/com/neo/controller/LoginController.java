package com.neo.controller;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neo.bo.Sys_user;
import com.neo.service.Sys_userservice;
@Controller
public class LoginController {
	@Autowired
	private Sys_userservice sus;

	public Sys_userservice getSus() {
		return sus;
	}

	public void setSus(Sys_userservice sus) {
		this.sus = sus;
	}
	@RequestMapping("login.html")
	public String login(String name,String password,HttpSession session,Model m){
		Sys_user user=sus.findlogin(name, password);
		if(user==null){
			m.addAttribute("msg","账号密码错误");
			return "login";
		}
		session.setAttribute("user",user);
		return "redirect:html/index.jsp";
	}
}
