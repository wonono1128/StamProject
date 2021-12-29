package kr.stam.homepage.dto;

import lombok.Data;

@Data
public class DepthLogDto {

	int dLogCode,menuCode;
	String managerId,managerName,logType,logTime;
}
