package com.org.oztt.dao;

import com.org.oztt.entity.TNoCustomer;

public interface TNoCustomerDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TNoCustomer record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TNoCustomer record);

    /**
     * 根据主键查询记录
     */
    TNoCustomer selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TNoCustomer record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TNoCustomer record);
    
    /**
     * 取得现有数据中最大的客户号
     * @return
     */
    TNoCustomer getMaxCustomerNo();
}