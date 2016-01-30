package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TConsTransactionDao;
import com.org.oztt.entity.TConsTransaction;

@Repository
public class TConsTransactionDaoImpl extends BaseDao implements TConsTransactionDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TConsTransaction record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TConsTransaction record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TConsTransaction selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TConsTransaction record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TConsTransaction record) {
        // TODO Auto-generated method stub
        return 0;
    }

}
