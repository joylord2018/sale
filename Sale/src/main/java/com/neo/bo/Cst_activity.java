package com.neo.bo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Cst_activity  implements Serializable{
    private Integer atvId;

    private String atvCustNo;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date atvDate;

    private String atvPlace;

    private String atvTitle;

    private String atvDesc;
    private String atvMemo;
    public Integer getAtvId() {
        return atvId;
    }

    public void setAtvId(Integer atvId) {
        this.atvId = atvId;
    }

    public String getAtvCustNo() {
        return atvCustNo;
    }

    public void setAtvCustNo(String atvCustNo) {
        this.atvCustNo = atvCustNo == null ? null : atvCustNo.trim();
    }

    public Date getAtvDate() {
        return atvDate;
    }

    public void setAtvDate(Date atvDate) {
        this.atvDate = atvDate;
    }

    public String getAtvPlace() {
        return atvPlace;
    }

    public void setAtvPlace(String atvPlace) {
        this.atvPlace = atvPlace == null ? null : atvPlace.trim();
    }

    public String getAtvTitle() {
        return atvTitle;
    }

    public void setAtvTitle(String atvTitle) {
        this.atvTitle = atvTitle == null ? null : atvTitle.trim();
    }

    public String getAtvDesc() {
        return atvDesc;
    }

    public void setAtvDesc(String atvDesc) {
        this.atvDesc = atvDesc == null ? null : atvDesc.trim();
    }

	public String getAtvMemo() {
		return atvMemo;
	}

	public void setAtvMemo(String atvMemo) {
		this.atvMemo = atvMemo;
	}



	public Cst_activity(Integer atvId, String atvCustNo, Date atvDate,
			String atvPlace, String atvTitle, String atvDesc, String atvMemo,
			String cname) {
		super();
		this.atvId = atvId;
		this.atvCustNo = atvCustNo;
		this.atvDate = atvDate;
		this.atvPlace = atvPlace;
		this.atvTitle = atvTitle;
		this.atvDesc = atvDesc;
		this.atvMemo = atvMemo;
		this.cname = cname;
	}

	public Cst_activity() {
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