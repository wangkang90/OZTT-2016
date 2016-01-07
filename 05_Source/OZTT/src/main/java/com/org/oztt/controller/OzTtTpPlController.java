package com.org.oztt.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.util.CollectionUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.oztt.base.common.MyCategroy;
import com.org.oztt.base.page.Pagination;
import com.org.oztt.base.page.PagingResult;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.entity.TGoods;
import com.org.oztt.entity.TGoodsClassfication;
import com.org.oztt.service.CustomerService;
import com.org.oztt.service.GoodsService;

@Controller
@RequestMapping("/OZ_TT_TP_PL")
public class OzTtTpPlController extends BaseController {

    @Resource
    private CustomerService customerService;

    @Resource
    private GoodsService    goodsService;

    /**
     * 商品一览画面
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "init", method = RequestMethod.GET)
    public String init(Model model, String classId, String page, String listCount) {
        try {
            // 获取目录
            List<MyCategroy> myCategroyList = super.commonService.getMyCategroy();
            model.addAttribute("menucategory", myCategroyList);

            String imgUrl = super.getApplicationMessage("saveImgUrl");

            // 获取新货前三个
            List<TGoods> newArrivalList = goodsService.getFirstThreeNewArravail();

            if (!CollectionUtils.isEmpty(newArrivalList)) {
                for (TGoods goods : newArrivalList) {
                    goods.setGoodsnormalpic(imgUrl + goods.getGoodsnormalpic());
                }
            }

            // 取得热卖的产品
            TGoods tGoodsParam = new TGoods();
            tGoodsParam.setDeleteflg(CommonConstants.IS_NOT_DELETE);
            tGoodsParam.setOnsaleflg(CommonConstants.IS_ON_SALE);
            tGoodsParam.setHotsaleflg(CommonConstants.IS_HOT_SALE);
            List<TGoods> hotSellerList = goodsService.getGoodsByParam(tGoodsParam);
            if (!CollectionUtils.isEmpty(hotSellerList)) {
                for (TGoods goods : hotSellerList) {
                    goods.setGoodsnormalpic(imgUrl + goods.getGoodsnormalpic());
                }
            }
            // 取出
            String className = "";
            if (classId != null) {
                TGoodsClassfication tGoodsClassfication = goodsService.getGoodsClassficationByClassId(classId);
                className = tGoodsClassfication.getClassname();
            }
            
            // 分页获取商品
            // 获取明细分类的数据
            Pagination pagination = null;
            if (page == null || listCount == null) {
                pagination = new Pagination(1, CommonConstants.PRODUCT_INIT_COUNT);
                page = "1";
                listCount = String.valueOf(CommonConstants.PRODUCT_INIT_COUNT);
            } else {
                pagination = new Pagination(Integer.parseInt(page), Integer.parseInt(listCount));
            }
            Map<Object, Object> mapParam = new HashMap<Object, Object>();
            mapParam.put("classID", classId);
            pagination.setParams(mapParam);
            
            PagingResult<TGoods> pageInfo = goodsService.getGoodsByParamForPage(pagination);
            
            if (!CollectionUtils.isEmpty(pageInfo.getResultList())) {
                for (TGoods goods : pageInfo.getResultList()) {
                    goods.setGoodsnormalpic(imgUrl + goods.getGoodsnormalpic());
                }
            }

            // 热卖的商品
            model.addAttribute("hotSellerList", hotSellerList);
            model.addAttribute("arrlist", newArrivalList);
            model.addAttribute("tgoodList", pageInfo.getResultList());
            model.addAttribute("className", className);

            return "/OZ_TT_TP_PL";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

}
