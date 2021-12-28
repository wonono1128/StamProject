package kr.stam.homepage.controller;



import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.stam.homepage.dao.DepthDao;
import kr.stam.homepage.dto.DepthDto;

@Controller
public class MainController {
	
	@Autowired
	private DepthDao dDao;
	
	@RequestMapping({ "/", "main" })
	public String main(HttpSession session, Model model) {
		System.out.println("메인");
		ArrayList<DepthDto> Flist = dDao.Flist();

		model.addAttribute("Flist", Flist);

		return "/main";
	}

	@RequestMapping({ "/portfolio_{year}" })
	public String portfolio(@PathVariable String year,HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		return "portfolio/portfolio_" + year;
	}
	@RequestMapping({ "/portfolio" })
	public String portfolio(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		return "portfolio/portfolio";
	}

	@RequestMapping("/about_{about}")
	public String about(@PathVariable String about,HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		return "about/about_" + about;
	}
	@RequestMapping("/about_Intro+Vision&Business")
	public String about(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		return "about/about_Intro";
	}

	@RequestMapping("/brand_{brand}")
	public String brand(@PathVariable String brand,HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		return "brand/brand_" + brand;
	}

	@RequestMapping("/solution_A.Drive")
	public String solution_ADrive(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		return "solution/solution_Adrive";
	}
	@RequestMapping("/solution_STFramework")
	public String solution_STFramework(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		return "solution/solution_ST_framework";
	}
	@RequestMapping("/solution_통합SNS관리시스템")
	public String solution_통합SNS관리시스템(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		return "solution/solution_System1";
	}
	@RequestMapping("/solution_구간별암호화시스템")
	public String solution_구간별암호화시스템(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		return "solution/solution_System2" ;
	}

	@RequestMapping("/test")
	public String test() {

		return "/test";
	}

}
