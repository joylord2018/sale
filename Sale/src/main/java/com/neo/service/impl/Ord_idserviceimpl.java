package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Ord_id;
import com.neo.dao.Ord_iddao;
import com.neo.service.Ord_idservice;
@Service("Ord_service")
public class Ord_idserviceimpl implements Ord_idservice{
	@Autowired
	private Ord_iddao ord_dao;
	
	public Ord_iddao getOrd_dao() {
		return ord_dao;
	}

	public void setOrd_dao(Ord_iddao ord_dao) {
		this.ord_dao = ord_dao;
	}

	@Override
	public Ord_id findbyid(int id) {
		// TODO Auto-generated method stub
		return ord_dao.findbyid(id);
	}

	@Override
	public List<Ord_id> findords(int pagesize, int pageno, String cid) {
		// TODO Auto-generated method stub
		return ord_dao.findords(pagesize,(pageno-1)*pagesize, cid);
	}

	@Override
	public int countord(String cid) {
		// TODO Auto-generated method stub
		return ord_dao.countord(cid);
	}

	@Override
	public Ord_id findlastord(String cid) {
		// TODO Auto-generated method stub
		return ord_dao.findlastord(cid);
	}

}
