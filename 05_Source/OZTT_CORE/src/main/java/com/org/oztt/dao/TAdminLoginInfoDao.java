package com.org.oztt.dao;

import java.util.Map;

import com.org.oztt.entity.TAdminLoginInfo;

public interface TAdminLoginInfoDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TAdminLoginInfo record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TAdminLoginInfo record);

    /**
     * 根据主键查询记录
     */
    TAdminLoginInfo selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TAdminLoginInfo record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TAdminLoginInfo record);
    
    /**
     * 检查用户输入的账户名和密码是否正确
     * @param username
     * @param password
     * @return
     */
    TAdminLoginInfo userLogin(Map<String, String> map);
    
    /**
     * 通过客户号取得用户号
     * @param email
     * @return
     */
    TAdminLoginInfo selectByAdminNo(String adminNo);
}