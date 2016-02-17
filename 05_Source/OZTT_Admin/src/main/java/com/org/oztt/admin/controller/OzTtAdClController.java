package com.org.oztt.admin.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.contants.CommonConstants;
import com.org.oztt.service.GoodsService;

/**
 * 分类一览
 * 
 * @author linliuan
 */
@Controller
@RequestMapping("/OZ_TT_AD_CL")
public class OzTtAdClController extends BaseController {

    @Resource
    private GoodsService goodsService;
    /**
     * 分类一览
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/init")
    public String init(Model model, HttpServletRequest request, HttpSession session) {
        try {
            
            return "OZ_TT_AD_CL";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }


}
