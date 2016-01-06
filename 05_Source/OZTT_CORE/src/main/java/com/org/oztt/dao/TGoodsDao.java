package com.org.oztt.dao;

import java.util.List;
import java.util.Map;

import com.org.oztt.entity.TGoods;

public interface TGoodsDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TGoods record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TGoods record);

    /**
     * 根据主键查询记录
     */
    TGoods selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TGoods record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TGoods record);
    
    /**
     * 根据商品ID获取商品信息
     */
    TGoods selectByGoodsId(String goodsId);
    
    /**
     * 根据商品ID获取商品信息
     */
    List<TGoods> selectByParams(TGoods record);
    
    /**
     * 获取新货的前三个
     * @return
     */
    List<TGoods> getFirstThreeNewArravail();
    
    /**
     * 获取新货
     * @return
     */
    List<TGoods> getAllNewArravail();
    
    /**
     * 根据参数获取商品数据
     * @param map
     * @return
     */
    List<TGoods> getGoodsListForMain(Map<String, String> map);
     
}