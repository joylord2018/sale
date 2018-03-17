package com.neo.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Sal_chance;
import com.neo.dao.Sal_chancedao;
import com.neo.service.SalChanceservice;
import com.neo.vo.SalchanceVO;
@Service("scSer")
public class SalChanceServiceimpl implements SalChanceservice{
	@Autowired
	private Sal_chancedao scdao;
	
	public Sal_chancedao getScdao() {
		return scdao;
	}

	public void setScdao(Sal_chancedao scdao) {
		this.scdao = scdao;
	}

	public int addSalchance(Sal_chance sc) {
		// TODO Auto-generated method stub
		return scdao.addSal_chance(sc);
	}

	@Override
	public List<Sal_chance> findSalchance(SalchanceVO scvo) {
		// TODO Auto-generated method stub
		return scdao.findSalchance(scvo);
	}

	@Override
	public int findSalcount(SalchanceVO scvo) {
		// TODO Auto-generated method stub
		return scdao.findSalcount(scvo);
	}

	@Override
	public Sal_chance findscbyid(int id,Integer dueid) {
		// TODO Auto-generated method stub
		return scdao.findscbyid(id,dueid);
	}

	@Override
	public int updatesalbyid(Sal_chance sc) {
		// TODO Auto-generated method stub
		return scdao.updatesalbyid(sc);
	}

	@Override
	public int updatescbyid(Sal_chance sc) {
		// TODO Auto-generated method stub
		return scdao.updatescbyid(sc);
	}

	@Override
	public int deletesal(int id) {
		// TODO Auto-generated method stub
		return scdao.deletesal(id);
	}

	@Override
	public List<Sal_chance> finddev(SalchanceVO scvo) {
		// TODO Auto-generated method stub
		return scdao.finddev(scvo);
	}

	@Override
	public int finddevcount(SalchanceVO scvo) {
		// TODO Auto-generated method stub
		return scdao.finddevcount(scvo);
	}

	@Override
	public int updatescst(int id, String res) {
		// TODO Auto-generated method stub
		return scdao.updatescst(id, res);
	}


}
