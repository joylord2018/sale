package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Ord_Product;
import com.neo.vo.Provo;

public interface Ord_Productdao{
   
	public List<Ord_Product> findallpro(@Param("prvo")Provo prvo);
	public int findprocount(@Param("prvo")Provo prvo);
}