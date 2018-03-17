package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Ord_id;
import com.neo.bo.Orders_line;
import com.neo.dao.Orders_linedao;
import com.neo.service.Ord_idservice;
import com.neo.service.Ord_lineservice;
@Service
public class Ord_lineserviceimpl implements Ord_lineservice{
	@Autowired
	private Orders_linedao oldao;
	@Override
	public List<Orders_line> findbyoid(int oid) {
		// TODO Auto-generated method stub
		return oldao.findbyoid(oid);
	}


}
