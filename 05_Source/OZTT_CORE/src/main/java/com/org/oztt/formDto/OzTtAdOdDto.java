package com.org.oztt.formDto;

import java.util.List;

public class OzTtAdOdDto {
    
    private String orderNo;
    
    private String orderStatus;
    
    private String orderStatusView;
    
    private String customerNo;
    
    private List<OzTtAdOdListDto> itemList;

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getCustomerNo() {
        return customerNo;
    }

    public void setCustomerNo(String customerNo) {
        this.customerNo = customerNo;
    }

    public List<OzTtAdOdListDto> getItemList() {
        return itemList;
    }

    public void setItemList(List<OzTtAdOdListDto> itemList) {
        this.itemList = itemList;
    }

    public String getOrderStatusView() {
        return orderStatusView;
    }

    public void setOrderStatusView(String orderStatusView) {
        this.orderStatusView = orderStatusView;
    }
}
