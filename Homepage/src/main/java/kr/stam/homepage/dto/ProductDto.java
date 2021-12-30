package kr.stam.homepage.dto;

import lombok.Data;

@Data
public class ProductDto {
	private int productCode,productState,listCount;
	private String companyName, productName, productContents, brandExplain,brandContents,companyLogo, menuContents, productImg;
	

	
}
