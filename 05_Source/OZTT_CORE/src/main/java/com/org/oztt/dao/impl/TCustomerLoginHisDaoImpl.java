package com.org.oztt.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TCustomerLoginHisDao;
import com.org.oztt.entity.TCustomerLoginHis;

@Repository
public class TCustomerLoginHisDaoImpl extends BaseDao implements
		TCustomerLoginHisDao {

	public int deleteByPrimaryKey(Long no) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(TCustomerLoginHis record) {
		return insert("com.org.oztt.dao.TCustomerLoginHisDao.insert", record);
	}

	public int insertSelective(TCustomerLoginHis record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public TCustomerLoginHis selectByPrimaryKey(Long no) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateByPrimaryKeySelective(TCustomerLoginHis record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKey(TCustomerLoginHis record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
