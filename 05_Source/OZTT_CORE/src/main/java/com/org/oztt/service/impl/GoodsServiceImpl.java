package com.org.oztt.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.oztt.base.page.Pagination;
import com.org.oztt.base.page.PagingResult;
import com.org.oztt.dao.TGoodsClassficationDao;
import com.org.oztt.dao.TGoodsDao;
import com.org.oztt.entity.TGoods;
import com.org.oztt.entity.TGoodsClassfication;
import com.org.oztt.service.BaseService;
import com.org.oztt.service.GoodsService;

@Service
public class GoodsServiceImpl extends BaseService implements GoodsService {

    @Resource
    private TGoodsDao tGoodsDao;
    
    @Resource
    private TGoodsClassficationDao tGoodsClassficationDao;

    public TGoods getGoodsById(String goodsId) throws Exception {
        return tGoodsDao.selectByGoodsId(goodsId);
    }

    public List<TGoods> getGoodsByParam(TGoods tGoods) throws Exception {
        return tGoodsDao.selectByParams(tGoods);
    }

    public List<TGoods> getFirstThreeNewArravail() throws Exception {
        return tGoodsDao.getFirstThreeNewArravail();
    }

    public List<TGoods> getAllNewArravail() throws Exception {
        return tGoodsDao.getAllNewArravail();
    }

    public List<TGoods> getGoodsListForMain(Map<String, String> map) throws Exception {
        return tGoodsDao.getGoodsListForMain(map);
    }

    public TGoodsClassfication getGoodsClassficationByClassId(String classId) throws Exception {
        return tGoodsClassficationDao.getGoodsClassficationByClassId(classId);
    }

    public PagingResult<TGoods> getGoodsByParamForPage(Pagination pagination) throws Exception {
        return tGoodsDao.getGoodsByParamForPage(pagination);
    }

}
