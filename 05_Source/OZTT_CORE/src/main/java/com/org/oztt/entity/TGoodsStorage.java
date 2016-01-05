package com.org.oztt.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class TGoodsStorage implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long no;

    private String goodsid;

    private String groupprice;

    private Long groupmaxquantity;

    private Long groupcurrentquantity;

    private BigDecimal checkinprice;

    private Date checkintimestamp;

    private String checkinperson;

    private String checkinflg;

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

    public String getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(String goodsid) {
        this.goodsid = goodsid;
    }

    public String getGroupprice() {
        return groupprice;
    }

    public void setGroupprice(String groupprice) {
        this.groupprice = groupprice;
    }

    public Long getGroupmaxquantity() {
        return groupmaxquantity;
    }

    public void setGroupmaxquantity(Long groupmaxquantity) {
        this.groupmaxquantity = groupmaxquantity;
    }

    public Long getGroupcurrentquantity() {
        return groupcurrentquantity;
    }

    public void setGroupcurrentquantity(Long groupcurrentquantity) {
        this.groupcurrentquantity = groupcurrentquantity;
    }

    public BigDecimal getCheckinprice() {
        return checkinprice;
    }

    public void setCheckinprice(BigDecimal checkinprice) {
        this.checkinprice = checkinprice;
    }

    public Date getCheckintimestamp() {
        return checkintimestamp;
    }

    public void setCheckintimestamp(Date checkintimestamp) {
        this.checkintimestamp = checkintimestamp;
    }

    public String getCheckinperson() {
        return checkinperson;
    }

    public void setCheckinperson(String checkinperson) {
        this.checkinperson = checkinperson;
    }

    public String getCheckinflg() {
        return checkinflg;
    }

    public void setCheckinflg(String checkinflg) {
        this.checkinflg = checkinflg;
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