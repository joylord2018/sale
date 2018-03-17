package com.neo.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CstServiceVO {

	private String cname;
	
	private String title;
	
	private String status;
	
	private String type;
	
	private String sdate;
	private String edate;
	private Date startdate;
	private Date enddate;
	
	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
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

	public CstServiceVO(String cname, String title, String status, String type,
			Date startdate, Date enddate, Integer pagesize, Integer pageno,
			int index, int maxcount, int maxpage) {
		super();
		this.cname = cname;
		this.title = title;
		this.status = status;
		this.type = type;
		this.startdate = startdate;
		this.enddate = enddate;
		this.pagesize = pagesize;
		this.pageno = pageno;
		this.index = index;
		this.maxcount = maxcount;
		this.maxpage = maxpage;
	}

	public CstServiceVO() {
		super();
	}
	
}
