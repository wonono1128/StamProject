package kr.stam.homepage.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		session.setAttribute("nextNum", nextNum+1);
		
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist",Flist);
		
		
		ArrayList<ProductDto> list = pd.list(menuContents);
		session.setAttribute("MenuContents",menuContents);
		model.addAttribute("list",list);
		
		return "product/product";
	}
	
	@RequestMapping("/product_insert")
	public String depth_insert(HttpServletRequest request,Model model,HttpSession session ) {
		
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist",Flist);
	if(session.getAttribute("level") != null ) {
				
				return "product/product_insert";
			}
			
			else{
				
				return "redirect:/product";
			}
	}
	   @RequestMapping("/product_insert_ok")
	   public String product_insert_ok(ProductDto pdto, HttpSession session) {
	      String menuContents = (String) session.getAttribute("menuContents");
	      pd.insert(pdto);

	      return "redirect:/product?menuContents=" + menuContents;
	   }

	   @ResponseBody
	   @RequestMapping(value = "/product_delete", method = RequestMethod.POST)
	   public int product_delete(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, ProductDto pDto)
	         throws Exception {
	      int result = 0;
	      int productCode = 0;
	      for (String i : chArr) {
	         productCode = Integer.parseInt(i);
	         pDto.setProductCode(productCode);
	         pd.delete(pDto);
	      }

	      result = 1;

	      return result;
	   }

	@RequestMapping("/product_content")
	public String content(HttpServletRequest request, ProductDto pDto, Model model) throws Exception {
		int productCode = Integer.parseInt(request.getParameter("productCode"));
		pDto = pd.content(productCode);
		model.addAttribute("pDto", pDto);
		return "product/product_content";
	}
}
