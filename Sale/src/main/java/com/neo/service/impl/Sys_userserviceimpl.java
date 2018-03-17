package com.neo.service.impl;

import java.util.List;

import org.aspectj.internal.lang.annotation.ajcDeclareAnnotation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Sal_chance;
import com.neo.bo.Sys_user;
import com.neo.dao.Sys_userdao;
import com.neo.service.Sys_userservice;
@Service("sys_user")
public class Sys_userserviceimpl implements Sys_userservice{
	@Autowired
	private Sys_userdao userdao;
	
	public Sys_userdao getUserdao() {
		return userdao;
	}

	public void setUserdao(Sys_userdao userdao) {
		this.userdao = userdao;
	}

	public Sys_user findlogin(String name, String password) {
		// TODO Auto-generated method stub
		return userdao.findlogin(name,password);
	}
	//所有销售
	@Override
	public List<Sys_user> findSaler() {
		// TODO Auto-generated method stub
		return userdao.findSaler();
	}


}
