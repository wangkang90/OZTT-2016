package com.org.oztt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.oztt.contants.CommonConstants;
import com.org.oztt.contants.CommonEnum;
import com.org.oztt.entity.TConsOrder;
import com.org.oztt.service.OrderService;
import com.org.oztt.service.PaypalService;

@Controller
@RequestMapping("/Pay")
public class PayController extends BaseController {

    @Resource
    private PaypalService paypalService;

    @Resource
    private OrderService  orderService;

    /**
     * 付款
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "payment")
    public String payment(Model model, HttpServletResponse response, HttpSession session, String hidDeliMethod,
            String hidAddressId, String hidPayMethod) {
        try {
            String customerNo = (String) session.getAttribute(CommonConstants.SESSION_CUSTOMERNO);
            // 先判断付款方式
            String rb = orderService.insertOrderInfo(customerNo, hidPayMethod, hidDeliMethod, hidAddressId);
            if (!StringUtils.isEmpty(rb)) {
                response.getWriter().write(rb);
                return null;
            }
            if (CommonEnum.DeliveryMethod.COD.getCode().equals(hidDeliMethod)){
                // 货到付款
                return "redirect:/Notice/codNotice";
            }
            return null;

        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
    
    /**
     * 付款后的通知
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "paypalNotify")
    public void paypalNotify(Model model, HttpServletResponse response, HttpSession session, @RequestParam String orderId) {
        try {
            
            // 检索当前订单，更新状态为已经付款
            TConsOrder tConsOrder = orderService.selectByOrderId(orderId);
            tConsOrder.setHandleflg(CommonEnum.HandleFlag.HAS_HANDLED.getCode());
            orderService.updateOrderInfo(tConsOrder);
            
            // 下面生成入出账记录
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
    }

}
