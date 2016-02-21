package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TNoGroupDao;
import com.org.oztt.entity.TNoGroup;

@Repository
public class TNoGroupDaoImpl extends BaseDao implements TNoGroupDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TNoGroup record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TNoGroup record) {
        return insert("com.org.oztt.dao.TNoGroupDao.insertSelective", record);
    }

    @Override
    public TNoGroup selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TNoGroup record) {
        return update("com.org.oztt.dao.TNoGroupDao.updateByPrimaryKeySelective", record);
    }

    @Override
    public int updateByPrimaryKey(TNoGroup record) {
        return 0;
    }

    @Override
    public TNoGroup getMaxGroupNo() {
        return selectOne("com.org.oztt.dao.TNoGroupDao.getMaxGroupNo", null);
    }

}
