package kr.stam.homepage.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.stam.homepage.dto.DepthDto;
@Repository
@Mapper
public interface DepthDao {
	public void insert(DepthDto dDto);
	public Integer nextNum();
	public ArrayList Flist();
	public ArrayList list(String MenuParents);
	public void depth_delete(DepthDto dDto);
	public void update(DepthDto dDto);
	public DepthDto content(int menuCode);
}
