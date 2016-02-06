package com.org.oztt.entity;

import java.math.BigDecimal;

public class TSuburbDeliverFee {
    private Long no;

    private String suburb;

    private BigDecimal deliverfee;

    public Long getNo() {
        return no;
    }

    public void setNo(Long no) {
        this.no = no;
    }

    public String getSuburb() {
        return suburb;
    }

    public void setSuburb(String suburb) {
        this.suburb = suburb;
    }

    public BigDecimal getDeliverfee() {
        return deliverfee;
    }

    public void setDeliverfee(BigDecimal deliverfee) {
        this.deliverfee = deliverfee;
    }
}