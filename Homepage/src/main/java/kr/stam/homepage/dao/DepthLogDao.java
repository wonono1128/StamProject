package kr.stam.homepage.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.stam.homepage.dto.DepthLogDto;
@Repository
@Mapper
public interface DepthLogDao {
	public void insert(DepthLogDto dLDto);
}
