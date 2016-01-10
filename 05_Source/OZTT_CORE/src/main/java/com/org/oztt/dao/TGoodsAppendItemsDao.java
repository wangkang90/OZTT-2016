package com.org.oztt.dao;

import com.org.oztt.entity.TGoodsAppendItems;

public interface TGoodsAppendItemsDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TGoodsAppendItems record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TGoodsAppendItems record);

    /**
     * 根据主键查询记录
     */
    TGoodsAppendItems selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TGoodsAppendItems record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TGoodsAppendItems record);
    
    /**
     * 根据参数检索出数据
     * @param record
     * @return
     */
    TGoodsAppendItems selectByParams(TGoodsAppendItems record);
}