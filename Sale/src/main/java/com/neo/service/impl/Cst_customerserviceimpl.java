package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Cst_customer;
import com.neo.dao.Cst_customerdao;
import com.neo.service.Cst_customerservice;
import com.neo.vo.CstcusomerVO;
@Service("ccSer")
public class Cst_customerserviceimpl implements Cst_customerservice{
	@Autowired
	private Cst_customerdao ccdao;
	
	public Cst_customerdao getCcdao() {
		return ccdao;
	}

	public void setCcdao(Cst_customerdao ccdao) {
		this.ccdao = ccdao;
	}

	@Override
	public int addCst_cust(Cst_customer cc) {
		// TODO Auto-generated method stub
		
		return ccdao.addCst_cust(cc);
	}

	@Override
	public List<Cst_customer> findccli(CstcusomerVO ccvo) {
		// TODO Auto-generated method stub
		return ccdao.findccli(ccvo);
	}

	@Override
	public int findcccount(CstcusomerVO ccvo) {
		// TODO Auto-generated method stub
		return ccdao.findcccount(ccvo);
	}

	@Override
	public String findcno() {
		// TODO Auto-generated method stub
		return ccdao.findcno();
	}

	@Override
	public List<Cst_customer> findccwait() {
		// TODO Auto-generated method stub
		return ccdao.findccwait();
	}

	@Override
	public Cst_customer findbyid(String id) {
		// TODO Auto-generated method stub
		return ccdao.findbyid(id);
	}

	@Override
	public int updateccs(Cst_customer cc) {
		// TODO Auto-generated method stub
		return ccdao.updateccs(cc);
	}

	@Override
	public List<Cst_customer> buquan(String name) {
		// TODO Auto-generated method stub
		return ccdao.buquan(name);
	}

	@Override
	public List<Cst_customer> gouChen(String type) {
		// TODO Auto-generated method stub
		return ccdao.gouChen(type);
	}

}
