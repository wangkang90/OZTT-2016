package com.org.oztt.admin.controller.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.util.CollectionUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.oztt.admin.controller.BaseController;
import com.org.oztt.base.common.MyCategroy;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.entity.TGoods;
import com.org.oztt.service.GoodsService;

@Controller
@RequestMapping("/main")
public class MainController extends BaseController {

    @Resource
    private GoodsService goodsService;

    /**
     * 首页显示
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "init", method = RequestMethod.GET)
    public String gotoMain(Model model) {
        try {
            // 获取目录
            List<MyCategroy> myCategroyList = super.commonService.getMyCategroy();

            String imgUrl = super.getApplicationMessage("saveImgUrl");

            // 获取新货
            List<TGoods> allGoodsList = goodsService.getAllNewArravail();

            if (!CollectionUtils.isEmpty(allGoodsList)) {
                for (TGoods goods : allGoodsList) {
                    goods.setGoodsthumbnail(imgUrl + goods.getGoodsid() + CommonConstants.PATH_SPLIT + goods.getGoodsthumbnail());
                }
            }

            // 获取明细分类的数据
            Map<String, String> mapParam = new HashMap<String, String>();
            mapParam.put(CommonConstants.LIMIT_PARAM, CommonConstants.MAIN_LIST_COUNT);
            List<TGoods> tgoodList = goodsService.getGoodsListForMain(mapParam);
            if (!CollectionUtils.isEmpty(tgoodList)) {
                for (TGoods goods : tgoodList) {
                    goods.setGoodsthumbnail(imgUrl + goods.getGoodsid() + CommonConstants.PATH_SPLIT + goods.getGoodsthumbnail());
                }
            }
            model.addAttribute("menucategory", myCategroyList);
            model.addAttribute("allGoodsList", allGoodsList);
            model.addAttribute("tgoodList", tgoodList);

            return "/main/main";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }

    }
    
    /**
     * 首页检索显示
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "searchGoods", method = RequestMethod.GET)
    public String searchGoods(Model model, @RequestParam String goodsNameParam) {
        try {
            goodsNameParam = java.net.URLDecoder.decode(goodsNameParam, "UTF-8");
            // 获取目录
            List<MyCategroy> myCategroyList = super.commonService.getMyCategroy();

            String imgUrl = super.getApplicationMessage("saveImgUrl");

            // 获取新货
            List<TGoods> newGoodsList = goodsService.getAllNewArravail();

            if (!CollectionUtils.isEmpty(newGoodsList)) {
                for (TGoods goods : newGoodsList) {
                    goods.setGoodsthumbnail(imgUrl + goods.getGoodsid() + CommonConstants.PATH_SPLIT + goods.getGoodsthumbnail());
                }
            }

            // 获取明细分类的数据
            Map<String, String> mapParam = new HashMap<String, String>();
            mapParam.put(CommonConstants.LIMIT_PARAM, CommonConstants.MAIN_LIST_COUNT);
            List<TGoods> tgoodList = goodsService.getGoodsBySearchParam(goodsNameParam);
            if (!CollectionUtils.isEmpty(tgoodList)) {
                for (TGoods goods : tgoodList) {
                    goods.setGoodsthumbnail(imgUrl + goods.getGoodsid() + CommonConstants.PATH_SPLIT + goods.getGoodsthumbnail());
                }
            }
            model.addAttribute("menucategory", myCategroyList);
            model.addAttribute("allGoodsList", newGoodsList);
            model.addAttribute("tgoodList", tgoodList);

            return "/main/main";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }

    }
}