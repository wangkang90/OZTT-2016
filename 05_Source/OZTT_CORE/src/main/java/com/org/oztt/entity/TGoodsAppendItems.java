package com.org.oztt.entity;

import java.io.Serializable;
import java.util.Date;

public class TGoodsAppendItems implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long no;

    private String itemid;

    private String classid;

    private String displayname;

    private String fieldname;

    private String fieldtype;

    private Integer fieldlength;

    private String inputtype;

    private String defaultvalue;

    private String isrequired;

    private Integer sortorder;

    private String openflg;

    private String buyuseflg;

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

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid;
    }

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid;
    }

    public String getDisplayname() {
        return displayname;
    }

    public void setDisplayname(String displayname) {
        this.displayname = displayname;
    }

    public String getFieldname() {
        return fieldname;
    }

    public void setFieldname(String fieldname) {
        this.fieldname = fieldname;
    }

    public String getFieldtype() {
        return fieldtype;
    }

    public void setFieldtype(String fieldtype) {
        this.fieldtype = fieldtype;
    }

    public Integer getFieldlength() {
        return fieldlength;
    }

    public void setFieldlength(Integer fieldlength) {
        this.fieldlength = fieldlength;
    }

    public String getInputtype() {
        return inputtype;
    }

    public void setInputtype(String inputtype) {
        this.inputtype = inputtype;
    }

    public String getDefaultvalue() {
        return defaultvalue;
    }

    public void setDefaultvalue(String defaultvalue) {
        this.defaultvalue = defaultvalue;
    }

    public String getIsrequired() {
        return isrequired;
    }

    public void setIsrequired(String isrequired) {
        this.isrequired = isrequired;
    }

    public Integer getSortorder() {
        return sortorder;
    }

    public void setSortorder(Integer sortorder) {
        this.sortorder = sortorder;
    }

    public String getOpenflg() {
        return openflg;
    }

    public void setOpenflg(String openflg) {
        this.openflg = openflg;
    }

    public String getBuyuseflg() {
        return buyuseflg;
    }

    public void setBuyuseflg(String buyuseflg) {
        this.buyuseflg = buyuseflg;
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