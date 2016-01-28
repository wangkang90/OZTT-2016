package com.org.oztt.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.oztt.base.page.Pagination;
import com.org.oztt.base.page.PagingResult;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.formDto.OrderInfoDto;
import com.org.oztt.service.OrderService;

/**
 * 订单一览画面
 * 
 * @author linliuan
 */
@Controller
@RequestMapping("/OZ_TT_GB_OL")
public class OzTtGbOlController extends BaseController {

    @Resource
    private OrderService orderService;
    /**
     * 个人所有的订单
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "itemList")
    public String itemList(Model model, HttpSession session, String page) {
        try {
            String customerNo = (String) session.getAttribute(CommonConstants.SESSION_CUSTOMERNO);
            if (StringUtils.isEmpty(page)) page = "1";
            Pagination pagination = new Pagination(Integer.parseInt(page));
            pagination.setSize(Integer.valueOf(getApplicationMessage("orderItemCount")));
            Map<Object, Object> paramMap = new HashMap<Object, Object>();
            paramMap.put("customerNo", customerNo);
            pagination.setParams(paramMap);
            PagingResult<OrderInfoDto> orderListPage = orderService.getAllOrderInfoForPage(pagination);
            
            model.addAttribute("pageInfo", orderListPage);
            
            return "/OZ_TT_GB_OL";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
    
    
    /**
     * 指定当前的订单
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "itemOne")
    public String itemOne(Model model, HttpSession session, @RequestParam String orderNo) {
        try {
            String customerNo = (String) session.getAttribute(CommonConstants.SESSION_CUSTOMERNO);
            Pagination pagination = new Pagination();
            Map<Object, Object> paramMap = new HashMap<Object, Object>();
            paramMap.put("customerNo", customerNo);
            paramMap.put("orderNo", orderNo);
            pagination.setParams(paramMap);
            PagingResult<OrderInfoDto> orderListPage = orderService.getAllOrderInfoForPage(pagination);
            
            model.addAttribute("pageInfo", orderListPage);
            model.addAttribute("showPage", "0");
            return "/OZ_TT_GB_OL";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

}
