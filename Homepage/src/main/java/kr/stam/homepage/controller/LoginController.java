package kr.stam.homepage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.stam.homepage.UserSha256;
import kr.stam.homepage.dao.LoginDao;
import kr.stam.homepage.dto.LogDto;
import kr.stam.homepage.dto.LoginDto;


@Controller
public class LoginController {
	   @Autowired
	   private SqlSession sqlSession;
	   private LoginDao md;
	   
	   @RequestMapping("login")
	   public String login(Model model) {
		  md = sqlSession.getMapper(LoginDao.class);	
	      model.addAttribute("manager", md.getList());
	      return "login/login";
	   }
	   
	   @RequestMapping(value="loginChk" , method = RequestMethod.POST)
	   public ModelAndView loginChk(String managerId, LoginDto mdto, LogDto ldto, HttpServletRequest request, HttpSession session) {
		   ModelAndView mav = new ModelAndView();

			// DB 비밀번호 암호화 (sha256)
		   	String mPsswd = "";
		   	String mId = "";
		   	String mName = "";
		   	
		   	List<LoginDto> pwList = md.getList();
		   	
		   	for(int i=0; i<pwList.size(); ++i) {

		   		mPsswd = pwList.get(i).getManagerPw();
		   		mId = pwList.get(i).getManagerId();
		   		mName = pwList.get(i).getManagerName();
		   	}
		   	

		   	System.out.println("DB 아이디: " + mId);
		   	System.out.println("DB 비밀번호: " + mPsswd);
		   	System.out.println("DB 관리자이름: " + mName);
			
			// 입력한 비밀번호 암호화
			String encryPassword2 = UserSha256.encrypt(request.getParameter("managerPw"));
			request.setAttribute("encry",encryPassword2);
		   	System.out.println("입력한 아이디: " + managerId);
			System.out.println("입력한 비밀번호 : " + encryPassword2);
			
			// 로그인 성공 or 실패
		   	if(mId.equals(managerId) && mPsswd.equals(encryPassword2)) {
//		   		session.setAttribute("loginCheck", true);
//		   		session.setAttribute("managerId", mId);
		   		mav.setViewName("main");
				ldto.setManagerName(mName);
				session.setAttribute("level", 1);
				session.setAttribute("mId", mId);
				session.setAttribute("mName", mName);
				md.addLog(ldto);	
		   	}else {
		   		mav.setViewName("login/login");
		   		mav.addObject("message", "error");
		   	}
		   	
		   	
			// 암호화된 비밀번호 insert
//			mdto.setManager_name(mName);
//			md.insertPsswd(mdto);
		   	
		   	return mav;	   	
	   } 
	   
	   @RequestMapping("logout")
	   public String loginout(HttpSession session) {
		   session.removeAttribute("level");
		   session.removeAttribute("mId");
		   session.removeAttribute("mName");
	      return "redirect:/main";
	   }

	    
}
