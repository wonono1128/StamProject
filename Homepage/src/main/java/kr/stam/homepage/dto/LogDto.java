package kr.stam.homepage.dto;

import java.sql.Date;

public class LogDto {
	private int logCode;
	private int managerNum;
	private String managerId;
	private String managerPw;
	private String managerName;
	private Date loginDate;

	public int getLogCode() {
		return logCode;
	}

	public void setLogCode(int logCode) {
		this.logCode = logCode;
	}

	public int getManagerNum() {
		return managerNum;
	}

	public void setManagerNum(int managerNum) {
		this.managerNum = managerNum;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getManagerPw() {
		return managerPw;
	}

	public void setManagerPw(String managerPw) {
		this.managerPw = managerPw;
	}

	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public Date getLoginDate() {
		return loginDate;
	}

	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}

}
