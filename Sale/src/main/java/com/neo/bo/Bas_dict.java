package com.neo.bo;

import java.io.Serializable;

public class Bas_dict implements Serializable{
    private Integer dictId;

    private String dictType;

    private String dictItem;

    private String dictValue;

    private Integer dictIsEditable;
    
    private String dict_cname;
    

    public String getDict_cname() {
		return dict_cname;
	}

	public void setDict_cname(String dict_cname) {
		this.dict_cname = dict_cname;
	}

	public Integer getDictId() {
        return dictId;
    }

    public void setDictId(Integer dictId) {
        this.dictId = dictId;
    }

    public String getDictType() {
        return dictType;
    }

    public void setDictType(String dictType) {
        this.dictType = dictType == null ? null : dictType.trim();
    }

    public String getDictItem() {
        return dictItem;
    }

    public void setDictItem(String dictItem) {
        this.dictItem = dictItem == null ? null : dictItem.trim();
    }

    public String getDictValue() {
        return dictValue;
    }

    public void setDictValue(String dictValue) {
        this.dictValue = dictValue == null ? null : dictValue.trim();
    }

    public Integer getDictIsEditable() {
        return dictIsEditable;
    }

    public void setDictIsEditable(Integer dictIsEditable) {
        this.dictIsEditable = dictIsEditable;
    }
}