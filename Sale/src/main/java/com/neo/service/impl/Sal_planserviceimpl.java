package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Sal_plan;
import com.neo.dao.Sal_plandao;
import com.neo.service.Sal_planservice;
@Service
public class Sal_planserviceimpl  implements Sal_planservice{
	@Autowired
	private Sal_plandao spdao;
	
	public Sal_plandao getSpdao() {
		return spdao;
	}

	public void setSpdao(Sal_plandao spdao) {
		this.spdao = spdao;
	}

	@Override
	public List<Sal_plan> findspbyid(int scid) {
		// TODO Auto-generated method stub
		return spdao.findspbyid(scid);
	}

	@Override
	public int addsp(Sal_plan sp) {
		// TODO Auto-generated method stub
		return spdao.addsp(sp);
	}

	@Override
	public int delsp(int id) {
		// TODO Auto-generated method stub
		return spdao.delsp(id);
	}

	@Override
	public int updatespres(String res, int id) {
		// TODO Auto-generated method stub
		return spdao.updatespres(res, id);
	}

}
