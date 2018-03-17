package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Cst_lost;
import com.neo.dao.Cst_lostdao;
import com.neo.service.Cst_lostservice;
import com.neo.vo.CstLostVO;

@Service("clostser")
public class Cst_lostserviceimpl implements Cst_lostservice{
	@Autowired
	private Cst_lostdao cldao;

	public Cst_lostdao getCldao() {
		return cldao;
	}

	public void setCldao(Cst_lostdao cldao) {
		this.cldao = cldao;
	}

	@Override
	public int addCl(Cst_lost cl) {
		// TODO Auto-generated method stub
		return cldao.addCl(cl);
	}

	@Override
	public List<Cst_lost> findCL(CstLostVO clvo) {
		// TODO Auto-generated method stub
		return cldao.findCL(clvo);
	}

	@Override
	public int findCLcount(CstLostVO clvo) {
		// TODO Auto-generated method stub
		return cldao.findCLcount(clvo);
	}

	@Override
	public Cst_lost findclbyid(int id) {
		// TODO Auto-generated method stub
		return cldao.findclbyid(id);
	}

	@Override
	public int updatecl(Cst_lost cl) {
		// TODO Auto-generated method stub
		return cldao.updatecl(cl);
	}
	
}
