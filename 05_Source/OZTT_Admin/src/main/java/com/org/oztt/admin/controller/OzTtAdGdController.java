package com.org.oztt.admin.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.contants.CommonConstants;
import com.org.oztt.entity.TGoods;
import com.org.oztt.formDto.OzTtAdGdDto;
import com.org.oztt.service.GoodsService;

/**
 * 商品详细画面
 * 
 * @author linliuan
 */
@Controller
@RequestMapping("/OZ_TT_AD_GD")
public class OzTtAdGdController extends BaseController {

    @Resource
    private GoodsService goodsService;

    /**
     * 商品详细画面
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/init")
    public String init(Model model, HttpServletRequest request, HttpSession session, String goodsId, String pageNo) {
        try {
            if (StringUtils.isEmpty(goodsId) || StringUtils.isEmpty(pageNo)) {
                model.addAttribute("ozTtAdGdDto", new OzTtAdGdDto());
            }
            else {
                TGoods tGoods = goodsService.getGoodsById(goodsId);
                OzTtAdGdDto ozTtAdGdDto = new OzTtAdGdDto();
                ozTtAdGdDto.setNo(tGoods.getNo());
                ozTtAdGdDto.setGoodsId(tGoods.getGoodsid());
                ozTtAdGdDto.setClassId(tGoods.getClassid());
                ozTtAdGdDto.setGoodsBrand(tGoods.getGoodsbrand());
                ozTtAdGdDto.setGoodsName(tGoods.getGoodsname());
                ozTtAdGdDto.setGoodsDesc(tGoods.getGoodsdesc());
                ozTtAdGdDto.setGoodsComments(tGoods.getGoodscomments());
                ozTtAdGdDto.setGoodsThumbnail(tGoods.getGoodsthumbnail());
                ozTtAdGdDto.setGoodsSmallPic(tGoods.getGoodssmallpic());
                ozTtAdGdDto.setGoodsNormalPic(tGoods.getGoodsnormalpic());
                ozTtAdGdDto.setOnSaleFlg(tGoods.getOnsaleflg());
                ozTtAdGdDto.setHotSaleFlg(tGoods.getHotsaleflg());
                ozTtAdGdDto.setNewSaleFlg(tGoods.getNewsaleflg());
                ozTtAdGdDto.setCostPrice(tGoods.getCostprice().toString());
                ozTtAdGdDto.setSortOrder(tGoods.getSortorder().toString());
                ozTtAdGdDto.setPageNo(Integer.valueOf(pageNo));
                model.addAttribute("ozTtAdGdDto", ozTtAdGdDto);
            }
            return "OZ_TT_AD_GD";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

}
