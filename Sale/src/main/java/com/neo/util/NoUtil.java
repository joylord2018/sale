package com.neo.util;

public class NoUtil {
	
	private static  String pre="KH0000";
	private static  Integer no=1;
	private static NoUtil nout =new NoUtil(pre,no);
	private NoUtil() {
		
	}
	private NoUtil(String pre,Integer no){
		this.pre=pre;
		this.no=no;
	}
	
	public  String getPre() {
		return pre;
	}

	public  void setPre(String pre) {
		NoUtil.pre = pre;
	}

	public  int getNo() {
		return NoUtil.no;
	}

	public  void setNo(int no) {
		NoUtil.no = no;
	}

	private NoUtil(String pre, int no) {
		super();
		this.pre = pre;
		this.no = no;
	}

	public static NoUtil getNoUt(){
		return nout;
	}
}
