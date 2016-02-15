package com.org.oztt.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.base.page.Pagination;
import com.org.oztt.base.page.PagingResult;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.formDto.OzTtAdOlDto;
import com.org.oztt.formDto.OzTtAdOlListDto;
import com.org.oztt.service.CommonService;
import com.org.oztt.service.OrderService;

/**
 * 订单一览画面
 * 
 * @author linliuan
 */
@Controller
@RequestMapping("/OZ_TT_AD_OL")
public class OzTtAdOlController extends BaseController {
    
    @Resource
    private CommonService commonService;
    
    @Resource
    private OrderService orderService;
    
    /**
     * 订单一览画面
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/init")
    public String init(Model model, HttpServletRequest request, HttpSession session) {

        try {
            model.addAttribute("orderSelect", commonService.getOrderStatus());
            model.addAttribute("paymentSelect", commonService.getPayment());
            model.addAttribute("deliverySelect", commonService.getDelivery());
            model.addAttribute("ozTtAdOlDto", new OzTtAdOlDto());
            model.addAttribute("pageInfo", new PagingResult<OzTtAdOlListDto>());
            return "OZ_TT_AD_OL";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
    
    /**
     * 订单一览检索画面
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/search")
    public String init(Model model, HttpServletRequest request, HttpSession session, @ModelAttribute OzTtAdOlDto ozTtAdOlDto) {
        try {
            model.addAttribute("orderSelect", commonService.getOrderStatus());
            model.addAttribute("paymentSelect", commonService.getPayment());
            model.addAttribute("deliverySelect", commonService.getDelivery());
            
            session.setAttribute("ozTtAdOlDto", ozTtAdOlDto);
            
            Pagination pagination = new Pagination(1);
            Map<Object, Object> params = new HashMap<Object, Object>();
            params.put("customerNo", ozTtAdOlDto.getCustomerNo());
            params.put("orderStatus", ozTtAdOlDto.getOrderStatus());
            params.put("payment", ozTtAdOlDto.getPayment());
            params.put("deliveryMethod", ozTtAdOlDto.getDeliveryMethod());
            params.put("dataFrom", ozTtAdOlDto.getDataFrom());
            params.put("dataTo", ozTtAdOlDto.getDataTo());
            pagination.setParams(params);
            PagingResult<OzTtAdOlListDto> pageInfo = orderService.getAllOrderInfoForAdmin(pagination);
            
            model.addAttribute("ozTtAdOlDto", ozTtAdOlDto);
            model.addAttribute("pageInfo", pageInfo);
            return "OZ_TT_AD_OL";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
    
    /**
     * 订单一览分页选择画面
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/pageSearch")
    public String init(Model model, HttpServletRequest request, HttpSession session, String pageNo) {
        try {
            OzTtAdOlDto ozTtAdOlDto = (OzTtAdOlDto) session.getAttribute("ozTtAdOlDto");
            
            model.addAttribute("orderSelect", commonService.getOrderStatus());
            model.addAttribute("paymentSelect", commonService.getPayment());
            model.addAttribute("deliverySelect", commonService.getDelivery());
            
            Pagination pagination = new Pagination(Integer.valueOf(pageNo));
            Map<Object, Object> params = new HashMap<Object, Object>();
            params.put("customerNo", ozTtAdOlDto.getCustomerNo());
            params.put("orderStatus", ozTtAdOlDto.getOrderStatus());
            params.put("payment", ozTtAdOlDto.getPayment());
            params.put("deliveryMethod", ozTtAdOlDto.getDeliveryMethod());
            params.put("dataFrom", ozTtAdOlDto.getDataFrom());
            params.put("dataTo", ozTtAdOlDto.getDataTo());
            pagination.setParams(params);
            PagingResult<OzTtAdOlListDto> pageInfo = orderService.getAllOrderInfoForAdmin(pagination);
            
            model.addAttribute("ozTtAdOlDto", ozTtAdOlDto);
            model.addAttribute("pageInfo", pageInfo);
            return "OZ_TT_AD_OL";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
    
    
    
    
}
