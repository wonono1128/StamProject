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
	public String portfolio(@PathVariable String year) {

		return "portfolio/portfolio_" + year;
	}

	@RequestMapping("/about_{about}")
	public String about(@PathVariable String about) {

		return "about/about_" + about;
	}

	@RequestMapping("/brand_{brand}")
	public String brand(@PathVariable String brand) {

		return "brand/brand_" + brand;
	}

	@RequestMapping("/solution_{solution}")
	public String solution(@PathVariable String solution) {

		return "solution/solution_" + solution;
	}

	@RequestMapping("/test")
	public String test() {

		return "/test";
	}

}
