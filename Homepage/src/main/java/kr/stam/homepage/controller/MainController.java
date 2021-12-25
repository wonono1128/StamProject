package kr.stam.homepage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping({ "/", "main" })
	public String main() {

		return "/main";
	}

	@RequestMapping("/intro")
	public String intro() {

		return "about/intro";
	}

	@RequestMapping("/portfolio_2016")
	public String portfolio_2016() {

		return "portfolio/portfolio_2016";
	}

	@RequestMapping("/portfolio_2017")
	public String portfolio_2017() {

		return "portfolio/portfolio_2017";
	}

	@RequestMapping("/portfolio_2018")
	public String portfolio_2018() {

		return "portfolio/portfolio_2018";
	}

	@RequestMapping("/portfolio_2019")
	public String portfolio_2019() {

		return "portfolio/portfolio_2019";
	}

	@RequestMapping("/portfolio_2020")
	public String portfolio_2020() {

		return "portfolio/portfolio_2020";
	}

	@RequestMapping("/portfolio_2021")
	public String portfolio_2021() {

		return "portfolio/portfolio_2021";
	}

	@RequestMapping("/withClient")
	public String withClient() {

		return "about/withClient";
	}

	@RequestMapping("/about_History")
	public String about_History() {

		return "about/about_History";
	}

	@RequestMapping("/organizationChart")
	public String organizationChart() {

		return "about/organizationChart";
	}

	@RequestMapping("/brand")
	public String brand() {

		return "brand/brand";
	}

	@RequestMapping("/brand_Edit")
	public String brand_Edit() {

		return "brand/brand_Edit";
	}

	@RequestMapping("/brand_Promotion")
	public String brand_Promotion() {

		return "brand/brand_Promotion";
	}

	@RequestMapping("/solution_Adrive")
	public String solution_Adrive() {

		return "solution/solution_Adrive";
	}

	@RequestMapping("/solution_ST_framework")
	public String solution_ST_framework() {

		return "solution/solution_ST_framework";
	}

	@RequestMapping("/solution_System1")
	public String solution_System1() {

		return "solution/solution_System1";
	}

	@RequestMapping("/solution_System2")
	public String solution_System2() {

		return "solution/solution_System2";
	}
	@RequestMapping("/test")
	public String test() {

		return "/test";
	}

}
