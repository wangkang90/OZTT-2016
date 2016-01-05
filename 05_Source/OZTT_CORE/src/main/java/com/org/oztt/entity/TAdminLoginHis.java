package com.org.oztt.entity;

import java.io.Serializable;
import java.util.Date;

public class TAdminLoginHis implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long no;

    private String adminno;

    private Date logintimestamp;

    private Date logouttimestamp;

    public Long getNo() {
        return no;
    }

    public void setNo(Long no) {
        this.no = no;
    }

    public String getAdminno() {
        return adminno;
    }

    public void setAdminno(String adminno) {
        this.adminno = adminno;
    }

    public Date getLogintimestamp() {
        return logintimestamp;
    }

    public void setLogintimestamp(Date logintimestamp) {
        this.logintimestamp = logintimestamp;
    }

    public Date getLogouttimestamp() {
        return logouttimestamp;
    }

    public void setLogouttimestamp(Date logouttimestamp) {
        this.logouttimestamp = logouttimestamp;
    }
}