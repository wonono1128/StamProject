package kr.stam.homepage.dto;

import lombok.Data;

@Data
public class DepthDto {

	int menuCode,menuState;
	String menuParents,menuContents;
	
}
