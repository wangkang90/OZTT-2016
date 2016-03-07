package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TNoAnnouncementDao;
import com.org.oztt.entity.TNoAnnouncement;

@Repository
public class TNoAnnouncementDaoImpl extends BaseDao implements TNoAnnouncementDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TNoAnnouncement record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TNoAnnouncement record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TNoAnnouncement selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TNoAnnouncement record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TNoAnnouncement record) {
        // TODO Auto-generated method stub
        return 0;
    }

}
