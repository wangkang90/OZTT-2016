package com.org.oztt.service.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.util.CollectionUtils;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.org.oztt.base.page.Pagination;
import com.org.oztt.base.page.PagingResult;
import com.org.oztt.base.util.DateFormatUtils;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.contants.CommonEnum;
import com.org.oztt.dao.TConsCartDao;
import com.org.oztt.dao.TConsOrderDao;
import com.org.oztt.dao.TConsOrderDetailsDao;
import com.org.oztt.dao.TNoOrderDao;
import com.org.oztt.entity.TConsOrder;
import com.org.oztt.entity.TConsOrderDetails;
import com.org.oztt.entity.TNoOrder;
import com.org.oztt.formDto.ContCartItemDto;
import com.org.oztt.formDto.ContCartProItemDto;
import com.org.oztt.formDto.OrderInfoDto;
import com.org.oztt.service.BaseService;
import com.org.oztt.service.OrderService;

@Service
public class OrderServiceImpl extends BaseService implements OrderService {

    @Resource
    private TConsCartDao         tConsCartDao;

    @Resource
    private TConsOrderDao        tConsOrderDao;

    @Resource
    private TNoOrderDao          tNoOrderDao;

    @Resource
    private TConsOrderDetailsDao tConsOrderDetailsDao;

    @Override
    public void insertOrderInfo(String customerNo) throws Exception {
        List<ContCartItemDto> payList = tConsCartDao.getAllContCartForBuy(customerNo);
        if (payList == null)
            return;
        // 产生订单号
        String maxOrderNo = "";
        // 获取最大的客户号
        TNoOrder maxTNoOrder = tNoOrderDao.getMaxOrderNo();
        String nowDateString = DateFormatUtils.getNowTimeFormat("yyyyMMdd");
        Integer len = CommonConstants.FIRST_NUMBER.length();
        if (maxTNoOrder == null) {
            maxOrderNo = nowDateString + CommonConstants.FIRST_NUMBER;
            // 订单号最大值的保存
            TNoOrder tNoOrder = new TNoOrder();
            tNoOrder.setDate(DateFormatUtils.getNowTimeFormat("yyyyMMdd"));
            tNoOrder.setMaxno(maxOrderNo);
            tNoOrderDao.insertSelective(tNoOrder);
        }
        else {
            if (DateFormatUtils.getDateFormatStr(DateFormatUtils.PATTEN_YMD_NO_SEPRATE).equals(maxTNoOrder.getDate())) {
                // 属于同一天
                // 订单号最大值的保存
                maxOrderNo = nowDateString
                        + StringUtils.leftPad(String.valueOf(Integer.valueOf(maxTNoOrder.getMaxno().substring(8)) + 1),
                                len, "0");
                maxTNoOrder.setMaxno(maxOrderNo);
                tNoOrderDao.updateByPrimaryKeySelective(maxTNoOrder);
            }
            else {
                maxOrderNo = nowDateString + CommonConstants.FIRST_NUMBER;
                // 订单号最大值的保存
                TNoOrder tNoOrder = new TNoOrder();
                tNoOrder.setDate(DateFormatUtils.getNowTimeFormat("yyyyMMdd"));
                tNoOrder.setMaxno(maxOrderNo);
                tNoOrderDao.insertSelective(tNoOrder);
            }
        }

        // 订单总金额
        BigDecimal orderAmount = BigDecimal.ZERO;
        // 生成订单表以及订单详细表
        for (ContCartItemDto itemDto : payList) {
            TConsOrderDetails tConsOrderDetails = new TConsOrderDetails();
            tConsOrderDetails.setOrderno(maxOrderNo);
            tConsOrderDetails.setCustomerno(customerNo);
            tConsOrderDetails.setGoodsid(itemDto.getGoodsId());
            tConsOrderDetails.setGroupmaxquantity(itemDto.getGoodsPropertiesDB());
            tConsOrderDetails.setGroupcurrentquantity(itemDto.getGoodsQuantity() == null ? 0L : Long.valueOf(itemDto
                    .getGoodsQuantity()));
            tConsOrderDetails.setSumamount(itemDto.getGoodsPrice() == null ? BigDecimal.ZERO : new BigDecimal(itemDto
                    .getGoodsPrice()));
            tConsOrderDetails.setUnitprice(tConsOrderDetails.getSumamount().divide(
                    new BigDecimal(itemDto.getGoodsQuantity()), 2, BigDecimal.ROUND_DOWN));
            tConsOrderDetails.setAddtimestamp(new Date());
            tConsOrderDetails.setAdduserkey(customerNo);
            tConsOrderDetailsDao.insertSelective(tConsOrderDetails);
            orderAmount = orderAmount.add(tConsOrderDetails.getSumamount());
        }

        // TODO 参数有很多不确定的东西
        TConsOrder tConsOrder = new TConsOrder();
        tConsOrder.setOrderno(maxOrderNo);
        tConsOrder.setCustomerno(customerNo);
        tConsOrder.setOrderamount(orderAmount);
        tConsOrder.setPaymentmethod(CommonEnum.PaymentMethod.PAYPAL.getCode());
        tConsOrder.setOrdertimestamp(new Date());
        tConsOrder.setPaymenttimestamp(null);//付款时间
        tConsOrder.setHandleflg(CommonEnum.HandleFlag.NOT_PAY.getCode());
        tConsOrder.setDeliverymethod("");
        tConsOrder.setAddressid(12313123L);
        tConsOrder.setAccountno("");
        tConsOrder.setDeliverycost(BigDecimal.ZERO);
        tConsOrder.setTransactionno("");
        tConsOrder.setAddtimestamp(new Date());
        tConsOrder.setAdduserkey(customerNo);

        tConsOrderDao.insertSelective(tConsOrder);

    }

    @Override
    public PagingResult<OrderInfoDto> getAllOrderInfoForPage(Pagination pagination) throws Exception {

        PagingResult<OrderInfoDto> orderDBInfoPage = tConsOrderDao.getOrderByParamForPage(pagination);
        
        String imgUrl = super.getApplicationMessage("saveImgUrl");
        
        if (orderDBInfoPage != null && orderDBInfoPage.getResultList() != null
                && orderDBInfoPage.getResultList().size() > 0) {
            for (OrderInfoDto orderDB : orderDBInfoPage.getResultList()) {
                List<ContCartItemDto> detailList =  tConsOrderDetailsDao.selectByOrderId(orderDB.getOrderId());
                if (!CollectionUtils.isEmpty(detailList)) {
                    for (ContCartItemDto dto : detailList) {
                        if (StringUtils.isEmpty(dto.getGoodsPropertiesDB())) {
                            dto.setGoodsProperties(new ArrayList<ContCartProItemDto>());
                        } else {
                            dto.setGoodsProperties(JSONObject.parseArray(dto.getGoodsPropertiesDB(), ContCartProItemDto.class));
                        }
                        dto.setGoodsPropertiesDB(StringUtils.EMPTY);
                        dto.setGoodsImage(imgUrl + dto.getGoodsId() + CommonConstants.PATH_SPLIT + dto.getGoodsImage());
                    }
                }
                orderDB.setItemList(detailList);
            }
        }
        return orderDBInfoPage;

    }

    @Override
    public void deleteOrderById(String orderNo) throws Exception {
        // 删除订单信息
        tConsOrderDao.deleteByOrderNo(orderNo);
        tConsOrderDetailsDao.deleteByOrderNo(orderNo);
    }

}
