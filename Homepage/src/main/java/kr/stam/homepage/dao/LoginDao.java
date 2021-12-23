package kr.stam.homepage.dao;

import java.util.List;

import kr.stam.homepage.dto.LogDto;
import kr.stam.homepage.dto.LoginDto;

public interface LoginDao {
	 public List<LoginDto> getList();
	 public void insertPsswd(LoginDto mdto);
	 public void addLog(LogDto ldto);
	 
}
