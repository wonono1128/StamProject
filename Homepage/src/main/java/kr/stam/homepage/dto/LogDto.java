package kr.stam.homepage.dto;

import java.sql.Date;

import lombok.Data;
@Data
public class LogDto {
	private int logCode;
	private int managerNum;
	private String managerId;
	private String managerPw;
	private String managerName;
	private Date loginDate;

	

}
