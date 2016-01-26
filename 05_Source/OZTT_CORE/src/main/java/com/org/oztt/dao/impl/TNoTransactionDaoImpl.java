package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TNoTransactionDao;
import com.org.oztt.entity.TNoTransaction;

@Repository
public class TNoTransactionDaoImpl extends BaseDao implements TNoTransactionDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TNoTransaction record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TNoTransaction record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TNoTransaction selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TNoTransaction record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TNoTransaction record) {
        // TODO Auto-generated method stub
        return 0;
    }

}
