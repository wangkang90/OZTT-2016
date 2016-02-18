package com.org.oztt.admin.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.oztt.contants.CommonConstants;
import com.org.oztt.entity.TGoodsClassfication;
import com.org.oztt.formDto.OzTtAdClDto;
import com.org.oztt.service.GoodsService;

/**
 * 分类明细
 * 
 * @author linliuan
 */
@Controller
@RequestMapping("/OZ_TT_AD_CD")
public class OzTtAdCdController extends BaseController {

    @Resource
    private GoodsService goodsService;

    /**
     * 分类明细
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/detail")
    public String init(Model model, HttpServletRequest request, HttpSession session, String classNo) {
        try {
            OzTtAdClDto dto = new OzTtAdClDto();
            if (StringUtils.isEmpty(classNo)) {
                // 新增
                dto.setOpenFlg(CommonConstants.NO_OPEN_VALUE);
                model.addAttribute("itemDto", dto);
                model.addAttribute("classficationList",
                        goodsService.getChildrenClassfication(CommonConstants.BELONG_FATHER_CLASS));

            }
            else {
                TGoodsClassfication classfication = goodsService.getClassficationByNo(Long.valueOf(classNo));
                dto.setNo(classNo);
                dto.setClassId(classfication.getClassid());
                dto.setClassName(classfication.getClassname());
                dto.setFatherClassId(classfication.getFatherclassid());
                dto.setOpenFlg(classfication.getOpenflg());
                dto.setSortOrder(classfication.getSortorder().toString());
                model.addAttribute("itemDto", dto);
                model.addAttribute("classficationList",
                        goodsService.getNotChildrenClassfication(classfication.getClassid()));
            }
            return "OZ_TT_AD_CD";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }

    /**
     * 分类信息保存方法
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/save")
    public String init(Model model, HttpServletRequest request, HttpSession session, @ModelAttribute OzTtAdClDto itemDto) {
        try {
            TGoodsClassfication tGoodsClassfication = new TGoodsClassfication();
            tGoodsClassfication.setClassid(itemDto.getClassId());
            tGoodsClassfication.setClassname(itemDto.getClassName());
            tGoodsClassfication.setFatherclassid(itemDto.getFatherClassId());

            tGoodsClassfication.setOpenflg(itemDto.getOpenFlg());
            tGoodsClassfication.setSortorder(Integer.valueOf(itemDto.getSortOrder()));
            if (StringUtils.isEmpty(itemDto.getNo())) {
                // 新增的情况
                tGoodsClassfication.setAddtimestamp(new Date());
                tGoodsClassfication.setAdduserkey(CommonConstants.ADMIN_USERKEY);
                tGoodsClassfication.setClassid(goodsService.getMaxClassNo(itemDto.getFatherClassId()));
                if (StringUtils.isEmpty(tGoodsClassfication.getFatherclassid())) {
                    tGoodsClassfication.setFatherclassid(CommonConstants.BELONG_FATHER_CLASS);
                }
                goodsService.saveClassFication(tGoodsClassfication);
            }
            else {
                // 更新的情况
                tGoodsClassfication.setNo(Long.valueOf(itemDto.getNo()));
                tGoodsClassfication.setUpdtimestamp(new Date());
                tGoodsClassfication.setUpdpgmid("OZ_TT_AD_CD");
                tGoodsClassfication.setUpduserkey(CommonConstants.ADMIN_USERKEY);
                goodsService.updateClassFication(tGoodsClassfication);
            }
            return "redirect:/OZ_TT_AD_CL/init";
        }
        catch (Exception e) {
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
}
