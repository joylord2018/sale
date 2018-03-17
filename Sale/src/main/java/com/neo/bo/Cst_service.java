package com.neo.bo;

import java.io.Serializable;
import java.util.Date;

public class Cst_service implements Serializable {
    private Integer svrId;

    private String svrType;

    private String svrTitle;

    private String svrCustNo;

    private String svrStatus;

    private String svrRequest;

    private Integer svrCreateId;

    private Date svrCreateDate;

    private Integer svrDueId;

    private Date svrDueDate;

    private String svrDeal;

    private Integer svrDealId;

    private Date svrDealDate;

    private String svrResult;

    private Integer svrSatisfy;

    public Integer getSvrId() {
        return svrId;
    }

    public void setSvrId(Integer svrId) {
        this.svrId = svrId;
    }

    public String getSvrType() {
        return svrType;
    }

    public void setSvrType(String svrType) {
        this.svrType = svrType == null ? null : svrType.trim();
    }

    public String getSvrTitle() {
        return svrTitle;
    }

    public void setSvrTitle(String svrTitle) {
        this.svrTitle = svrTitle == null ? null : svrTitle.trim();
    }

    public String getSvrCustNo() {
        return svrCustNo;
    }

    public void setSvrCustNo(String svrCustNo) {
        this.svrCustNo = svrCustNo == null ? null : svrCustNo.trim();
    }

    public String getSvrStatus() {
        return svrStatus;
    }

    public void setSvrStatus(String svrStatus) {
        this.svrStatus = svrStatus == null ? null : svrStatus.trim();
    }

    public String getSvrRequest() {
        return svrRequest;
    }

    public void setSvrRequest(String svrRequest) {
        this.svrRequest = svrRequest == null ? null : svrRequest.trim();
    }

    public Integer getSvrCreateId() {
        return svrCreateId;
    }

    public void setSvrCreateId(Integer svrCreateId) {
        this.svrCreateId = svrCreateId;
    }

    public Date getSvrCreateDate() {
        return svrCreateDate;
    }

    public void setSvrCreateDate(Date svrCreateDate) {
        this.svrCreateDate = svrCreateDate;
    }

    public Integer getSvrDueId() {
        return svrDueId;
    }

    public void setSvrDueId(Integer svrDueId) {
        this.svrDueId = svrDueId;
    }

    public Date getSvrDueDate() {
        return svrDueDate;
    }

    public void setSvrDueDate(Date svrDueDate) {
        this.svrDueDate = svrDueDate;
    }

    public String getSvrDeal() {
        return svrDeal;
    }

    public void setSvrDeal(String svrDeal) {
        this.svrDeal = svrDeal == null ? null : svrDeal.trim();
    }

    public Integer getSvrDealId() {
        return svrDealId;
    }

    public void setSvrDealId(Integer svrDealId) {
        this.svrDealId = svrDealId;
    }

    public Date getSvrDealDate() {
        return svrDealDate;
    }

    public void setSvrDealDate(Date svrDealDate) {
        this.svrDealDate = svrDealDate;
    }

    public String getSvrResult() {
        return svrResult;
    }

    public void setSvrResult(String svrResult) {
        this.svrResult = svrResult == null ? null : svrResult.trim();
    }

    public Integer getSvrSatisfy() {
        return svrSatisfy;
    }

    public void setSvrSatisfy(Integer svrSatisfy) {
        this.svrSatisfy = svrSatisfy;
    }

	public Cst_service(Integer svrId, String svrType, String svrTitle,
			String svrCustNo, String svrStatus, String svrRequest,
			Integer svrCreateId, Date svrCreateDate, Integer svrDueId,
			Date svrDueDate, String svrDeal, Integer svrDealId,
			Date svrDealDate, String svrResult, Integer svrSatisfy) {
		super();
		this.svrId = svrId;
		this.svrType = svrType;
		this.svrTitle = svrTitle;
		this.svrCustNo = svrCustNo;
		this.svrStatus = svrStatus;
		this.svrRequest = svrRequest;
		this.svrCreateId = svrCreateId;
		this.svrCreateDate = svrCreateDate;
		this.svrDueId = svrDueId;
		this.svrDueDate = svrDueDate;
		this.svrDeal = svrDeal;
		this.svrDealId = svrDealId;
		this.svrDealDate = svrDealDate;
		this.svrResult = svrResult;
		this.svrSatisfy = svrSatisfy;
	}

	public Cst_service() {
		super();
	}
	//dto
	private String cname;
	
	private String uname;
	
	private String type;
	
	private String duname;
	
	private String sname;
	
	private String dealname;
	
	private String msg;
	private String result;
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	

	public String getDuname() {
		return duname;
	}

	public void setDuname(String duname) {
		this.duname = duname;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getDealname() {
		return dealname;
	}

	public void setDealname(String dealname) {
		this.dealname = dealname;
	}
	
}