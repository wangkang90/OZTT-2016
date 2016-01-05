package com.org.oztt.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.org.oztt.base.dao.BaseDao;
import com.org.oztt.dao.TSysCodeDao;
import com.org.oztt.entity.TSysCode;

@Repository
public class TSysCodeDaoImpl extends BaseDao implements TSysCodeDao {

	public int deleteByPrimaryKey(Long no) {
		
		return 0;
	}

	public int insert(TSysCode record) {
		
		return 0;
	}

	public int insertSelective(TSysCode record) {
		
		return 0;
	}

	public TSysCode selectByPrimaryKey(Long no) {
		
		return null;
	}

	public int updateByPrimaryKeySelective(TSysCode record) {
		
		return 0;
	}

	public int updateByPrimaryKey(TSysCode record) {
		
		return 0;
	}

	public List<TSysCode> selectByCodeId(String codeId) {
		
		return select("selectByCodeId", codeId);
	}

	public TSysCode selectByCodeIdADetailId(TSysCode record) {
		
		return selectOne("selectByCodeIdADetailId", record);
	}

}
