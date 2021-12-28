package kr.stam.homepage.dto;

import lombok.Data;

@Data
public class ProductDto {
	private int productCode,productState;
	private String companyName, productName, productContents, companyLogo, menuContents, productImg;
	
	
	
}
