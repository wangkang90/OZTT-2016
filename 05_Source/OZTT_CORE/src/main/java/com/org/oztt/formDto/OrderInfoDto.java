package com.org.oztt.formDto;

import java.util.List;

/**
 * 订单信息
 * @author linliuan
 *
 */
public class OrderInfoDto {

    private String orderId;
    
    private String orderDate;
    
    private List<ContCartItemDto> itemList;

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public List<ContCartItemDto> getItemList() {
        return itemList;
    }

    public void setItemList(List<ContCartItemDto> itemList) {
        this.itemList = itemList;
    }
}
