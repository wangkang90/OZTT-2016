package com.org.oztt.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.org.oztt.contants.CommonConstants;
import com.org.oztt.formDto.GoodItemDto;
import com.org.oztt.service.CommonService;
import com.org.oztt.service.GoodsService;

/**
 * 定义一些共同的控制器，实现共同的操作
 * 
 * @author linliuan
 */
@Controller
@RequestMapping("/COMMON")
public class CommonController extends BaseController {

    @Resource
    private GoodsService goodsService;
    
    @Resource
    private CommonService commonService;

    /**
     * 得到产品信息
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/getGoodsItem")
    public Map<String, Object> getCurrentItem(HttpServletRequest request, HttpSession session,
            @RequestParam String goodsId) {
        Map<String, Object> mapReturn = new HashMap<String, Object>();
        try {

            GoodItemDto goodItemDto = goodsService.getGoodAllItemDto(goodsId);

            // 后台维护的时候提示让以逗号隔开
            mapReturn.put("goodItemDto", goodItemDto);
            mapReturn.put("isException", false);
            return mapReturn;
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            mapReturn.put("isException", true);
            return null;
        }
    }

    /**
     * 加入购物车
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/addConsCart")
    @ResponseBody
    public Map<String, Object> addConsCard(HttpServletRequest request, HttpServletResponse response,
            HttpSession session, @RequestBody List<Map<String, String>> list) {
        Map<String, Object> mapReturn = new HashMap<String, Object>();
        try {
            // 加入购物车操作，判断所有的属性是不是相同，相同在添加
            String customerNo = (String) session.getAttribute(CommonConstants.SESSION_CUSTOMERNO);
            if (customerNo == null) {
                return mapReturn;
            }
            goodsService.addContCart(customerNo, list);

            // 后台维护的时候提示让以逗号隔开
            mapReturn.put("isException", false);
            return mapReturn;
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            mapReturn.put("isException", true);
            return null;
        }

    }

    /**
     * 删除购物车
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/deleteConsCart")
    @ResponseBody
    public Map<String, Object> deleteConsCard(HttpServletRequest request, HttpServletResponse response,
            HttpSession session, @RequestBody List<Map<String, String>> list) {
        Map<String, Object> mapReturn = new HashMap<String, Object>();
        try {
            // 加入购物车操作，判断所有的属性是不是相同，相同在添加
            String customerNo = (String) session.getAttribute(CommonConstants.SESSION_CUSTOMERNO);
            if (customerNo == null) {
                return mapReturn;
            }
            goodsService.deleteContCart(customerNo, list);

            // 后台维护的时候提示让以逗号隔开
            mapReturn.put("isException", false);
            return mapReturn;
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            mapReturn.put("isException", true);
            return null;
        }
    }

    /**
     * 清空购物车
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/emptyConsCard", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> emptyConsCard(HttpServletRequest request, HttpServletResponse response,
            HttpSession session) {
        Map<String, Object> mapReturn = new HashMap<String, Object>();
        try {
            // 加入购物车操作，判断所有的属性是不是相同，相同在添加
            String customerNo = (String) session.getAttribute(CommonConstants.SESSION_CUSTOMERNO);
            if (customerNo == null) {
                return mapReturn;
            }
            goodsService.deleteAllContCart(customerNo);

            // 后台维护的时候提示让以逗号隔开
            mapReturn.put("isException", false);
            return mapReturn;
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            mapReturn.put("isException", true);
            return null;
        }
    }

    /**
     * 获取验证码
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/getVerifyCode", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> getVerifyCode(HttpServletRequest request, HttpServletResponse response,
            HttpSession session, @RequestParam String phoneNumber) {
        Map<String, Object> mapReturn = new HashMap<String, Object>();
        try {
            phoneNumber = java.net.URLDecoder.decode(phoneNumber, "UTF-8");
            commonService.getPhoneVerifyCode(phoneNumber);
            mapReturn.put("isException", false);
            return mapReturn;
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            mapReturn.put("isException", true);
            return null;
        }
    }
    
    

}
