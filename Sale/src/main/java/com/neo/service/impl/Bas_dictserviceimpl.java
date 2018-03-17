package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Bas_dict;
import com.neo.dao.Bas_dictdao;
import com.neo.service.Bas_dictservice;
import com.neo.vo.DicVO;
@Service("bdser")
public class Bas_dictserviceimpl implements Bas_dictservice{
	@Autowired
	private Bas_dictdao bddao;
	
	public Bas_dictdao getBddao() {
		return bddao;
	}

	public void setBddao(Bas_dictdao bddao) {
		this.bddao = bddao;
	}

	@Override
	public List<Bas_dict> findbytype(String type) {
		// TODO Auto-generated method stub
		return bddao.findbytype(type);
	}

	@Override
	public List<Bas_dict> findall(DicVO dvo) {
		// TODO Auto-generated method stub
		return bddao.findall(dvo);
	}

	@Override
	public int findallcounts(DicVO dvo) {
		// TODO Auto-generated method stub
		return bddao.findallcounts(dvo);
	}

	@Override
	public List<Bas_dict> buquan(String cname) {
		// TODO Auto-generated method stub
		return bddao.buquan(cname);
	}

}
