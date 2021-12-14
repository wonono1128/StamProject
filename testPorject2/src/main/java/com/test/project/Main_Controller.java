package com.test.project;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.project.Dao.Notice_Dao;
import com.test.project.Dto.Notice_Dto;




@Controller
public class Main_Controller {
	
	@Autowired
	private SqlSession sqlSession;


	@RequestMapping("/")
	public String main() {
		
		return "/main";
	}
	
	@RequestMapping("/insert")
	public String insert() {
		
		return "/insert";
	} 
	
	@RequestMapping("/insert_ok")
	public String insert_ok(HttpServletRequest request,Notice_Dto ndto,Model model) throws Exception {
		System.out.println("인서트");
		Notice_Dao ndao = sqlSession.getMapper(Notice_Dao.class);
		System.out.println("인서트2");
		String ntitle = request.getParameter("ntitle");
		System.out.println(ntitle);
		ndao.insert(ndto);
		System.out.println("인서트3");
		
		
		
		return "redirect:/";
	} 
	
	

	
}
