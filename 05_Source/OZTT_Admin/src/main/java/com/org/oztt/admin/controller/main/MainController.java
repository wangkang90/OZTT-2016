package com.org.oztt.admin.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.oztt.admin.controller.BaseController;
import com.org.oztt.contants.CommonConstants;

@Controller
@RequestMapping("/main")
public class MainController extends BaseController {

    /**
     * 首页显示
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "init", method = RequestMethod.GET)
    public String init(Model model) {
        try {
            return "OZ_TT_AD_MN";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }

    }
}
