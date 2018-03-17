package com.neo.service;

import java.util.List;

import com.neo.bo.Ord_Storage;
import com.neo.vo.StorageVO;

public interface Ord_StorageService {
	public List<Ord_Storage> findallsto(StorageVO svo);
	public int findcount(StorageVO svo);
}
