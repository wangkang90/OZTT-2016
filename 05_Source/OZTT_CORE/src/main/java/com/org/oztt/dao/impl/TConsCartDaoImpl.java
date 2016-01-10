package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TConsCartDao;
import com.org.oztt.entity.TConsCart;

@Repository
public class TConsCartDaoImpl extends BaseDao implements TConsCartDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TConsCart record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TConsCart record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TConsCart selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TConsCart record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TConsCart record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TConsCart selectByParams(TConsCart record) {
        return selectOne("com.org.oztt.dao.TConsCartDao.selectByParams", record);
    }

    @Override
    public void deleteAllContCard(String customerNo) {
        update("com.org.oztt.dao.TConsCartDao.deleteAllContCard", customerNo);
    }

}
