package kr.stam.homepage.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.stam.homepage.dto.ProductLogDto;

@Repository
@Mapper
public interface ProductLogDao {
	public void insert(ProductLogDto pLDto);
}
