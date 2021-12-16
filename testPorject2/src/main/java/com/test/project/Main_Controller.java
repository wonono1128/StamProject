package com.test.project;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class Main_Controller {
	
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
	@RequestMapping("/about_history")
	public String about_history() {
		
		return "/about_history";
	}
	@RequestMapping("/organizationChart")
	public String organizationChart() {
		
		return "/organizationChart";
	}
	
	@RequestMapping("/brand")
	public String brand() {
		
		return "/brand";
	}
	@RequestMapping("/brand_edit")
	public String brand_edit() {
		
		return "/brand_edit";
	}
	@RequestMapping("/brand_promotion")
	public String brand_promotion() {
		
		return "/brand_promotion";
	}
	
	@RequestMapping("/solution_Adrive")
	public String solution_Adrive() {
		
		return "/solution_Adrive";
	}
	@RequestMapping("/solution_ST_framework")
	public String solution_ST_framework() {
		
		return "/solution_ST_framework";
	}
	@RequestMapping("/solution_system1")
	public String solution_system1() {
		
		return "/solution_system1";
	}
	@RequestMapping("/solution_system2")
	public String solution_system2() {
		
		return "/solution_system2";
	}
}
