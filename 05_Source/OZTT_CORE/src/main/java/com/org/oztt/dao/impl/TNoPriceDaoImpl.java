package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TNoPriceDao;
import com.org.oztt.entity.TNoPrice;

@Repository
public class TNoPriceDaoImpl extends BaseDao implements TNoPriceDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TNoPrice record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TNoPrice record) {
        return insert("com.org.oztt.dao.TNoPriceDao.insertSelective", record);
    }

    @Override
    public TNoPrice selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TNoPrice record) {
        return update("com.org.oztt.dao.TNoPriceDao.updateByPrimaryKeySelective", record);
    }

    @Override
    public int updateByPrimaryKey(TNoPrice record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TNoPrice getMaxPriceNo() {
        return selectOne("com.org.oztt.dao.TNoPriceDao.getMaxPriceNo", null);
    }

}
