package com.org.oztt.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TSuburbDeliverFeeDao;
import com.org.oztt.entity.TSuburbDeliverFee;

@Repository
public class TSuburbDeliverFeeDaoImpl extends BaseDao implements TSuburbDeliverFeeDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TSuburbDeliverFee record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TSuburbDeliverFee record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TSuburbDeliverFee selectByPrimaryKey(Long no) {
        return selectOne("com.org.oztt.dao.TSuburbDeliverFeeDao.selectByPrimaryKey", no);
    }

    @Override
    public int updateByPrimaryKeySelective(TSuburbDeliverFee record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TSuburbDeliverFee record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public List<TSuburbDeliverFee> getAllTSuburbDeliverFee() {
        return select("com.org.oztt.dao.TSuburbDeliverFeeDao.getAllTSuburbDeliverFee", null);
    }

}
