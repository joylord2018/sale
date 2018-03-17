package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Ord_Product;
import com.neo.dao.Ord_Productdao;
import com.neo.service.Ord_ProductService;
import com.neo.vo.Provo;
@Service
public class Ord_ProductServiceimpl implements Ord_ProductService{
	@Autowired
	private Ord_Productdao opdao;
	@Override
	public List<Ord_Product> findallpro(Provo prvo) {
		// TODO Auto-generated method stub
		return opdao.findallpro(prvo);
	}

	@Override
	public int findprocount(Provo prvo) {
		// TODO Auto-generated method stub
		return opdao.findprocount(prvo);
	}

}
