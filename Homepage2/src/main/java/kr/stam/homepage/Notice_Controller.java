package kr.stam.homepage;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.stam.homepage.Dto.Notice_Dto;
import kr.stam.homepage.Service.Notice_Service;




@Controller
public class Notice_Controller {
	
	@Autowired
	private SqlSession sqlSession;
	private Notice_Service nsv;

	
	@RequestMapping("/notice")
	public String notice() {
		
		return "/notice";
	}
	@RequestMapping("/insert")
	public String insert() {
		
		return "/insert";
	}
	@RequestMapping("/insert_ok")
	public String insert_ok(HttpServletRequest request,Notice_Dto ndto,Model model) {
		System.out.println("첫동작");
		nsv = sqlSession.getMapper(Notice_Service.class);
		System.out.println("서비스 매퍼함");
		nsv.insert(ndto,request,model);
		System.out.println("인서트 동작완료");
		return "/notice";
	}
}
