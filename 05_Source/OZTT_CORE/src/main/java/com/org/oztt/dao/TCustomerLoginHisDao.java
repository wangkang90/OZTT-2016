package com.org.oztt.dao;

import com.org.oztt.entity.TCustomerLoginHis;

public interface TCustomerLoginHisDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TCustomerLoginHis record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TCustomerLoginHis record);

    /**
     * 根据主键查询记录
     */
    TCustomerLoginHis selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TCustomerLoginHis record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TCustomerLoginHis record);
}