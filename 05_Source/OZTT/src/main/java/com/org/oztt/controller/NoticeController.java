package com.org.oztt.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.contants.CommonConstants;

@Controller
@RequestMapping("/Notice")
public class NoticeController extends BaseController {


    /**
     * 货到付款通知画面
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "codNotice")
    public String codNotice(Model model, HttpServletResponse response, HttpSession session) {
        try {
            return "/CODNotice";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
}
