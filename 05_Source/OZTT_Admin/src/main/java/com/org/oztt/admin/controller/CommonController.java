package com.org.oztt.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.oztt.formDto.GoodItemDto;
import com.org.oztt.service.GoodsService;

/**
 * 定义一些共同的控制器，实现共同的操作
 * @author linliuan
 *
 */
@Controller
@RequestMapping("/COMMON")
public class CommonController extends BaseController {

    @Resource
    private GoodsService goodsService;
    
    /**
     * 得到产品信息
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/getGoodsItem")
    public Map<String, Object> getCurrentItem(HttpServletRequest request, HttpSession session, @RequestParam String goodsId) {
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
    
}
