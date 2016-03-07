package com.org.oztt.formDto;


/**
 * 获取所有的团购所关联的ID
 * @author linliuan
 *
 */
public class GroupItemIdDto {
    
    private String goodsId;

    private String priceId;
    
    private String groupId;

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getPriceId() {
        return priceId;
    }

    public void setPriceId(String priceId) {
        this.priceId = priceId;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    
}
