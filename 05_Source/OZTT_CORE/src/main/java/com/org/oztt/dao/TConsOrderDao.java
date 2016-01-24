package com.org.oztt.dao;

import com.org.oztt.base.page.Pagination;
import com.org.oztt.base.page.PagingResult;
import com.org.oztt.entity.TConsOrder;
import com.org.oztt.formDto.OrderInfoDto;

public interface TConsOrderDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TConsOrder record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TConsOrder record);

    /**
     * 根据主键查询记录
     */
    TConsOrder selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TConsOrder record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TConsOrder record);
    
    /**
     * 根据订单号删除记录
     */
    int deleteByOrderNo(String orderNo);
    
    /**
     * 分页获取订单信息
     * @param pagination
     * @return
     */
    PagingResult<OrderInfoDto> getOrderByParamForPage(Pagination pagination);
}