package com.org.oztt.service;

import com.org.oztt.entity.TAdminBasicInfo;
import com.org.oztt.entity.TAdminLoginHis;
import com.org.oztt.entity.TAdminLoginInfo;

/**
 * Admin登录注册调用的服务
 * 
 * @author linliuan
 */
public interface AdminService {

    // 检测用户，密码是否正确
    public TAdminLoginInfo userLogin(String loginId, String password) throws Exception;

    // 插入登录历史记录
    public boolean insertLoginHisAndUpdateStatus(TAdminLoginHis tAdminLoginHis) throws Exception;

    // 用户登出时更新登出记录
    public boolean loginOut(String userId) throws Exception;

    // 用户注册用
    //public String insertRegister(OzTtAdLgDto ozTtAdLgDto) throws Exception;

    // 取得用户
    public TAdminLoginInfo selectByAdminNo(String adminNo) throws Exception;

    // 更新密码
    //public boolean updatePassword(OzTtTpFpDto ozTtTpFpDto) throws Exception;
    
    // 更新用户登陆信息表
    //public boolean updateTAdminLoginInfo(TAdminLoginInfo tAdminLoginInfo) throws Exception;
    
    // 取得用户
    public TAdminBasicInfo selectBaseInfoByAdminNo(String adminNo) throws Exception;
    
    // 更新用户基本信息
    //public int updateTAdminBasicInfo(TAdminBasicInfo tAdminBasicInfo) throws Exception;

}
