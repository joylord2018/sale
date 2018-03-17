package com.neo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Ord_Storage;
import com.neo.dao.Ord_Storagedao;
import com.neo.service.Ord_StorageService;
import com.neo.vo.SalchanceVO;
import com.neo.vo.StorageVO;
@Service
public class Ord_StorageServiceImpl implements  Ord_StorageService{
	@Autowired
	private  Ord_Storagedao osdao;
	@Override
	public List<Ord_Storage> findallsto(StorageVO svo) {
		// TODO Auto-generated method stub
		return osdao.findallsto(svo);
	}
	@Override
	public int findcount(StorageVO svo) {
		// TODO Auto-generated method stub
		return osdao.findcount(svo);
	}

}
