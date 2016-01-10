package com.org.oztt.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TGoodsPropertyDao;
import com.org.oztt.entity.TGoodsProperty;

@Repository
public class TGoodsPropertyDaoImpl extends BaseDao implements TGoodsPropertyDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TGoodsProperty record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TGoodsProperty record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TGoodsProperty selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TGoodsProperty record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TGoodsProperty record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public List<TGoodsProperty> selectByParams(TGoodsProperty record) {
        return select("com.org.oztt.dao.TGoodsPropertyDao.selectByParams", record);
    }

}
