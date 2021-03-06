package kr.stam.homepage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String login(Model model, HttpSession session, HttpServletRequest request) {
		String referer = (String) request.getHeader("REFERER");
		referer = referer.substring(referer.length() - 5, referer.length());
		
		if (referer.equals("login")) {
			
		} else {
			String error = (String) session.getAttribute("error");
			
			session.removeAttribute("error");
			
		}
		return "login/login";
	}

	@PostMapping(value = "loginChk")
	public String loginChk(String managerId, LogDto ldto, HttpServletRequest request, HttpSession session) {

		ArrayList<DepthDto> Flist = dDao.Flist();

		for (int i = 0; i < Flist.size(); i++) { // for문을 통한 전체출력

			String MenuParent = Flist.get(i).getMenuParents();
			session.setAttribute("MenuParent", MenuParent);
			
		}

		// 암호화
		String managerPw = UserSha256.encrypt(request.getParameter("managerPw"));
		request.setAttribute("encry", managerPw);
		System.out.println("입력한 아이디: " + managerId);
		System.out.println("입력한 비밀번호 : " + managerPw);

		// 로그인 성공 여부
		// maname으로 불러와서 체크하기
		String mName = ld.getList(managerId, managerPw);
		
		session.setAttribute("mName", mName);
		if (mName != null) {
			ldto.setManagerName(ld.getName());
			session.setAttribute("level", 1);
			session.setAttribute("mId", managerId);
			session.setAttribute("mName", mName);
			ld.addLog(ldto);
			return "redirect:/main";
		} else {
		
			String error = "error";
			session.setAttribute("error", error);
	
			return "redirect:/login";
		}

	}

	@RequestMapping("logout")
	public String loginout(HttpSession session) {
		session.removeAttribute("level");
		session.removeAttribute("mId");
		session.removeAttribute("mName");
		return "redirect:/main";
	}

}
