package com.org.oztt.formDto;

/**
 * Paypel支付的参数类
 * @author linliuan
 *
 */
public class PaypalParam {
    
    private String orderId;

    private String price;

    private String returnUrl;

    private String notifyUrl;

    private String cancelReturn;
    
    private String orderInfo;

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getReturnUrl() {
        return returnUrl;
    }

    public void setReturnUrl(String returnUrl) {
        this.returnUrl = returnUrl;
    }

    public String getNotifyUrl() {
        return notifyUrl;
    }

    public void setNotifyUrl(String notifyUrl) {
        this.notifyUrl = notifyUrl;
    }

    public String getCancelReturn() {
        return cancelReturn;
    }

    public void setCancelReturn(String cancelReturn) {
        this.cancelReturn = cancelReturn;
    }

    public String getOrderInfo() {
        return orderInfo;
    }

    public void setOrderInfo(String orderInfo) {
        this.orderInfo = orderInfo;
    }
}
