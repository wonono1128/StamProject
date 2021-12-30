package kr.stam.homepage.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductLogDto {
	private int pLogCode;
	private String managerId;
	private int productCode;
	private String managerName;
	private String pLogType;
	private String pLogTime;
}
