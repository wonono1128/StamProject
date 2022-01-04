package kr.stam.homepage.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductDto {
	private int productCode,productState,listCount;
	private String companyName, productName, productContents,brandContents,companyLogo, menuContents, productImg;
	private MultipartFile companyLogoData;

	
}
