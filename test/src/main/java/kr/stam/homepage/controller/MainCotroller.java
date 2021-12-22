package kr.stam.homepage.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class MainCotroller {
	
	@Autowired
	private SqlSession sqlSession;


	@RequestMapping({"/","main"})
	public String main() {
		
		return "/main";
	}

	
	@RequestMapping("/intro")
	public String intro() {
		
		return "/intro";
	}

	@RequestMapping("/portfolio_2016")
	public String portfolio_2016() {
		
		return "/portfolio_2016";
	}
	@RequestMapping("/portfolio_2017")
	public String portfolio_2017() {
		
		return "/portfolio_2017";
	}
	@RequestMapping("/portfolio_2018")
	public String portfolio_2018() {
		
		return "/portfolio_2018";
	}
	@RequestMapping("/portfolio_2019")
	public String portfolio_2019() {
		
		return "/portfolio_2019";
	}
	@RequestMapping("/portfolio_2020")
	public String portfolio_2020() {
		
		return "/portfolio_2020";
	}
	@RequestMapping("/portfolio_2021")
	public String portfolio_2021() {
		
		return "/portfolio_2021";
	}

	@RequestMapping("/withClient")
	public String withClient() {
		
		return "/withClient";
	}
	@RequestMapping("/about_History")
	public String about_History() {
		
		return "/about_History";
	}
	@RequestMapping("/organizationChart")
	public String organizationChart() {
		
		return "/organizationChart";
	}
	
	@RequestMapping("/brand")
	public String brand() {
		
		return "/brand";
	}
	@RequestMapping("/brand_Edit")
	public String brand_Edit() {
		
		return "/brand_Edit";
	}
	@RequestMapping("/brand_Promotion")
	public String brand_Promotion() {
		
		return "/brand_Promotion";
	}
	
	@RequestMapping("/solution_Adrive")
	public String solution_Adrive() {
		
		return "/solution_Adrive";
	}
	@RequestMapping("/solution_ST_framework")
	public String solution_ST_framework() {
		
		return "/solution_ST_framework";
	}
	@RequestMapping("/solution_System1")
	public String solution_System1() {
		
		return "/solution_System1";
	}
	@RequestMapping("/solution_System2")
	public String solution_System2() {
		
		return "/solution_System2";
	}

}