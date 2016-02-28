package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TAdminBasicInfoDao;
import com.org.oztt.entity.TAdminBasicInfo;

@Repository
public class TAdminBasicInfoDaoImpl extends BaseDao implements TAdminBasicInfoDao {

    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    public int insert(TAdminBasicInfo record) {
        return insert("insert", record);
    }

    public int insertSelective(TAdminBasicInfo record) {
        // TODO Auto-generated method stub
        return 0;
    }

    public TAdminBasicInfo selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    public int updateByPrimaryKeySelective(TAdminBasicInfo record) {
        // TODO Auto-generated method stub
        return 0;
    }

    public int updateByPrimaryKey(TAdminBasicInfo record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TAdminBasicInfo selectBaseInfoByAdminNo(String adminNo) {
        return selectOne("com.org.oztt.dao.TAdminBasicInfoDao.selectBaseInfoByAdminNo", adminNo);
    }

}
