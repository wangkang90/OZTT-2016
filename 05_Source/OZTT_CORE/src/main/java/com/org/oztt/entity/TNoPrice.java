package com.org.oztt.entity;

import java.io.Serializable;

public class TNoPrice implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long no;

    private String date;

    private String maxno;

    public Long getNo() {
        return no;
    }

    public void setNo(Long no) {
        this.no = no;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getMaxno() {
        return maxno;
    }

    public void setMaxno(String maxno) {
        this.maxno = maxno;
    }
}