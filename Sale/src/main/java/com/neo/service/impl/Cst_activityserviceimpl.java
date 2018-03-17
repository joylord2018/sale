package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Cst_activity;
import com.neo.dao.Cst_activitydao;
import com.neo.service.Cst_activityservice;
@Service
public class Cst_activityserviceimpl implements Cst_activityservice{
	@Autowired
	private Cst_activitydao cadao;
	
	public Cst_activitydao getCadao() {
		return cadao;
	}

	public void setCadao(Cst_activitydao cadao) {
		this.cadao = cadao;
	}

	@Override
	public List<Cst_activity> findbycid(String cid) {
		// TODO Auto-generated method stub
		return cadao.findbycid(cid);
	}

	@Override
	public int addca(Cst_activity ca) {
		// TODO Auto-generated method stub
		return cadao.addca(ca);
	}

	@Override
	public Cst_activity findcabyid(int id) {
		// TODO Auto-generated method stub
		return cadao.findcabyid(id);
	}

	@Override
	public int updateca(Cst_activity ca) {
		// TODO Auto-generated method stub
		return cadao.updateca(ca);
	}

}
