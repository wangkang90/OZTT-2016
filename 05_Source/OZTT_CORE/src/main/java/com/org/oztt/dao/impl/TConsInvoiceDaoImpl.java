package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TConsInvoiceDao;
import com.org.oztt.entity.TConsInvoice;

@Repository
public class TConsInvoiceDaoImpl extends BaseDao implements TConsInvoiceDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(TConsInvoice record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TConsInvoice record) {
        return insert("com.org.oztt.dao.TConsInvoiceDao.insertSelective", record);
    }

    @Override
    public TConsInvoice selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TConsInvoice record) {
        return update("com.org.oztt.dao.TConsInvoiceDao.updateByPrimaryKeySelective", record);
    }

    @Override
    public int updateByPrimaryKey(TConsInvoice record) {
        // TODO Auto-generated method stub
        return 0;
    }

}
