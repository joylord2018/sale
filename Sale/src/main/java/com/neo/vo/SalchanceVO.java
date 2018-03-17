package com.neo.vo;

public class SalchanceVO {

	private String cname;
	private String desc;
	private String lname;
	private Integer pagesize =3;
	private Integer pageno=1;
	private int index;
	private int maxcount;
	private int maxpage;
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
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
	
	
	
}
