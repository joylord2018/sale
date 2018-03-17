package com.neo.bo;

import java.io.Serializable;

public class Sys_role_right implements Serializable {
    private Integer rfId;

    private Integer rfRoleId;

    private String rfRightCode;

    public Integer getRfId() {
        return rfId;
    }

    public void setRfId(Integer rfId) {
        this.rfId = rfId;
    }

    public Integer getRfRoleId() {
        return rfRoleId;
    }

    public void setRfRoleId(Integer rfRoleId) {
        this.rfRoleId = rfRoleId;
    }

    public String getRfRightCode() {
        return rfRightCode;
    }

    public void setRfRightCode(String rfRightCode) {
        this.rfRightCode = rfRightCode == null ? null : rfRightCode.trim();
    }
}