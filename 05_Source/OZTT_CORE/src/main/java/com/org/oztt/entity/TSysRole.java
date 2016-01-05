package com.org.oztt.entity;

import java.io.Serializable;
import java.util.Date;

public class TSysRole implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long no;

    private String roleno;

    private String rolename;

    private String roledesc;

    private String openflg;

    private Date addtimestamp;

    private String adduserkey;

    private Date updtimestamp;

    private String upduserkey;

    private String updpgmid;

    public Long getNo() {
        return no;
    }

    public void setNo(Long no) {
        this.no = no;
    }

    public String getRoleno() {
        return roleno;
    }

    public void setRoleno(String roleno) {
        this.roleno = roleno;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getRoledesc() {
        return roledesc;
    }

    public void setRoledesc(String roledesc) {
        this.roledesc = roledesc;
    }

    public String getOpenflg() {
        return openflg;
    }

    public void setOpenflg(String openflg) {
        this.openflg = openflg;
    }

    public Date getAddtimestamp() {
        return addtimestamp;
    }

    public void setAddtimestamp(Date addtimestamp) {
        this.addtimestamp = addtimestamp;
    }

    public String getAdduserkey() {
        return adduserkey;
    }

    public void setAdduserkey(String adduserkey) {
        this.adduserkey = adduserkey;
    }

    public Date getUpdtimestamp() {
        return updtimestamp;
    }

    public void setUpdtimestamp(Date updtimestamp) {
        this.updtimestamp = updtimestamp;
    }

    public String getUpduserkey() {
        return upduserkey;
    }

    public void setUpduserkey(String upduserkey) {
        this.upduserkey = upduserkey;
    }

    public String getUpdpgmid() {
        return updpgmid;
    }

    public void setUpdpgmid(String updpgmid) {
        this.updpgmid = updpgmid;
    }
}