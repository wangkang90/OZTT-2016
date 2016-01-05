package com.org.oztt.entity;

import java.io.Serializable;

public class TSysCode implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long no;

    private String codeid;

    private String codedetailid;

    private String codename;

    private String codedetailname;

    public Long getNo() {
        return no;
    }

    public void setNo(Long no) {
        this.no = no;
    }

    public String getCodeid() {
        return codeid;
    }

    public void setCodeid(String codeid) {
        this.codeid = codeid;
    }

    public String getCodedetailid() {
        return codedetailid;
    }

    public void setCodedetailid(String codedetailid) {
        this.codedetailid = codedetailid;
    }

    public String getCodename() {
        return codename;
    }

    public void setCodename(String codename) {
        this.codename = codename;
    }

    public String getCodedetailname() {
        return codedetailname;
    }

    public void setCodedetailname(String codedetailname) {
        this.codedetailname = codedetailname;
    }
}