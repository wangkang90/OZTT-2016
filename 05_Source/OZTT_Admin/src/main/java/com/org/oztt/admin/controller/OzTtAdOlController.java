package com.org.oztt.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.contants.CommonConstants;

/**
 * 订单一览画面
 * 
 * @author linliuan
 */
@Controller
@RequestMapping("/OZ_TT_AD_OL")
public class OzTtAdOlController extends BaseController {
    
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
            return "OZ_TT_AD_OL";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
    
    
}
