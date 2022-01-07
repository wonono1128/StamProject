package kr.stam.homepage.dto;

import lombok.Data;

@Data
public class ProductDto {
	private int productCode,productState,listCount,menuCode;
	private String beforeContents,companyName, productName, productContents,brandContents,companyLogo, menuContents,productLogo, productImg;

	

	
}
