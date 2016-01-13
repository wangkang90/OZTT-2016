package com.org.oztt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.contants.CommonConstants;

@Controller
@RequestMapping("/OZ_TT_GB_CA")
public class OzTtGbCaController extends BaseController {

    /**
     * 购物车一览初期画面
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "init")
    public String init(Model model) {
        try {
            
            return "/OZ_TT_GB_CA";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

}
