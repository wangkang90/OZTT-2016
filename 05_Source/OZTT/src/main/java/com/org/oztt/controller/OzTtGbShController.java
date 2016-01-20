package com.org.oztt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.contants.CommonConstants;

@Controller
@RequestMapping("/OZ_TT_GB_SH")
public class OzTtGbShController extends BaseController {

    /**
     * 运送方式选择画面
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "init")
    public String init(Model model) {
        try {
            
            return "/OZ_TT_GB_SH";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

}
