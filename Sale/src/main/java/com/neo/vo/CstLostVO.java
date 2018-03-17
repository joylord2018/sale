package com.neo.vo;

public class CstLostVO {
	private String custname;
	private String managename;
	private String lststatus;
	private Integer pagesize =3;
	private Integer pageno=1;
	private int index;
	private int maxcount;
	private int maxpage;
	
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public String getManagename() {
		return managename;
	}
	public void setManagename(String managename) {
		this.managename = managename;
	}
	public String getLststatus() {
		return lststatus;
	}
	public void setLststatus(String lststatus) {
		this.lststatus = lststatus;
	}
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
	public CstLostVO(String custname, String managename, String lststatus,
			Integer pagesize, Integer pageno, int index, int maxcount,
			int maxpage) {
		super();
		this.custname = custname;
		this.managename = managename;
		this.lststatus = lststatus;
		this.pagesize = pagesize;
		this.pageno = pageno;
		this.index = index;
		this.maxcount = maxcount;
		this.maxpage = maxpage;
	}
	public CstLostVO() {
		super();
	}
	
}
