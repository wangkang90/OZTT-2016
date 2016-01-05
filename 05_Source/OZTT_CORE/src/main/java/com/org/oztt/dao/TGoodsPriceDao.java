package com.org.oztt.dao;

import com.org.oztt.entity.TGoodsPrice;

public interface TGoodsPriceDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TGoodsPrice record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TGoodsPrice record);

    /**
     * 根据主键查询记录
     */
    TGoodsPrice selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TGoodsPrice record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TGoodsPrice record);
}