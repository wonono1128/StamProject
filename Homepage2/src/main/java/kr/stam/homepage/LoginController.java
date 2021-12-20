package kr.stam.homepage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.stam.homepage.Dao.Member_Dao;

@Controller
public class LoginController {
	   @Autowired
	   private SqlSession sqlSession;
	   private Member_Dao md;
	   
	   @RequestMapping("login")
	   public String login(Model model) {
		  md = sqlSession.getMapper(Member_Dao.class);
	      model.addAttribute("member", md.getList());
	      return "/login";
	   }
	   
}
