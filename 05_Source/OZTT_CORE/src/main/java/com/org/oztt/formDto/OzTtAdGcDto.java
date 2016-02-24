package com.org.oztt.formDto;


/**
 * 商品团购
 * @author linliuan
 */
public class OzTtAdGcDto {

    private String goodsName;
    
    private String goodsClassId;
    
    private String goodsId;
    
    private String dateFrom;
    
    private String dateTo;
    
    private String isOpenFlag;

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsClassId() {
        return goodsClassId;
    }

    public void setGoodsClassId(String goodsClassId) {
        this.goodsClassId = goodsClassId;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(String dateFrom) {
        this.dateFrom = dateFrom;
    }

    public String getDateTo() {
        return dateTo;
    }

    public void setDateTo(String dateTo) {
        this.dateTo = dateTo;
    }

    public String getIsOpenFlag() {
        return isOpenFlag;
    }

    public void setIsOpenFlag(String isOpenFlag) {
        this.isOpenFlag = isOpenFlag;
    }
}
