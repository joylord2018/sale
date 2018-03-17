package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Cst_linkman;
import com.neo.dao.Cst_linkmandao;
import com.neo.service.Cst_linkmanservice;
@Service("clser")
public class Cst_linkmanserviceimpl implements Cst_linkmanservice{
	@Autowired
	private Cst_linkmandao cldao;
	
	public Cst_linkmandao getCldao() {
		return cldao;
	}

	public void setCldao(Cst_linkmandao cldao) {
		this.cldao = cldao;
	}

	@Override
	public int addLinkman(Cst_linkman cl) {
		// TODO Auto-generated method stub
		return cldao.addLinkman(cl);
	}

	@Override
	public List<Cst_linkman> findbycustid(String id) {
		// TODO Auto-generated method stub
		return cldao.findbycustid(id);
	}

	@Override
	public Cst_linkman findbyid(int id) {
		// TODO Auto-generated method stub
		return cldao.findbyid(id);
	}

	@Override
	public int updatecl(Cst_linkman cl) {
		// TODO Auto-generated method stub
		return cldao.updatecl(cl);
	}

	@Override
	public int deletecl(int id) {
		// TODO Auto-generated method stub
		return cldao.deletecl(id);
	}

}
