package com.org.oztt.formDto;

/**
 * 忘记密码画面以及密码修改确认画面
 * @author linliuan
 *
 */
public class OzTtTpFpDto {

	private String email;
	
	private String newPassword;
	
	private String confirmPasswrod;
	
	private String customerNo;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getConfirmPasswrod() {
		return confirmPasswrod;
	}

	public void setConfirmPasswrod(String confirmPasswrod) {
		this.confirmPasswrod = confirmPasswrod;
	}

	public String getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(String customerNo) {
		this.customerNo = customerNo;
	}

	
}
