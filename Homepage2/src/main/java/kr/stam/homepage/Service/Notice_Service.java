package kr.stam.homepage.Service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.stam.homepage.Dto.Notice_Dto;

public interface Notice_Service {
	public void insert(Notice_Dto ndto,HttpServletRequest request,Model model);
}
