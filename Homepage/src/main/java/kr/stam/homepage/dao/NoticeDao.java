package kr.stam.homepage.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.stam.homepage.dto.NoticeDto;
@Repository
@Mapper
public interface NoticeDao {
	public void insert(NoticeDto ndto);
	public ArrayList nlist(String cla,String sword,int index);
	public Integer get_pagecnt(String cla,String sword);
	public Integer nextNum();
	public NoticeDto content(int noticeNum);
	public void delete(int noticeNum);
	public void update(NoticeDto ndto);
}
