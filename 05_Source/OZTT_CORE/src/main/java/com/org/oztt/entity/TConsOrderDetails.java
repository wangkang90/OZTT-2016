package com.org.oztt.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class TConsOrderDetails implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long no;

    private String orderno;

    private String customerno;

    private String goodsid;

    private String groupmaxquantity;

    private Long groupcurrentquantity;

    private String groupcomments;

    private String groupdesc;

    private String priceno;

    private BigDecimal unitprice;

    private BigDecimal sumamount;

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

    public String getOrderno() {
        return orderno;
    }

    public void setOrderno(String orderno) {
        this.orderno = orderno;
    }

    public String getCustomerno() {
        return customerno;
    }

    public void setCustomerno(String customerno) {
        this.customerno = customerno;
    }

    public String getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(String goodsid) {
        this.goodsid = goodsid;
    }

    public String getGroupmaxquantity() {
        return groupmaxquantity;
    }

    public void setGroupmaxquantity(String groupmaxquantity) {
        this.groupmaxquantity = groupmaxquantity;
    }

    public Long getGroupcurrentquantity() {
        return groupcurrentquantity;
    }

    public void setGroupcurrentquantity(Long groupcurrentquantity) {
        this.groupcurrentquantity = groupcurrentquantity;
    }

    public String getGroupcomments() {
        return groupcomments;
    }

    public void setGroupcomments(String groupcomments) {
        this.groupcomments = groupcomments;
    }

    public String getGroupdesc() {
        return groupdesc;
    }

    public void setGroupdesc(String groupdesc) {
        this.groupdesc = groupdesc;
    }

    public String getPriceno() {
        return priceno;
    }

    public void setPriceno(String priceno) {
        this.priceno = priceno;
    }

    public BigDecimal getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(BigDecimal unitprice) {
        this.unitprice = unitprice;
    }

    public BigDecimal getSumamount() {
        return sumamount;
    }

    public void setSumamount(BigDecimal sumamount) {
        this.sumamount = sumamount;
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