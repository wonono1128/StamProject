package kr.stam.homepage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.stam.homepage.dao.DepthDao;
import kr.stam.homepage.dao.ProductDao;
import kr.stam.homepage.dto.DepthDto;
import kr.stam.homepage.dto.ProductDto;

@Controller
public class MainController {
	@Autowired
	private ProductDao pd;
	@Autowired
	private DepthDao dDao;

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  MainController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:49:53 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param model
	  @param request
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping({ "/", "main" })
	public String main(HttpSession session, Model model, HttpServletRequest request) {
		
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
	


		
		return "/main";
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  MainController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:50:01 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param year
	  @param session
	  @param model
	  @param request
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping({ "/portfolio_{year}" })
	public String portfolio(@PathVariable String year, HttpSession session, Model model, HttpServletRequest request) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", year);

		String menuContents = year;
		ArrayList<ProductDto> list = pd.list(menuContents);
		session.setAttribute("menuContents", menuContents);

		Integer listCount = pd.listCount(menuContents);
		model.addAttribute("list", list);

		return "portfolio/portfolio";
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  MainController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:50:08 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param about
	  @param session
	  @param model
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/about_{about}")
	public String about(@PathVariable String about, HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", about);
		return "about/about_" + about;

	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  MainController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:50:11 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param brand
	  @param session
	  @param model
	  @param request
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/brand_{brand}")
	public String brand(@PathVariable String brand, HttpSession session, Model model, HttpServletRequest request) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", brand);
		String menuContents = brand;
		ArrayList<ProductDto> list = pd.list(menuContents);
		session.setAttribute("menuContents", menuContents);

		Integer listCount = pd.listCount(menuContents);
		model.addAttribute("list", list);
		return "brand/brand";
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  MainController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:50:14 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param model
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  MainController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:50:21 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param model
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/solution_A.Drive")
	public String solution_ADrvie(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", "A.Drvie");
		return "solution/solution_Adrive";
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  MainController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:50:26 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param model
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/solution_STFramework")
	public String solution_STFramework(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", "STFramework");
		return "solution/solution_ST_framework";
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  MainController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:50:30 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param model
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/solution_통합SNS관리시스템")
	public String solution_통합SNS관리시스템(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", "통합SNS관리시스템");
		return "solution/solution_System1";
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  MainController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:50:32 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param model
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  MainController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:50:35 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param model
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/solution_구간별암호화시스템")
	public String solution_구간별암호화시스템(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", "구간별암호화시스템");
		return "solution/solution_System2";
	}


}
