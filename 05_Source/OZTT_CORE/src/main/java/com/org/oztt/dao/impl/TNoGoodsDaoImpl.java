package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TNoGoodsDao;
import com.org.oztt.entity.TNoGoods;

@Repository
public class TNoGoodsDaoImpl extends BaseDao implements TNoGoodsDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TNoGoods record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TNoGoods record) {
        return insert("com.org.oztt.dao.TNoGoodsDao.insertSelective", record);
    }

    @Override
    public TNoGoods selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TNoGoods record) {
        return update("com.org.oztt.dao.TNoGoodsDao.updateByPrimaryKeySelective", record);
    }

    @Override
    public int updateByPrimaryKey(TNoGoods record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TNoGoods getMaxGoodsNo() {
        return selectOne("com.org.oztt.dao.TNoGoodsDao.getMaxGoodsNo", null);
    }

}
