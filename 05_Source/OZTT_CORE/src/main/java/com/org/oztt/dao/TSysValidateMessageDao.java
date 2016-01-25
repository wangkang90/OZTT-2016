package com.org.oztt.dao;

import com.org.oztt.entity.TSysValidateMessage;

public interface TSysValidateMessageDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long id);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TSysValidateMessage record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TSysValidateMessage record);

    /**
     * 根据主键查询记录
     */
    TSysValidateMessage selectByPrimaryKey(Long id);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TSysValidateMessage record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TSysValidateMessage record);
    
    /**
     * 获取电话号码的验证码
     * @param telnumber
     * @return
     */
    TSysValidateMessage getInfoByPhone(String telnumber);
}