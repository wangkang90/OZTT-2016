package com.org.oztt.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class TConsTransaction implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long no;

    private String transactionno;

    private String customerno;

    private String inoutflg;

    private String accountno;

    private String transactionmethod;

    private String transactiontype;

    private String transactionobject;

    private String transactionserialno;

    private BigDecimal transactionamount;

    private String transactionstatus;

    private Date transactiontimestamp;

    private String transactioncomments;

    private BigDecimal transactionbeforeamount;

    private BigDecimal transactionafteramount;

    private String transactionoperator;

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

    public String getTransactionno() {
        return transactionno;
    }

    public void setTransactionno(String transactionno) {
        this.transactionno = transactionno;
    }

    public String getCustomerno() {
        return customerno;
    }

    public void setCustomerno(String customerno) {
        this.customerno = customerno;
    }

    public String getInoutflg() {
        return inoutflg;
    }

    public void setInoutflg(String inoutflg) {
        this.inoutflg = inoutflg;
    }

    public String getAccountno() {
        return accountno;
    }

    public void setAccountno(String accountno) {
        this.accountno = accountno;
    }

    public String getTransactionmethod() {
        return transactionmethod;
    }

    public void setTransactionmethod(String transactionmethod) {
        this.transactionmethod = transactionmethod;
    }

    public String getTransactiontype() {
        return transactiontype;
    }

    public void setTransactiontype(String transactiontype) {
        this.transactiontype = transactiontype;
    }

    public String getTransactionobject() {
        return transactionobject;
    }

    public void setTransactionobject(String transactionobject) {
        this.transactionobject = transactionobject;
    }

    public String getTransactionserialno() {
        return transactionserialno;
    }

    public void setTransactionserialno(String transactionserialno) {
        this.transactionserialno = transactionserialno;
    }

    public BigDecimal getTransactionamount() {
        return transactionamount;
    }

    public void setTransactionamount(BigDecimal transactionamount) {
        this.transactionamount = transactionamount;
    }

    public String getTransactionstatus() {
        return transactionstatus;
    }

    public void setTransactionstatus(String transactionstatus) {
        this.transactionstatus = transactionstatus;
    }

    public Date getTransactiontimestamp() {
        return transactiontimestamp;
    }

    public void setTransactiontimestamp(Date transactiontimestamp) {
        this.transactiontimestamp = transactiontimestamp;
    }

    public String getTransactioncomments() {
        return transactioncomments;
    }

    public void setTransactioncomments(String transactioncomments) {
        this.transactioncomments = transactioncomments;
    }

    public BigDecimal getTransactionbeforeamount() {
        return transactionbeforeamount;
    }

    public void setTransactionbeforeamount(BigDecimal transactionbeforeamount) {
        this.transactionbeforeamount = transactionbeforeamount;
    }

    public BigDecimal getTransactionafteramount() {
        return transactionafteramount;
    }

    public void setTransactionafteramount(BigDecimal transactionafteramount) {
        this.transactionafteramount = transactionafteramount;
    }

    public String getTransactionoperator() {
        return transactionoperator;
    }

    public void setTransactionoperator(String transactionoperator) {
        this.transactionoperator = transactionoperator;
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