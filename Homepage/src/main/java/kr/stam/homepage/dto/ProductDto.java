package kr.stam.homepage.dto;

import lombok.Data;

@Data
public class ProductDto {
	private int productCode,productState,listCount;
	private String companyName, productName, productContents,brandContents,companyLogo, menuContents,productLogo, productImg;

	

	
}
