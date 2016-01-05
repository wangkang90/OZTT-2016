package com.org.oztt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.oztt.dao.TGoodsDao;
import com.org.oztt.entity.TGoods;
import com.org.oztt.service.BaseService;
import com.org.oztt.service.GoodsService;

@Service
public class GoodsServiceImpl extends BaseService implements GoodsService {

	@Resource
	private TGoodsDao tGoodsDao;
	
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

}
