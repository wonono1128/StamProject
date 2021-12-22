package kr.stam.homepage.dao;

import java.util.List;

import kr.stam.homepage.dto.LogDto;
import kr.stam.homepage.dto.MemberDto;

public interface MemberDao {
	 public List<MemberDto> getList();
	 public void insertPsswd(MemberDto mdto);
	 public void addLog(LogDto ldto);
	 
}
