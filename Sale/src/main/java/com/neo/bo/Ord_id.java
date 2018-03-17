package com.neo.bo;

import java.io.Serializable;
import java.util.Date;

public class Ord_id implements Serializable {
    private Integer odrId;

    private String odrCustomerId;

    private Date odrDate;

    private String odrAddr;

    private String odrStatus;

    public Integer getOdrId() {
        return odrId;
    }

    public void setOdrId(Integer odrId) {
        this.odrId = odrId;
    }

    public String getOdrCustomerId() {
        return odrCustomerId;
    }

    public void setOdrCustomerId(String odrCustomerId) {
        this.odrCustomerId = odrCustomerId == null ? null : odrCustomerId.trim();
    }

    public Date getOdrDate() {
        return odrDate;
    }

    public void setOdrDate(Date odrDate) {
        this.odrDate = odrDate;
    }

    public String getOdrAddr() {
        return odrAddr;
    }

    public void setOdrAddr(String odrAddr) {
        this.odrAddr = odrAddr == null ? null : odrAddr.trim();
    }

    public String getOdrStatus() {
        return odrStatus;
    }

    public void setOdrStatus(String odrStatus) {
        this.odrStatus = odrStatus == null ? null : odrStatus.trim();
    }
    private String cname;

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Ord_id() {
		super();
	}
    private double sprice;

	public double getSprice() {
		return sprice;
	}

	public void setSprice(double sprice) {
		this.sprice = sprice;
	}

	public Ord_id(Integer odrId, String odrCustomerId, Date odrDate,
			String odrAddr, String odrStatus, String cname, double sprice) {
		super();
		this.odrId = odrId;
		this.odrCustomerId = odrCustomerId;
		this.odrDate = odrDate;
		this.odrAddr = odrAddr;
		this.odrStatus = odrStatus;
		this.cname = cname;
		this.sprice = sprice;
	}
    
}