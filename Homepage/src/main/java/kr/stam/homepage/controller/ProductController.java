package kr.stam.homepage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.stam.homepage.dao.DepthDao;
import kr.stam.homepage.dao.ProductDao;
import kr.stam.homepage.dto.DepthDto;
import kr.stam.homepage.dto.ProductDto;

@Controller
public class ProductController {
	@Autowired
	private ProductDao pd;
	
	@Autowired
	private DepthDao dDao;
	
	@RequestMapping("product")
	public String product(HttpServletRequest request,Model model,HttpSession session,String menuContents) {
		System.out.println("포트폴리오 페이지");
		Integer nextNum = pd.nextNum();
		session.setAttribute("nextNum", nextNum);
		ArrayList<DepthDto> Flist = dDao.Flist();

		model.addAttribute("Flist",Flist);
		System.out.println("포트폴리오 내용" + menuContents );
		ArrayList<ProductDto> list = pd.list(menuContents);
	
		if(menuContents == null) {
				session.setAttribute("MenuContents",menuContents);
				System.out.println("세션없음");
		}
		else {
	
				session.setAttribute("MenuContents",menuContents);
				System.out.println("세션있음");
		}
		
		
		model.addAttribute("list",list);
		return "product/product";
	}
	
	@RequestMapping("/product_insert")
	public String depth_insert(HttpServletRequest request,Model model,HttpSession session ) {
		System.out.println("인서트페이지");
	if(session.getAttribute("level") != null ) {
				
				return "product/product_insert";
			}
			
			else{
				
				return "redirect:/product";
			}
	}
}
