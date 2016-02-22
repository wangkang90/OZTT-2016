package com.org.oztt.formDto;

import org.springframework.util.StringUtils;

/**
 * @author linliuan
 */
public class OzTtAdGlDto {

    private String goodsName;

    private String isHotSale;

    private String isNewSale;

    private String isSetPrice;

    public String  goodsClass;

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getIsHotSale() {
        return StringUtils.isEmpty(isHotSale) ? "" : isHotSale;
    }

    public void setIsHotSale(String isHotSale) {
        this.isHotSale = isHotSale;
    }

    public String getIsNewSale() {
        return StringUtils.isEmpty(isNewSale) ? "" : isNewSale;
    }

    public void setIsNewSale(String isNewSale) {
        this.isNewSale = isNewSale;
    }

    public String getIsSetPrice() {
        return StringUtils.isEmpty(isSetPrice) ? "" : isSetPrice;
    }

    public void setIsSetPrice(String isSetPrice) {
        this.isSetPrice = isSetPrice;
    }

    public String getGoodsClass() {
        return goodsClass;
    }

    public void setGoodsClass(String goodsClass) {
        this.goodsClass = goodsClass;
    }
}
