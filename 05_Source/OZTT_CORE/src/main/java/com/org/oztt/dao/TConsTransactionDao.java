package com.org.oztt.dao;

import com.org.oztt.entity.TConsTransaction;

public interface TConsTransactionDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TConsTransaction record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TConsTransaction record);

    /**
     * 根据主键查询记录
     */
    TConsTransaction selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TConsTransaction record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TConsTransaction record);
    
    /**
     * 最新的一条入出账记录
     * @return
     */
    TConsTransaction selectLastTransaction();
    
    
}