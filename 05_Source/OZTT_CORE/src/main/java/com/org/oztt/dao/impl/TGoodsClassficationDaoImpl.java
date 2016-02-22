package com.org.oztt.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.dao.TGoodsClassficationDao;
import com.org.oztt.entity.TGoodsClassfication;
import com.org.oztt.formDto.OzTtAdClDto;

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
        return insert("com.org.oztt.dao.TGoodsClassficationDao.insertSelective", record);
    }

    public TGoodsClassfication selectByPrimaryKey(Long no) {
        return selectOne("com.org.oztt.dao.TGoodsClassficationDao.selectByPrimaryKey", no);
    }

    public int updateByPrimaryKeySelective(TGoodsClassfication record) {
        return update("com.org.oztt.dao.TGoodsClassficationDao.updateByPrimaryKeySelective", record);
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

    @Override
    public List<OzTtAdClDto> getAllClassficationForAdmin() {
        return select("com.org.oztt.dao.TGoodsClassficationDao.getAllClassficationForAdmin");
    }

    @Override
    public String getMaxClassNo(String fatherId) {
        Map<String,String> param = new HashMap<String, String>();
        param.put("fatherId", fatherId);
        return selectOne("com.org.oztt.dao.TGoodsClassficationDao.getMaxClassNo", param);
    }

    @Override
    public List<TGoodsClassfication> getSecondClassfication(String classId) {
        return select("com.org.oztt.dao.TGoodsClassficationDao.getSecondClassfication", classId);
    }

}
