package com.org.oztt.entity;

import java.util.Date;

public class TSysValidateMessage {
    private Long id;

    private String telnumber;

    private String validatecode;

    private Date createtimestamp;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTelnumber() {
        return telnumber;
    }

    public void setTelnumber(String telnumber) {
        this.telnumber = telnumber;
    }

    public String getValidatecode() {
        return validatecode;
    }

    public void setValidatecode(String validatecode) {
        this.validatecode = validatecode;
    }

    public Date getCreatetimestamp() {
        return createtimestamp;
    }

    public void setCreatetimestamp(Date createtimestamp) {
        this.createtimestamp = createtimestamp;
    }
}