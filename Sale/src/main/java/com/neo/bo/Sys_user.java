package com.neo.bo;

import java.io.Serializable;

public class Sys_user implements Serializable {
    private Integer usrId;

    private String usrName;

    private String usrPassword;

    private Integer usrRoleId;

    private Integer usrFlag;

    public Integer getUsrId() {
        return usrId;
    }

    public void setUsrId(Integer usrId) {
        this.usrId = usrId;
    }

    public String getUsrName() {
        return usrName;
    }

    public void setUsrName(String usrName) {
        this.usrName = usrName == null ? null : usrName.trim();
    }

    public String getUsrPassword() {
        return usrPassword;
    }

    public void setUsrPassword(String usrPassword) {
        this.usrPassword = usrPassword == null ? null : usrPassword.trim();
    }

    public Integer getUsrRoleId() {
        return usrRoleId;
    }

    public void setUsrRoleId(Integer usrRoleId) {
        this.usrRoleId = usrRoleId;
    }

    public Integer getUsrFlag() {
        return usrFlag;
    }

    public void setUsrFlag(Integer usrFlag) {
        this.usrFlag = usrFlag;
    }
    //dto属性
    private String rname;

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public Sys_user(Integer usrId, String usrName, String usrPassword,
			Integer usrRoleId, Integer usrFlag, String rname) {
		super();
		this.usrId = usrId;
		this.usrName = usrName;
		this.usrPassword = usrPassword;
		this.usrRoleId = usrRoleId;
		this.usrFlag = usrFlag;
		this.rname = rname;
	}

	public Sys_user() {
		super();
	}
	
}