package com.org.oztt.formDto;

/**
 * 画面显示的商品属性
 * @author linliuan
 *
 */
public class GoodProertyDto {

    private String goodsPropertiesId; //属性ID
    
    private String goodsPropertiesName;// 属性名称
    
    private String goodsPropertiesType;// 属性类型，如：下拉框，输入框等等
    
    private String goodsPropertiesJson;// 特殊属性下 Json格式保存

    public String getGoodsPropertiesId() {
        return goodsPropertiesId;
    }

    public void setGoodsPropertiesId(String goodsPropertiesId) {
        this.goodsPropertiesId = goodsPropertiesId;
    }

    public String getGoodsPropertiesName() {
        return goodsPropertiesName;
    }

    public void setGoodsPropertiesName(String goodsPropertiesName) {
        this.goodsPropertiesName = goodsPropertiesName;
    }

    public String getGoodsPropertiesType() {
        return goodsPropertiesType;
    }

    public void setGoodsPropertiesType(String goodsPropertiesType) {
        this.goodsPropertiesType = goodsPropertiesType;
    }

    public String getGoodsPropertiesJson() {
        return goodsPropertiesJson;
    }

    public void setGoodsPropertiesJson(String goodsPropertiesJson) {
        this.goodsPropertiesJson = goodsPropertiesJson;
    }
}
