package com.org.oztt.formDto;

import java.util.List;

/**
 * 商品购物车
 * 
 * @author linliuan
 */
public class ContCartItemDto {

    private String                   goodsId;

    private String                   goodsName;

    private String                   goodsImage;

    private String                   goodsQuantity;

    private String                   goodsPrice;       // 总价

    private List<ContCartProItemDto> goodsProperties;

    private String                   goodsPropertiesDB;

    private String                   goodsUnitPrice;

    private String                   groupId;

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsImage() {
        return goodsImage;
    }

    public void setGoodsImage(String goodsImage) {
        this.goodsImage = goodsImage;
    }

    public String getGoodsQuantity() {
        return goodsQuantity;
    }

    public void setGoodsQuantity(String goodsQuantity) {
        this.goodsQuantity = goodsQuantity;
    }

    public String getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(String goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public String getGoodsPropertiesDB() {
        return goodsPropertiesDB;
    }

    public void setGoodsPropertiesDB(String goodsPropertiesDB) {
        this.goodsPropertiesDB = goodsPropertiesDB;
    }

    public List<ContCartProItemDto> getGoodsProperties() {
        return goodsProperties;
    }

    public void setGoodsProperties(List<ContCartProItemDto> goodsProperties) {
        this.goodsProperties = goodsProperties;
    }

    public String getGoodsUnitPrice() {
        return goodsUnitPrice;
    }

    public void setGoodsUnitPrice(String goodsUnitPrice) {
        this.goodsUnitPrice = goodsUnitPrice;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

}
