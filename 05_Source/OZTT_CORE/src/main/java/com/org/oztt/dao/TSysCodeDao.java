package com.org.oztt.dao;

import java.util.List;

import com.org.oztt.entity.TSysCode;

public interface TSysCodeDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TSysCode record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TSysCode record);

    /**
     * 根据主键查询记录
     */
    TSysCode selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TSysCode record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TSysCode record);
    
    /**
     * 根据codeId检索出来所有的属性
     * @param codeId
     * @return
     */
    List<TSysCode> selectByCodeId(String codeId);
    
    /**
     * 根据codeId,codeDetailId检索出实体类
     * @param record
     * @return
     */
    TSysCode selectByCodeIdADetailId(TSysCode record);
    
}