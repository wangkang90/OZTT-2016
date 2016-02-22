package com.org.oztt.dao;

import com.org.oztt.entity.TNoGroup;

public interface TNoGroupDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TNoGroup record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TNoGroup record);

    /**
     * 根据主键查询记录
     */
    TNoGroup selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TNoGroup record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TNoGroup record);
    
    /**
     * 获取最大的团购编号
     * @return
     */
    TNoGroup getMaxGroupNo();
}