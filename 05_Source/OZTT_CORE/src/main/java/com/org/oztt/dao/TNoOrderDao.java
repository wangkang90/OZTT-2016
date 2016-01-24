package com.org.oztt.dao;

import com.org.oztt.entity.TNoOrder;

public interface TNoOrderDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TNoOrder record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TNoOrder record);

    /**
     * 根据主键查询记录
     */
    TNoOrder selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TNoOrder record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TNoOrder record);
    
    /**
     * 获取最大的订单号
     * @return
     */
    TNoOrder getMaxOrderNo();

}