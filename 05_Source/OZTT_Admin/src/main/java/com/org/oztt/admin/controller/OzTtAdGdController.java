package com.org.oztt.admin.controller;

import java.math.BigDecimal;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
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
            model.addAttribute("classficationList",
                    goodsService.getSecondClassfication(CommonConstants.BELONG_FATHER_CLASS));
            return "OZ_TT_AD_GD";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

    /**
     * 商品保存
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/save")
    public String save(Model model, HttpServletRequest request, HttpSession session,
            @ModelAttribute OzTtAdGdDto ozTtAdGdDto) {
        try {
            TGoods tGoods = new TGoods();
            tGoods.setNo(ozTtAdGdDto.getNo());
            tGoods.setGoodsid(ozTtAdGdDto.getGoodsId());
            tGoods.setClassid(ozTtAdGdDto.getClassId());
            tGoods.setGoodsbrand(ozTtAdGdDto.getGoodsBrand());
            tGoods.setGoodsname(ozTtAdGdDto.getGoodsName());
            tGoods.setGoodsdesc(ozTtAdGdDto.getGoodsDesc());
            tGoods.setGoodscomments(ozTtAdGdDto.getGoodsComments());
            tGoods.setGoodsthumbnail(ozTtAdGdDto.getGoodsThumbnail());
            tGoods.setGoodssmallpic(ozTtAdGdDto.getGoodsSmallPic());
            tGoods.setGoodsnormalpic(ozTtAdGdDto.getGoodsNormalPic());
            tGoods.setOnsaleflg(ozTtAdGdDto.getOnSaleFlg());
            tGoods.setHotsaleflg(ozTtAdGdDto.getHotSaleFlg());
            tGoods.setNewsaleflg(ozTtAdGdDto.getNewSaleFlg());
            tGoods.setCostprice(new BigDecimal(ozTtAdGdDto.getCostPrice()));
            tGoods.setSortorder(Integer.valueOf(ozTtAdGdDto.getSortOrder()));
            if (tGoods.getNo() == null) {
                goodsService.saveGoodsForAdmin(tGoods);
            } else {
                goodsService.updateGoodsForAdmin(tGoods);
            }

            if (StringUtils.isEmpty(ozTtAdGdDto.getNo())) {
                return "redirect:/OZ_TT_AD_GL/init";
            }
            else {
                return "redirect:/OZ_TT_AD_GL/pageSearch?pageNo=" + ozTtAdGdDto.getPageNo();
            }

        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

}
