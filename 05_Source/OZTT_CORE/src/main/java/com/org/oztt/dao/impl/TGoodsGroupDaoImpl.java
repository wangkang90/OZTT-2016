package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TGoodsGroupDao;
import com.org.oztt.entity.TGoodsGroup;

@Repository
public class TGoodsGroupDaoImpl extends BaseDao implements TGoodsGroupDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TGoodsGroup record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TGoodsGroup record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TGoodsGroup selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TGoodsGroup record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TGoodsGroup record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TGoodsGroup selectByParams(TGoodsGroup record) {
        return selectOne("com.org.oztt.dao.TGoodsGroupDao.selectByParams", record);
    }

    @Override
    public int updateCurrentQuantity(TGoodsGroup record) {
        return update("com.org.oztt.dao.TGoodsGroupDao.updateCurrentQuantity", record);
    }

}
