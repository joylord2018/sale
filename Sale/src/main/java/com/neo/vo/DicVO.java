package com.neo.vo;

public class DicVO {

	private String type;
	private String item;
	
	private String value;
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
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
