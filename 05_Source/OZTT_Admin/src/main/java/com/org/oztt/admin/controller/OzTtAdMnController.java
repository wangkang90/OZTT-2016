package com.org.oztt.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.oztt.contants.CommonConstants;

/**
 * 菜单画面
 * @author linliuan
 *
 */
@Controller
@RequestMapping("/OZ_TT_AD_MN")
public class OzTtAdMnController extends BaseController {
    
    /**
     * 首页显示
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "init", method = RequestMethod.GET)
    public String init(Model model) {
        try {
            return "redirect:/OZ_TT_AD_OL/init";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }

    }
}
