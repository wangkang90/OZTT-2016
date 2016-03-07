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
    
    private String groupMax;//团购最大数量
    
    private String groupCurrent;//团购现在数量
    
    private String validPeriodStart;// 适用期开始
    
    private String validPeriodEnd;// 适用期
    
    private String isOver;//是否已经打到团购上线
    
    private String isOverTime;// 是否已经超过时间
    
    private String productInfo; // 商品详情
    
    private String productDesc; // 商品描述
    
    private String sellerRule; // 买家规则
    
    private String groupId; // 团购ID
    
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

    public String getGroupMax() {
        return groupMax;
    }

    public void setGroupMax(String groupMax) {
        this.groupMax = groupMax;
    }

    public String getGroupCurrent() {
        return groupCurrent;
    }

    public void setGroupCurrent(String groupCurrent) {
        this.groupCurrent = groupCurrent;
    }

    public String getIsOver() {
        return isOver;
    }

    public void setIsOver(String isOver) {
        this.isOver = isOver;
    }

    public String getValidPeriodStart() {
        return validPeriodStart;
    }

    public void setValidPeriodStart(String validPeriodStart) {
        this.validPeriodStart = validPeriodStart;
    }

    public String getValidPeriodEnd() {
        return validPeriodEnd;
    }

    public void setValidPeriodEnd(String validPeriodEnd) {
        this.validPeriodEnd = validPeriodEnd;
    }

    public String getIsOverTime() {
        return isOverTime;
    }

    public void setIsOverTime(String isOverTime) {
        this.isOverTime = isOverTime;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }
}
