package kr.stam.homepage.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.stam.homepage.dto.NoticeLogDto;
@Repository
@Mapper
public interface NoticeLogDao {
	public void insert(NoticeLogDto nLDto);
}
