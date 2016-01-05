package com.org.oztt.service;

import com.org.oztt.entity.TCustomerLoginHis;
import com.org.oztt.entity.TCustomerLoginInfo;
import com.org.oztt.formDto.OzTtTpFpDto;
import com.org.oztt.formDto.OzTtTpReDto;


/**
 * 用户登录注册调用的服务
 * @author linliuan
 *
 */
public interface CustomerService {

	// 检测用户，密码是否正确
	public TCustomerLoginInfo userLogin(String loginId,String password) throws Exception;
	
	// 插入登录历史记录
	public boolean insertLoginHisAndUpdateStatus(TCustomerLoginHis tCustomerLoginHis) throws Exception;
	
	// 用户登出时更新登出记录
	public boolean loginOut(String userId) throws Exception;
	
	// 用户注册用
	public boolean insertRegister(OzTtTpReDto ozTtTpReDto) throws Exception;
	
	// 取得最新的客户号
	public String getMaxCustomerNo() throws Exception;
	
	// 取得用户
	public TCustomerLoginInfo selectByEmail(String email) throws Exception;
	
	// 取得用户
	public TCustomerLoginInfo selectByCustomerNo(String customerNo) throws Exception;
	
	// 更新密码
	public boolean updatePassword(OzTtTpFpDto ozTtTpFpDto) throws Exception;
	
}
