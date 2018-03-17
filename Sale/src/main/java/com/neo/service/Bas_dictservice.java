package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Bas_dict;
import com.neo.vo.DicVO;

public interface Bas_dictservice {
	public List<Bas_dict> findbytype(String type);
	public List<Bas_dict> findall(DicVO dvo);
	public int findallcounts(DicVO dvo);
	public List<Bas_dict> buquan(String cname);
}
