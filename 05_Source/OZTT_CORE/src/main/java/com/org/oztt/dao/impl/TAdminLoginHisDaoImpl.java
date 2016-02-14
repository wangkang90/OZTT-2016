package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TAdminLoginHisDao;
import com.org.oztt.entity.TAdminLoginHis;

@Repository
public class TAdminLoginHisDaoImpl extends BaseDao implements TAdminLoginHisDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TAdminLoginHis record) {
        return insert("com.org.oztt.dao.TAdminLoginHisDao.insert", record);
    }

    @Override
    public int insertSelective(TAdminLoginHis record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TAdminLoginHis selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TAdminLoginHis record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TAdminLoginHis record) {
        // TODO Auto-generated method stub
        return 0;
    }

}
