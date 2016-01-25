package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TSysValidateMessageDao;
import com.org.oztt.entity.TSysValidateMessage;

@Repository
public class TSysValidateMessageDaoImpl extends BaseDao implements TSysValidateMessageDao {

    @Override
    public int deleteByPrimaryKey(Long id) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TSysValidateMessage record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TSysValidateMessage record) {
        return insert("com.org.oztt.dao.TSysValidateMessageDao.insertSelective", record);
    }

    @Override
    public TSysValidateMessage selectByPrimaryKey(Long id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TSysValidateMessage record) {
        return insert("com.org.oztt.dao.TSysValidateMessageDao.updateByPrimaryKeySelective", record);
    }

    @Override
    public int updateByPrimaryKey(TSysValidateMessage record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TSysValidateMessage getInfoByPhone(String telnumber) {
        return selectOne("com.org.oztt.dao.TSysValidateMessageDao.getInfoByPhone", telnumber);
    }

}
