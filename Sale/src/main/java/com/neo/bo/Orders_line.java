package com.neo.bo;

import java.io.Serializable;

public class Orders_line  implements Serializable{
    private Integer oddId;

    private Integer oddOrderId;

    private Integer oddProdId;

    private Integer oddCount;

    private String oddUnit;

    private Double oddPrice;

    public Integer getOddId() {
        return oddId;
    }

    public void setOddId(Integer oddId) {
        this.oddId = oddId;
    }

    public Integer getOddOrderId() {
        return oddOrderId;
    }

    public void setOddOrderId(Integer oddOrderId) {
        this.oddOrderId = oddOrderId;
    }

    public Integer getOddProdId() {
        return oddProdId;
    }

    public void setOddProdId(Integer oddProdId) {
        this.oddProdId = oddProdId;
    }

    public Integer getOddCount() {
        return oddCount;
    }

    public void setOddCount(Integer oddCount) {
        this.oddCount = oddCount;
    }

    public String getOddUnit() {
        return oddUnit;
    }

    public void setOddUnit(String oddUnit) {
        this.oddUnit = oddUnit == null ? null : oddUnit.trim();
    }

    public Double getOddPrice() {
        return oddPrice;
    }

    public void setOddPrice(Double oddPrice) {
        this.oddPrice = oddPrice;
    }
    
    private String pname;
    private String tname;
    private String bname;
    private double pprice;

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public double getPprice() {
		return pprice;
	}

	public void setPprice(double pprice) {
		this.pprice = pprice;
	}

	public Orders_line(Integer oddId, Integer oddOrderId, Integer oddProdId,
			Integer oddCount, String oddUnit, Double oddPrice, String pname,
			String tname, String bname, double pprice) {
		super();
		this.oddId = oddId;
		this.oddOrderId = oddOrderId;
		this.oddProdId = oddProdId;
		this.oddCount = oddCount;
		this.oddUnit = oddUnit;
		this.oddPrice = oddPrice;
		this.pname = pname;
		this.tname = tname;
		this.bname = bname;
		this.pprice = pprice;
	}

	public Orders_line() {
		super();
	}
    
}