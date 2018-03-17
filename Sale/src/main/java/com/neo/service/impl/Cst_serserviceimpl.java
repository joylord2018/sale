package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Cst_service;
import com.neo.dao.Cst_servicedao;
import com.neo.service.Cst_serservice;
import com.neo.vo.CstServiceVO;
import com.neo.vo.CstcusomerVO;
@Service
public class Cst_serserviceimpl implements Cst_serservice{
	@Autowired
	private Cst_servicedao scdao;
	
	public Cst_servicedao getScdao() {
		return scdao;
	}

	public void setScdao(Cst_servicedao scdao) {
		this.scdao = scdao;
	}
	@Override
	public int addcs(Cst_service cs) {
		// TODO Auto-generated method stub
		return scdao.addcs(cs);
	}

	@Override
	public List<Cst_service> findcsli(CstServiceVO csvo) {
		// TODO Auto-generated method stub
		return scdao.findcsli(csvo);
	}

	@Override
	public int findcccount(CstServiceVO csvo) {
		// TODO Auto-generated method stub
		return scdao.findcccount(csvo);
	}

	@Override
	public int updateCS(Cst_service cs) {
		// TODO Auto-generated method stub
		return scdao.updateCS(cs);
	}

	@Override
	public Cst_service findcsbyid(int id,int type) {
		// TODO Auto-generated method stub
		return scdao.findcsbyid(id,type);
	}

	@Override
	public List<Cst_service> goucheng(Integer year) {
		// TODO Auto-generated method stub
		return scdao.goucheng(year);
	}


}
