package com.org.oztt.admin.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.base.page.Pagination;
import com.org.oztt.base.page.PagingResult;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.formDto.OzTtAdRlListDto;
import com.org.oztt.service.CustomerService;

/**
 * 个人信息画面
 * 
 * @author linliuan
 */
@Controller
@RequestMapping("/OZ_TT_AD_PI")
public class OzTtAdPiController extends BaseController {
    
    @Resource
    private CustomerService customerService;
    
    /**
     * 注册用户检索画面
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/search")
    public String init(Model model, HttpServletRequest request, HttpSession session, String pageNo) {
        try {
            if (StringUtils.isEmpty(pageNo)) {
                pageNo = "1";
            }
            Pagination pagination = new Pagination(Integer.valueOf(pageNo));
            PagingResult<OzTtAdRlListDto> pageInfo = customerService.getAllCustomerInfoForAdmin(pagination);
            model.addAttribute("pageInfo", pageInfo);
            return "OZ_TT_AD_RL";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }   
}
