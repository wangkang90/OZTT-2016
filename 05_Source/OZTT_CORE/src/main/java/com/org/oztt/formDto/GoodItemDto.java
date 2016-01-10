package com.org.oztt.formDto;

import java.util.List;

import com.org.oztt.entity.TGoods;

/**
 * 所有商品涵盖的信息表
 * @author linliuan
 *
 */
public class GoodItemDto {
    
    private TGoods goods; //基本属性
    
    private String firstImg; //默认显示的图片
    private List<String> imgList; // 图片
    
    private String nowPrice;// 现价
    
    private String disPrice;// 折扣价格
    
    private String productInfo; // 商品详情
    
    private String productDesc; // 商品描述
    
    private String sellerRule; // 买家规则
    
    private String properties;

    public TGoods getGoods() {
        return goods;
    }

    public void setGoods(TGoods goods) {
        this.goods = goods;
    }

    public List<String> getImgList() {
        return imgList;
    }

    public void setImgList(List<String> imgList) {
        this.imgList = imgList;
    }

    public String getNowPrice() {
        return nowPrice;
    }

    public void setNowPrice(String nowPrice) {
        this.nowPrice = nowPrice;
    }

    public String getDisPrice() {
        return disPrice;
    }

    public void setDisPrice(String disPrice) {
        this.disPrice = disPrice;
    }

    public String getProductInfo() {
        return productInfo;
    }

    public void setProductInfo(String productInfo) {
        this.productInfo = productInfo;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public String getSellerRule() {
        return sellerRule;
    }

    public void setSellerRule(String sellerRule) {
        this.sellerRule = sellerRule;
    }

    public String getFirstImg() {
        return firstImg;
    }

    public void setFirstImg(String firstImg) {
        this.firstImg = firstImg;
    }

    public String getProperties() {
        return properties;
    }

    public void setProperties(String properties) {
        this.properties = properties;
    }
}
