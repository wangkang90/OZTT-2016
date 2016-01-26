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
import com.org.oztt.dao.TConsInvoiceDao;
import com.org.oztt.dao.TConsOrderDao;
import com.org.oztt.dao.TConsOrderDetailsDao;
import com.org.oztt.dao.TNoInvoiceDao;
import com.org.oztt.dao.TNoOrderDao;
import com.org.oztt.entity.TConsInvoice;
import com.org.oztt.entity.TConsOrder;
import com.org.oztt.entity.TConsOrderDetails;
import com.org.oztt.entity.TNoInvoice;
import com.org.oztt.entity.TNoOrder;
import com.org.oztt.formDto.ContCartItemDto;
import com.org.oztt.formDto.ContCartProItemDto;
import com.org.oztt.formDto.OrderInfoDto;
import com.org.oztt.formDto.PaypalParam;
import com.org.oztt.service.BaseService;
import com.org.oztt.service.OrderService;
import com.org.oztt.service.PaypalService;

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

    @Resource
    private PaypalService        paypalService;

    @Resource
    private TNoInvoiceDao        tNoInvoiceDao;

    @Resource
    private TConsInvoiceDao      tConsInvoiceDao;

    @Override
    public String insertOrderInfo(String customerNo, String payMethod, String hidDeliMethod, String hidAddressId)
            throws Exception {
        List<ContCartItemDto> payList = tConsCartDao.getAllContCartForBuy(customerNo);
        if (payList == null)
            return null;
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

        // 生成发票数据
        // 产生订单号
        String maxInvoiceNo = "";
        // 获取最大的客户号
        TNoInvoice maxTNoInvoice = tNoInvoiceDao.getMaxInvoiceNo();

        if (maxTNoInvoice == null) {
            maxInvoiceNo = nowDateString + CommonConstants.FIRST_NUMBER;
            // 订单号最大值的保存
            TNoInvoice tNoInvoice = new TNoInvoice();
            tNoInvoice.setDate(DateFormatUtils.getNowTimeFormat("yyyyMMdd"));
            tNoInvoice.setMaxno(maxInvoiceNo);
            tNoInvoiceDao.insertSelective(tNoInvoice);
        }
        else {
            if (DateFormatUtils.getDateFormatStr(DateFormatUtils.PATTEN_YMD_NO_SEPRATE).equals(maxTNoInvoice.getDate())) {
                // 属于同一天
                // 订单号最大值的保存
                maxInvoiceNo = nowDateString
                        + StringUtils.leftPad(
                                String.valueOf(Integer.valueOf(maxTNoInvoice.getMaxno().substring(8)) + 1), len, "0");
                maxTNoInvoice.setMaxno(maxInvoiceNo);
                tNoInvoiceDao.updateByPrimaryKeySelective(maxTNoInvoice);
            }
            else {
                maxInvoiceNo = nowDateString + CommonConstants.FIRST_NUMBER;
                // 订单号最大值的保存
                TNoInvoice tNoInvoice = new TNoInvoice();
                tNoInvoice.setDate(DateFormatUtils.getNowTimeFormat("yyyyMMdd"));
                tNoInvoice.setMaxno(maxInvoiceNo);
                tNoInvoiceDao.insertSelective(tNoInvoice);
            }
        }
        TConsInvoice tConsInvoice = new TConsInvoice();
        tConsInvoice.setCustomerno(customerNo);
        tConsInvoice.setInvoiceno(maxInvoiceNo);
        tConsInvoiceDao.insertSelective(tConsInvoice);
        
        // 生成订单表
        TConsOrder tConsOrder = new TConsOrder();
        tConsOrder.setOrderno(maxOrderNo);
        tConsOrder.setCustomerno(customerNo);

        tConsOrder.setOrderamount(orderAmount);
        tConsOrder.setPaymentmethod(CommonEnum.PaymentMethod.PAYPAL.getCode());
        tConsOrder.setOrdertimestamp(new Date());
        tConsOrder.setPaymenttimestamp(null);//付款时间
        tConsOrder.setHandleflg(CommonEnum.HandleFlag.NOT_PAY.getCode());
        tConsOrder.setDeliverymethod(hidDeliMethod);
        tConsOrder.setAddressid(Long.valueOf(hidAddressId));
        // TODO 这里需要取运费
        tConsOrder.setDeliverycost(BigDecimal.ZERO);
        tConsOrder.setAddtimestamp(new Date());
        tConsOrder.setAdduserkey(customerNo);
        tConsOrder.setAccountno(maxInvoiceNo);
        tConsOrderDao.insertSelective(tConsOrder);

        // 将购物车中的数据删除
        tConsCartDao.deleteCurrentBuyGoods(customerNo);

        String rb = "";
        if (CommonEnum.DeliveryMethod.COD.getCode().equals(hidDeliMethod)) {
            // 货到付款是不需要付款的直接派送
        }
        else {
            if (CommonEnum.PaymentMethod.PAYPAL.getCode().equals(payMethod)) {
                // 货到付款
                PaypalParam paypalParam = new PaypalParam();
                paypalParam.setOrderId(maxOrderNo);
                paypalParam.setPrice(orderAmount.toString());
                paypalParam.setNotifyUrl(getApplicationMessage("notifyUrl") + maxOrderNo); //这里是不是通知画面，做一些对数据库的更新操作等
                paypalParam.setCancelReturn(getApplicationMessage("cancelReturn"));//应该返回未完成订单画面订单画面
                paypalParam.setOrderInfo(getApplicationMessage("orderInfo"));
                paypalParam.setReturnUrl(getApplicationMessage("returnUrl"));// 同样是当前订单画面
                rb = paypalService.buildRequest(paypalParam);
            }
           
        }
        return rb;

    }

    @Override
    public PagingResult<OrderInfoDto> getAllOrderInfoForPage(Pagination pagination) throws Exception {

        PagingResult<OrderInfoDto> orderDBInfoPage = tConsOrderDao.getOrderByParamForPage(pagination);

        String imgUrl = super.getApplicationMessage("saveImgUrl");

        if (orderDBInfoPage != null && orderDBInfoPage.getResultList() != null
                && orderDBInfoPage.getResultList().size() > 0) {
            for (OrderInfoDto orderDB : orderDBInfoPage.getResultList()) {
                List<ContCartItemDto> detailList = tConsOrderDetailsDao.selectByOrderId(orderDB.getOrderId());
                if (!CollectionUtils.isEmpty(detailList)) {
                    for (ContCartItemDto dto : detailList) {
                        if (StringUtils.isEmpty(dto.getGoodsPropertiesDB())) {
                            dto.setGoodsProperties(new ArrayList<ContCartProItemDto>());
                        }
                        else {
                            dto.setGoodsProperties(JSONObject.parseArray(dto.getGoodsPropertiesDB(),
                                    ContCartProItemDto.class));
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
    public void deleteOrderById(String orderNo, String customerNo) throws Exception {
        // 删除订单信息
        TConsOrder tConsOrder = tConsOrderDao.selectByOrderId(orderNo);
        if (tConsOrder != null) {
            tConsOrder.setUpdpgmid("OrderServiceImpl");
            tConsOrder.setUpdtimestamp(new Date());
            tConsOrder.setUpduserkey(customerNo);
            tConsOrder.setHandleflg(CommonEnum.HandleFlag.DELETED.getCode());
            tConsOrderDao.updateByPrimaryKeySelective(tConsOrder);
        }
    }

    @Override
    public void updateOrderInfo(TConsOrder tConsOrder) throws Exception {
        // TODO Auto-generated method stub

    }

    @Override
    public TConsOrder selectByOrderId(String orderId) throws Exception {
        // TODO Auto-generated method stub
        return null;
    }

}
