package com.neo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.neo.bo.Cst_lost;
import com.neo.vo.CstLostVO;
@Service
public interface Cst_lostservice {
	public int addCl(Cst_lost cl);
	public List<Cst_lost> findCL(CstLostVO clvo);
	public int findCLcount(CstLostVO clvo);
	public Cst_lost findclbyid(int id);
	public int updatecl(Cst_lost cl);
}
