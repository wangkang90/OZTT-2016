package com.org.oztt.service;

import com.org.oztt.base.page.Pagination;
import com.org.oztt.base.page.PagingResult;
import com.org.oztt.formDto.OrderInfoDto;


public interface OrderService {

    /**
     * 插入订单信息
     * @throws Exception
     */
    public void insertOrderInfo(String customerNo) throws Exception;
    
    /**
     * 获取当前用户所有的订单信息
     * @return
     * @throws Exception
     */
    public PagingResult<OrderInfoDto> getAllOrderInfoForPage(Pagination pagination) throws Exception;
    
    /**
     * 删除订单信息
     * @param id
     * @throws Exception
     */
    public void deleteOrderById(String id) throws Exception;
}
