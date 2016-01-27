package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TNoOrderDao;
import com.org.oztt.entity.TNoOrder;

@Repository
public class TNoOrderDaoImpl extends BaseDao implements TNoOrderDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TNoOrder record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TNoOrder record) {
        return insert("com.org.oztt.dao.TNoOrderDao.insertSelective", record);
    }

    @Override
    public TNoOrder selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TNoOrder record) {
        return update("com.org.oztt.dao.TNoOrderDao.updateByPrimaryKeySelective", record);
    }

    @Override
    public int updateByPrimaryKey(TNoOrder record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TNoOrder getMaxOrderNo() {
        return selectOne("com.org.oztt.dao.TNoOrderDao.selectMaxOrderNo", null);
    }

}
