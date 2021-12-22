package kr.stam.homepage.dto;

import java.sql.Date;

public class LogDto {
	private int log_code;
	private int manager_num;
	private String manager_id;
	private String manager_pw;
	private String manager_name;
	private Date login_date;
	public int getLog_code() {
		return log_code;
	}
	public void setLog_code(int log_code) {
		this.log_code = log_code;
	}
	public int getManager_num() {
		return manager_num;
	}
	public void setManager_num(int manager_num) {
		this.manager_num = manager_num;
	}
	public String getManager_id() {
		return manager_id;
	}
	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}
	public String getManager_pw() {
		return manager_pw;
	}
	public void setManager_pw(String manager_pw) {
		this.manager_pw = manager_pw;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public Date getLogin_date() {
		return login_date;
	}
	public void setLogin_date(Date login_date) {
		this.login_date = login_date;
	}
	
	
}
