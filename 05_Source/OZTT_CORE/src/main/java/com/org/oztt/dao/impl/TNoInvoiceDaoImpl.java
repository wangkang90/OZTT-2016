package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TNoInvoiceDao;
import com.org.oztt.entity.TNoInvoice;

@Repository
public class TNoInvoiceDaoImpl extends BaseDao implements TNoInvoiceDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TNoInvoice record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TNoInvoice record) {
        return insert("com.org.oztt.dao.TNoInvoiceDao.insertSelective", record);
    }

    @Override
    public TNoInvoice selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TNoInvoice record) {
        return update("com.org.oztt.dao.TNoInvoiceDao.updateByPrimaryKeySelective", record);
    }

    @Override
    public int updateByPrimaryKey(TNoInvoice record) {
        // TODO Auto-generated method stub
        return 0;
    }
    
    @Override
    public TNoInvoice getMaxInvoiceNo() {
        return selectOne("com.org.oztt.dao.TNoInvoiceDao.getMaxInvoiceNo", null);
    }

}
