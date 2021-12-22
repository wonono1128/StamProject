package kr.stam.homepage.dto;

public class NoticeDto {
	int notice_num,manager_num;
	String notice_title,notice_contents,manager_name,notice_day;

	
	public int getNotice_num() {
		return notice_num;
	}
	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}
	public int getManager_num() {
		return manager_num;
	}
	public void setManager_num(int manager_num) {
		this.manager_num = manager_num;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_contents() {
		return notice_contents;
	}
	public void setNotice_contents(String notice_contents) {
		this.notice_contents = notice_contents;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getNotice_day() {
		return notice_day;
	}
	public void setNotice_day(String notice_day) {
		this.notice_day = notice_day;
	}
	

	
	
}
