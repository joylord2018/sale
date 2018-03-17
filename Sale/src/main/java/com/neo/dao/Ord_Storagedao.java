package com.neo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neo.bo.Ord_Storage;
import com.neo.vo.StorageVO;


public interface Ord_Storagedao {

	public List<Ord_Storage> findallsto(@Param("svo")StorageVO svo);
	public int findcount(@Param("svo")StorageVO svo);
}