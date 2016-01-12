package com.org.oztt.service;

import java.util.List;
import java.util.Map;

import com.org.oztt.base.page.Pagination;
import com.org.oztt.base.page.PagingResult;
import com.org.oztt.entity.TGoods;
import com.org.oztt.entity.TGoodsAppendItems;
import com.org.oztt.entity.TGoodsClassfication;
import com.org.oztt.entity.TGoodsGroup;
import com.org.oztt.entity.TGoodsPrice;
import com.org.oztt.entity.TGoodsProperty;
import com.org.oztt.formDto.GoodItemDto;

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
     * 获取热卖的前五个
     * 
     * @return
     * @throws Exception
     */
    public List<TGoods> getFiveHotSeller(TGoods tGoods) throws Exception;

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
    
    /**
     * 通过分类ID取得分类名称
     * @param classId
     * @return
     * @throws Exception
     */
    public TGoodsClassfication getGoodsClassficationByClassId(String classId) throws Exception;
    
    /**
     * 分页获取商品信息
     * @param pagination
     * @return
     * @throws Exception
     */
    public PagingResult<TGoods> getGoodsByParamForPage(Pagination pagination) throws Exception;
    
    /**
     * 获取商品价格信息
     * @param tGoodsPrice
     * @return
     * @throws Exception
     */
    public TGoodsPrice getGoodPrice(TGoodsPrice tGoodsPrice) throws Exception;
    
    /**
     * 获取商品团购信息
     * @param tGoodsGroup
     * @return
     * @throws Exception
     */
    public TGoodsGroup getGoodPrice(TGoodsGroup tGoodsGroup) throws Exception;
    
    /**
     * 获取商品属性信息
     * @param tGoodsProperty
     * @return
     * @throws Exception
     */
    public List<TGoodsProperty> getGoodsProperty(TGoodsProperty tGoodsProperty) throws Exception;
    
    /**
     * 获取商品扩展属性信息
     * @param tGoodsAppendItems
     * @return
     * @throws Exception
     */
    public TGoodsAppendItems getGoodsAppendItems(TGoodsAppendItems tGoodsAppendItems) throws Exception;
    
    /**
     * 获取商品的所有属性
     * @param tGoodsAppendItems
     * @return
     * @throws Exception
     */
    public GoodItemDto getGoodAllItemDto(String goodId) throws Exception;
    
    /**
     * 加入购物车
     * @param list
     * @return
     * @throws Exception
     */
    @SuppressWarnings("rawtypes")
    public boolean addContCart(String customerNo, List list) throws Exception;
    
    /**
     * 删除购物车
     * @param list
     * @return
     * @throws Exception
     */
    public boolean deleteContCart(String customerNo, Map<String, String> cartMap) throws Exception;
    
    /**
     * 清空购物车
     * @param list
     * @return
     * @throws Exception
     */
    public boolean deleteAllContCart(String customerNo) throws Exception;
    
    /**
     * 商品检索
     * @param tGoods
     * @return
     * @throws Exception
     */
    public List<TGoods> getGoodsBySearchParam(String goodsParam) throws Exception;
}
