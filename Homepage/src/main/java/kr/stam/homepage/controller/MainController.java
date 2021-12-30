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

	@RequestMapping({ "/", "main" })
	public String main(HttpSession session, Model model, HttpServletRequest request) {
		System.out.println("메인");
		ArrayList<DepthDto> Flist = dDao.Flist();

		model.addAttribute("Flist", Flist);

		return "/main";
	}

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

	@RequestMapping("/about_{about}")
	public String about(@PathVariable String about, HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", about);
		return "about/about_" + about;

	}

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

	@RequestMapping("/solution_A.Drvie")
	public String solution_ADrvie(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", "A.Drvie");
		return "solution/solution_Adrive";
	}

	@RequestMapping("/solution_STFramework")
	public String solution_STFramework(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", "STFramework");
		return "solution/solution_ST_framework";
	}

	@RequestMapping("/solution_통합SNS관리시스템")
	public String solution_통합SNS관리시스템(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", "통합SNS관리시스템");
		return "solution/solution_System1";
	}

	@RequestMapping("/solution_구간별암호화시스템")
	public String solution_구간별암호화시스템(HttpSession session, Model model) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", "구간별암호화시스템");
		return "solution/solution_System2";
	}

	@RequestMapping("/test")
	public String test() {

		return "/test";
	}

}
