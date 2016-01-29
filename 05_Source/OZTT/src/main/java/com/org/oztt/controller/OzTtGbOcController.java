package com.org.oztt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.contants.CommonConstants;

/**
 * 支付方式画面
 * 
 * @author linliuan
 */
@Controller
@RequestMapping("/OZ_TT_GB_OC")
public class OzTtGbOcController extends BaseController {

    /**
     * 支付方式画面选择方式付款
     * @param model
     * @param session
     * @param hidDeliMethod 运送方式
     * @param hidAddressId  运送地址
     * @param hidPayMethod  付款方式
     * @return
     */
    @RequestMapping(value = "init")
    public String init(Model model, HttpSession session, String hidDeliMethod, String hidAddressId, String hidPayMethod) {
        try {
            model.addAttribute("hidDeliMethod", hidDeliMethod);
            model.addAttribute("hidAddressId", hidAddressId);
            model.addAttribute("hidPayMethod", hidPayMethod);
            return "/OZ_TT_GB_OC";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

}
