package com.org.oztt.service;


public interface PaypalService {

    /**
     * 生成付款画面的信息
     * @param orderId
     * @param price
     * @param returnUrl
     * @param notifyUrl
     * @param cancelReturn
     * @return
     * @throws Exception
     */
    public String buildRequest(String orderId, String price, String returnUrl, String notifyUrl, String cancelReturn)
            throws Exception;
}
