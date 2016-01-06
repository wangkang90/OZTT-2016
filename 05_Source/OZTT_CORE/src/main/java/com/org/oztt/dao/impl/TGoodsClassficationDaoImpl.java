package com.org.oztt.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.dao.TGoodsClassficationDao;
import com.org.oztt.entity.TGoodsClassfication;

@Repository
public class TGoodsClassficationDaoImpl extends BaseDao implements TGoodsClassficationDao {

    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    public int insert(TGoodsClassfication record) {
        // TODO Auto-generated method stub
        return 0;
    }

    public int insertSelective(TGoodsClassfication record) {
        // TODO Auto-generated method stub
        return 0;
    }

    public TGoodsClassfication selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    public int updateByPrimaryKeySelective(TGoodsClassfication record) {
        // TODO Auto-generated method stub
        return 0;
    }

    public int updateByPrimaryKey(TGoodsClassfication record) {
        // TODO Auto-generated method stub
        return 0;
    }

    public List<TGoodsClassfication> getAllFatherkey() {
        return select("com.org.oztt.dao.TGoodsClassficationDao.getAllClassByParam", CommonConstants.BELONG_FATHER_CLASS);
    }

    public List<TGoodsClassfication> getChildrenKey(String fatherId) {
        return select("com.org.oztt.dao.TGoodsClassficationDao.getAllClassByParam", fatherId);
    }

    public TGoodsClassfication getGoodsClassficationByClassId(String classId) {
        return selectOne("com.org.oztt.dao.TGoodsClassficationDao.getGoodsClassficationByClassId", classId);
    }

}
