package com.org.oztt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.service.PaypalService;

@Controller
@RequestMapping("/Paypal")
public class PaypalController extends BaseController {

    @Resource
    private PaypalService paypalService;

    /**
     * 付款
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "payment")
    public void payment(Model model, HttpServletResponse response, HttpSession session) {
        try {
            String rb = paypalService.buildRequest("20000001", "200", "http://www.baidu.com", "http://www.163.com",
                    "http://www.sina.com.cn/");
            response.getWriter().write(rb);
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
    }

}
