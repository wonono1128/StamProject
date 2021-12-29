package kr.stam.homepage.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.stam.homepage.dto.ProductDto;
@Repository
@Mapper
public interface ProductDao {
	public Integer nextNum();
	public ArrayList list(String menuContents);
	public ProductDto content(int productCode);
	public void insert(ProductDto pdto);
	public void delete(ProductDto pdto);
	public Integer listCount(String menuContents);
}
