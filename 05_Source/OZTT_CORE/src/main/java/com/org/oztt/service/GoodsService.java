package com.org.oztt.service;

import java.util.List;
import java.util.Map;

import com.org.oztt.entity.TGoods;

/**
 * 商品的服务
 * 
 * @author linliuan
 */
public interface GoodsService {

    /**
     * 通过商品ID获取商品的信息
     * 
     * @param goodsId
     * @return
     * @throws Exception
     */
    public TGoods getGoodsById(String goodsId) throws Exception;

    /**
     * 通过输入参数获取符合条件的所有商品
     * 
     * @param tGoods
     * @return
     * @throws Exception
     */
    public List<TGoods> getGoodsByParam(TGoods tGoods) throws Exception;

    /**
     * 获取新货的前三个
     * 
     * @return
     * @throws Exception
     */
    public List<TGoods> getFirstThreeNewArravail() throws Exception;

    /**
     * 获取新货
     * 
     * @return
     * @throws Exception
     */
    public List<TGoods> getAllNewArravail() throws Exception;

    /**
     * 主画面一栏用，这里暂时显示12个
     * 
     * @param tGoods
     * @return
     * @throws Exception
     */
    public List<TGoods> getGoodsListForMain(Map<String, String> map) throws Exception;
}
