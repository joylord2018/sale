package com.neo.vo;

public class CstcusomerVO {

	private String custno;
	
	private String custname;
	
	private String custregion;
	
	private String managename;
	
	private String custleave;

	public CstcusomerVO(String custno, String custname, String custregion,
			String managename, String custleave, Integer pagesize,
			Integer pageno, int index, int maxcount, int maxpage) {
		super();
		this.custno = custno;
		this.custname = custname;
		this.custregion = custregion;
		this.managename = managename;
		this.custleave = custleave;
		this.pagesize = pagesize;
		this.pageno = pageno;
		this.index = index;
		this.maxcount = maxcount;
		this.maxpage = maxpage;
	}

	public CstcusomerVO() {
		super();
	}

	public String getCustno() {
		return custno;
	}

	public void setCustno(String custno) {
		this.custno = custno;
	}

	public String getCustname() {
		return custname;
	}

	public void setCustname(String custname) {
		this.custname = custname;
	}

	public String getCustregion() {
		return custregion;
	}

	public void setCustregion(String custregion) {
		this.custregion = custregion;
	}

	public String getManagename() {
		return managename;
	}

	public void setManagename(String managename) {
		this.managename = managename;
	}

	public String getCustleave() {
		return custleave;
	}

	public void setCustleave(String custleave) {
		this.custleave = custleave;
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
