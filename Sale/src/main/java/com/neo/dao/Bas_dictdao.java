package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Bas_dict;
import com.neo.vo.DicVO;


public interface Bas_dictdao {
  
	public List<Bas_dict> findbytype(@Param("type")String type);
	
	public List<Bas_dict> findall(@Param("bvo") DicVO dvo);
	public int findallcounts(@Param("bvo") DicVO dvo);
	public int addBic(@Param("bas")Bas_dict bas);
	public List<Bas_dict> buquan(@Param("cname")String cname);
}