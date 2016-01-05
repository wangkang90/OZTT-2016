package com.org.oztt.entity;

import java.io.Serializable;
import java.util.Date;

public class TGoodsProperty implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long no;

    private String goodsid;

    private String goodsclassid;

    private String goodsclassvalue;

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

    public String getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(String goodsid) {
        this.goodsid = goodsid;
    }

    public String getGoodsclassid() {
        return goodsclassid;
    }

    public void setGoodsclassid(String goodsclassid) {
        this.goodsclassid = goodsclassid;
    }

    public String getGoodsclassvalue() {
        return goodsclassvalue;
    }

    public void setGoodsclassvalue(String goodsclassvalue) {
        this.goodsclassvalue = goodsclassvalue;
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