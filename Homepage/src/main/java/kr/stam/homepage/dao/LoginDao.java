package kr.stam.homepage.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.stam.homepage.dto.LogDto;
import kr.stam.homepage.dto.LoginDto;

@Repository
@Mapper
public interface LoginDao {
	public String getList(String managerId, String managerPw);

	public void insertPsswd(LoginDto mdto);

	public void addLog(LogDto ldto);

	public String getName();

}
