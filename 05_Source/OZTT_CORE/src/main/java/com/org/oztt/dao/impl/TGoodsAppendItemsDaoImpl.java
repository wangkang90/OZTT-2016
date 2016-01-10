package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TGoodsAppendItemsDao;
import com.org.oztt.entity.TGoodsAppendItems;

@Repository
public class TGoodsAppendItemsDaoImpl extends BaseDao implements TGoodsAppendItemsDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TGoodsAppendItems record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TGoodsAppendItems record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TGoodsAppendItems selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TGoodsAppendItems record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TGoodsAppendItems record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TGoodsAppendItems selectByParams(TGoodsAppendItems record) {
        return selectOne("com.org.oztt.dao.TGoodsAppendItemsDao.selectByParams", record);
    }

}
