package com.org.oztt.dao;

import java.util.List;

import com.org.oztt.entity.TSuburbDeliverFee;

public interface TSuburbDeliverFeeDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TSuburbDeliverFee record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TSuburbDeliverFee record);

    /**
     * 根据主键查询记录
     */
    TSuburbDeliverFee selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TSuburbDeliverFee record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TSuburbDeliverFee record);
    
    /**
     * 获取所有的地区费用数据
     * @return
     */
    List<TSuburbDeliverFee> getAllTSuburbDeliverFee();
}