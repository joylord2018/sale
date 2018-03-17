package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Sal_chance;
import com.neo.bo.Sys_user;

public interface Sys_userservice {

	public Sys_user findlogin(String name,String password);
	public List<Sys_user> findSaler();
	
}
