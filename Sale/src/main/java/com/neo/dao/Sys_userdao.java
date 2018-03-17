package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Sys_user;

public interface Sys_userdao {
  public Sys_user findlogin(@Param("username")String user_name,@Param("password")String user_password);
  public List<Sys_user> findSaler();
}