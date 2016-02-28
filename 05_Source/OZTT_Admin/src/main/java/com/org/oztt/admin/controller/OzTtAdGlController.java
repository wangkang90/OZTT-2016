package com.org.oztt.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.base.page.Pagination;
import com.org.oztt.base.page.PagingResult;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.formDto.OzTtAdGlDto;
import com.org.oztt.formDto.OzTtAdGlListDto;
import com.org.oztt.service.CommonService;
import com.org.oztt.service.GoodsService;
import com.org.oztt.service.OrderService;

/**
 * 商品管理
 * 
 * @author linliuan
 */
@Controller
@RequestMapping("/OZ_TT_AD_GL")
public class OzTtAdGlController extends BaseController {

    @Resource
    private CommonService commonService;

    @Resource
    private OrderService  orderService;

    @Resource
    private GoodsService  goodsService;

    /**
     * 商品管理一览画面
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/init")
    public String init(Model model, HttpServletRequest request, HttpSession session) {
        try {
            model.addAttribute("ozTtAdGlDto", new OzTtAdGlDto());
            model.addAttribute("pageInfo", new PagingResult<OzTtAdGlListDto>());
            return "OZ_TT_AD_GL";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

    /**
     * 商品管理一览检索画面
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/search")
    public String init(Model model, HttpServletRequest request, HttpSession session,
            @ModelAttribute OzTtAdGlDto ozTtAdGlDto) {
        try {
            session.setAttribute("OzTtAdGlDto", ozTtAdGlDto);

            Pagination pagination = new Pagination(1);
            Map<Object, Object> params = new HashMap<Object, Object>();
            params.put("goodsName", ozTtAdGlDto.getGoodsName());
            params.put("isHotSale", ozTtAdGlDto.getIsHotSale());
            params.put("isNewSale", ozTtAdGlDto.getIsNewSale());
            params.put("goodsClass", ozTtAdGlDto.getGoodsClass());
            pagination.setParams(params);
            PagingResult<OzTtAdGlListDto> pageInfo = goodsService.getAllGoodsInfoForAdmin(pagination);

            model.addAttribute("ozTtAdGlDto", ozTtAdGlDto);
            model.addAttribute("pageInfo", pageInfo);
            return "OZ_TT_AD_GL";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

    /**
     * 商品管理一览分页选择画面
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/pageSearch")
    public String init(Model model, HttpServletRequest request, HttpSession session, String pageNo) {
        try {
            OzTtAdGlDto ozTtAdGlDto = (OzTtAdGlDto) session.getAttribute("OzTtAdGlDto");
            Pagination pagination = new Pagination(Integer.valueOf(pageNo));
            Map<Object, Object> params = new HashMap<Object, Object>();
            params.put("goodsName", ozTtAdGlDto.getGoodsName());
            params.put("isHotSale", ozTtAdGlDto.getIsHotSale());
            params.put("isNewSale", ozTtAdGlDto.getIsNewSale());
            params.put("goodsClass", ozTtAdGlDto.getGoodsClass());
            pagination.setParams(params);
            PagingResult<OzTtAdGlListDto> pageInfo = goodsService.getAllGoodsInfoForAdmin(pagination);

            model.addAttribute("ozTtAdGlDto", ozTtAdGlDto);
            model.addAttribute("pageInfo", pageInfo);
            return "OZ_TT_AD_GL";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
}
