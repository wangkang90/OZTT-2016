package com.org.oztt.dao;

import com.org.oztt.entity.TConsCart;

public interface TConsCartDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TConsCart record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TConsCart record);

    /**
     * 根据主键查询记录
     */
    TConsCart selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TConsCart record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TConsCart record);
    
    /**
     * 根据参数检索出数据
     * @param record
     * @return
     */
    TConsCart selectByParams(TConsCart record);
    
    /**
     * 
     * @param customerNo 用户号
     */
    void deleteAllContCard(String customerNo);
}