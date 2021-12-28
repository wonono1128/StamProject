package kr.stam.homepage.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
@Repository
@Mapper
public interface ProductDao {
	public Integer nextNum();
	public ArrayList list(String menuContents);
}
