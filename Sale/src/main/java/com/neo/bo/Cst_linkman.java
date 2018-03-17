package com.neo.bo;

import java.io.Serializable;

public class Cst_linkman implements Serializable {
    private Integer lkmId;

    private String lkmCustNo;

    private String lkmName;

    private String lkmSex;

    private String lkmPostion;

    private String lkmTel;

    private String lkmMobile;

    private String lkmMemo;

    public Integer getLkmId() {
        return lkmId;
    }

    public void setLkmId(Integer lkmId) {
        this.lkmId = lkmId;
    }

    public String getLkmCustNo() {
        return lkmCustNo;
    }

    public void setLkmCustNo(String lkmCustNo) {
        this.lkmCustNo = lkmCustNo == null ? null : lkmCustNo.trim();
    }

    public String getLkmName() {
        return lkmName;
    }

    public void setLkmName(String lkmName) {
        this.lkmName = lkmName == null ? null : lkmName.trim();
    }

    public String getLkmSex() {
        return lkmSex;
    }

    public void setLkmSex(String lkmSex) {
        this.lkmSex = lkmSex == null ? null : lkmSex.trim();
    }

    public String getLkmPostion() {
        return lkmPostion;
    }

    public void setLkmPostion(String lkmPostion) {
        this.lkmPostion = lkmPostion == null ? null : lkmPostion.trim();
    }

    public String getLkmTel() {
        return lkmTel;
    }

    public void setLkmTel(String lkmTel) {
        this.lkmTel = lkmTel == null ? null : lkmTel.trim();
    }

    public String getLkmMobile() {
        return lkmMobile;
    }

    public void setLkmMobile(String lkmMobile) {
        this.lkmMobile = lkmMobile == null ? null : lkmMobile.trim();
    }

    public String getLkmMemo() {
        return lkmMemo;
    }

    public void setLkmMemo(String lkmMemo) {
        this.lkmMemo = lkmMemo == null ? null : lkmMemo.trim();
    }

	public Cst_linkman(Integer lkmId, String lkmCustNo,
			String lkmName, String lkmSex, String lkmPostion, String lkmTel,
			String lkmMobile, String lkmMemo) {
		super();
		this.lkmId = lkmId;
		this.lkmCustNo = lkmCustNo;
		this.lkmName = lkmName;
		this.lkmSex = lkmSex;
		this.lkmPostion = lkmPostion;
		this.lkmTel = lkmTel;
		this.lkmMobile = lkmMobile;
		this.lkmMemo = lkmMemo;
	}

	public Cst_linkman() {
		super();
	}
    
	private String cname;

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}
	
}