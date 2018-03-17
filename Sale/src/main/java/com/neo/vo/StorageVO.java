package com.neo.vo;

import java.io.Serializable;

public class StorageVO implements Serializable{
	
	private String pname;
	private String house;
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	private Integer pagesize =3;
	private Integer pageno=1;
	private int index;
	private int maxcount;
	private int maxpage;
	public Integer getPagesize() {
		return pagesize;
	}
	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}
	public Integer getPageno() {
		return pageno;
	}
	public void setPageno(Integer pageno) {
		if(pageno>=maxpage){
			pageno=maxpage;
		}
		if(pageno<1){
			pageno=1;
		}
		this.pageno = pageno;
	}
	public int getIndex() {
		index=(pageno-1)*pagesize;
		
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getMaxcount() {
		return maxcount;
	}
	public void setMaxcount(int maxcount) {
		this.maxcount = maxcount;
	}
	public int getMaxpage() {
		return maxcount%pagesize==0?maxcount/pagesize:(maxcount/pagesize+1);
	}
	public void setMaxpage(int maxpage) {
		this.maxpage = maxpage;
	}
	
}
