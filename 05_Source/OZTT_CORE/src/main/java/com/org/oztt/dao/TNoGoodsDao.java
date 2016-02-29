package com.org.oztt.dao;

import com.org.oztt.entity.TNoGoods;

public interface TNoGoodsDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TNoGoods record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TNoGoods record);

    /**
     * 根据主键查询记录
     */
    TNoGoods selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TNoGoods record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TNoGoods record);
    
    /**
     * 获取最大的商品编号
     * @return
     */
    TNoGoods getMaxGoodsNo();
}