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
	
}
