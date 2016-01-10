package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TGoodsPriceDao;
import com.org.oztt.entity.TGoodsPrice;

@Repository
public class TGoodsPriceDaoImpl extends BaseDao implements TGoodsPriceDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TGoodsPrice record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TGoodsPrice record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TGoodsPrice selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TGoodsPrice record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TGoodsPrice record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TGoodsPrice selectByParams(TGoodsPrice record) {
        return selectOne("com.org.oztt.dao.TGoodsPriceDao.selectByParams", record);
    }

}
