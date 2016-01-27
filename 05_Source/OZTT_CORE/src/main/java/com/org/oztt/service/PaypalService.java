package com.org.oztt.service;

import com.org.oztt.formDto.PaypalParam;

public interface PaypalService {

    /**
     * 生成付款画面的信息
     * 
     * @return
     * @throws Exception
     */
    public String buildRequest(PaypalParam paypalParam) throws Exception;
}
