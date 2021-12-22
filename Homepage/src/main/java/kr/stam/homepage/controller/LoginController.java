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
import kr.stam.homepage.dao.MemberDao;
import kr.stam.homepage.dto.LogDto;
import kr.stam.homepage.dto.MemberDto;

@Controller
public class LoginController {
	   @Autowired
	   private SqlSession sqlSession;
	   private MemberDao md;
	   
	   @RequestMapping("login")
	   public String login(Model model) {
		  md = sqlSession.getMapper(MemberDao.class);
	      model.addAttribute("member", md.getList());
	      return "login/login";
	   }
	   
	   
	   @RequestMapping(value="loginChk" , method = RequestMethod.POST)
	   public ModelAndView loginChk(String manager_id, MemberDto mdto, LogDto ldto, HttpServletRequest request,HttpSession session) {
		   ModelAndView mav = new ModelAndView();

			// DB 비밀번호 암호화 (sha256)
		    int mNum = 0;
		   	String mPsswd = "";
		   	String mId = "";
		   	String mName = "";
		   	
		   	List<MemberDto> pwList = md.getList();
		   	
		   	for(int i=0; i<pwList.size(); ++i) {
		  		mNum = pwList.get(i).getManager_num();
		   		mPsswd = pwList.get(i).getManager_pw();
		   		mId = pwList.get(i).getManager_id();
		   		mName = pwList.get(i).getManager_name();
		   	}
		   	
			System.out.println("DB 관리자번호: " + mNum);
		   	System.out.println("DB 아이디: " + mId);
		   	System.out.println("DB 비밀번호: " + mPsswd);
		   	System.out.println("DB 관리자이름: " + mName);
			
			// 입력한 비밀번호 암호화
			String encryPassword2 = UserSha256.encrypt(request.getParameter("manager_pw"));
			request.setAttribute("encry",encryPassword2);
		   	System.out.println("입력한 아이디: " + manager_id);
			System.out.println("입력한 비밀번호 : " + encryPassword2);
			System.out.println(mNum);
	
	   		
			   	if(mId.equals(manager_id) && mPsswd.equals(encryPassword2)) {
			   		mav.setViewName("main");
					ldto.setManager_num(mNum);
					ldto.setManager_name(mName);
					session.setAttribute("level", 1);
					md.addLog(ldto);	
			   	}else {
			   		mav.setViewName("login/login");
			   		mav.addObject("message", "error");
			   	
	   		}
		 //암호화된 비밀번호 insert
//		mdto.setManager_name(mName);
//		md.insertPsswd(mdto);
//			
		   	return mav;
	   } 
	   
	   
	   
	   @RequestMapping("logout")
	   public String loginout(HttpSession session) {
		   session.invalidate();
	      return "redirect:/main";
	   }
	   
	
	   
}
