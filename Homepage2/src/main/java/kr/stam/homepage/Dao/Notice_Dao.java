package kr.stam.homepage.Dao;

import java.util.ArrayList;

import kr.stam.homepage.Dto.Notice_Dto;

public interface Notice_Dao {
	public void insert(Notice_Dto ndto);
	public ArrayList nlist(String cla,String sword,int index);
	public Integer get_pagecnt(String cla,String sword);
}
