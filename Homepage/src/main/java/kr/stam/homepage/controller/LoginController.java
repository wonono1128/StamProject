package kr.stam.homepage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.stam.homepage.UserSha256;
import kr.stam.homepage.dao.DepthDao;
import kr.stam.homepage.dao.LoginDao;
import kr.stam.homepage.dto.DepthDto;
import kr.stam.homepage.dto.LogDto;

@Controller
public class LoginController {
	
	@Autowired
	private LoginDao ld;
	@Autowired
	private DepthDao dDao;

	@RequestMapping("login")
	public String login(Model model) {
		return "login/login";
	}

	@PostMapping(value = "loginChk")
	public ModelAndView loginChk(String managerId, LogDto ldto, HttpServletRequest request, HttpSession session,
			ModelAndView mav) {

		ArrayList<DepthDto> Flist = dDao.Flist();
		
		for(int i=0; i<Flist.size(); i++) { //for문을 통한 전체출력
		
			String MenuParent = Flist.get(i).getMenuParents();
			session.setAttribute("MenuParent",MenuParent);
		   System.out.println("로그인시 동작"+Flist.get(i).getMenuParents()); 
		}
		
		// 암호화
		String managerPw = UserSha256.encrypt(request.getParameter("managerPw"));
		request.setAttribute("encry", managerPw);
		System.out.println("입력한 아이디: " + managerId);
		System.out.println("입력한 비밀번호 : " + managerPw);

		// 로그인 성공 여부
		//maname으로 불러와서 체크하기
		String mName = ld.getList(managerId, managerPw);
		
		
		if (mName != null) {
			mav.setViewName("main");
			ldto.setManagerName(ld.getName());
			session.setAttribute("level", 1);
			session.setAttribute("mId", managerId);
			session.setAttribute("mName", mName);
			ld.addLog(ldto);
		} else {
			mav.setViewName("login/login");
			mav.addObject("message", "error");
		}

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
