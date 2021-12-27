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
import kr.stam.homepage.dto.DepthDto;





@Controller
public class DepthController{
	
	@Autowired
	private DepthDao dDao;
	
	
	
	@RequestMapping("/depth")
	public String depth(HttpServletRequest request,Model model,HttpSession session,String MenuParents ) {
		System.out.println("뎁스페이지");
		Integer nextNum = dDao.nextNum();
		session.setAttribute("nextNum", nextNum);
		System.out.println("메뉴부모" +MenuParents );
		ArrayList<DepthDto> list = dDao.list(MenuParents);
	
	
		if(MenuParents == null) {
				session.setAttribute("MenuParents",MenuParents);
				System.out.println("세션없ㅇ음");
		}
		else {
	
				session.setAttribute("MenuParents",MenuParents);
				System.out.println("세션있음");
		}
		
		
		model.addAttribute("list",list);
		return"depth/depth";
	}
	
	@RequestMapping("/depth_insert")
	public String depth_insert(HttpServletRequest request,Model model,HttpSession session ) {
		System.out.println("인서트페이지");
	if(session.getAttribute("level") != null ) {
				
				return "depth/depth_insert";
			}
			
			else{
				
				return "redirect:/main";
			}
	}
	
	@RequestMapping("/depth_insert_ok")
	public String depth_insert_ok(HttpServletRequest request,Model model,HttpSession session,DepthDto dDto ) {
		
		if(session.getAttribute("nextNum") != null) {
			int nextNum = (int) session.getAttribute("nextNum");
		
		}

		String MenuParents = (String) session.getAttribute("MenuParents");

		model.addAttribute("ndto",dDto);
		
		dDao.insert(dDto);

		return"redirect:depth?MenuParents="+MenuParents;
	}
	
	@RequestMapping(value = "/depth_delete", method = RequestMethod.POST)
	@ResponseBody
	public int deleteCart(HttpSession session,
	     @RequestParam(value = "chbox[]") List<String> chArr, DepthDto dDto) throws Exception {

	System.out.println("백단 접근");
	
		 int result = 0;
		 int menuCode = 0;
		  for(String i : chArr) {   
			  System.out.println("백단 포문");
		   menuCode = Integer.parseInt(i);
		   dDto.setMenuCode(menuCode);
		   dDao.depth_delete(dDto);
		  }   
		  System.out.println("백단 포문완료");
		  result = 1;
	 
		 return result;  
		}
	

	@RequestMapping("/depth_update")
	public String depth_update(HttpServletRequest request,Model model,HttpSession session,int menuCode,DepthDto dDto ) {
		System.out.println("수정페이지");
	if(session.getAttribute("level") != null ) {
		dDto = dDao.content(menuCode);
		model.addAttribute("dDto", dDto);
				return "depth/depth_update";
			}
			
			else{
				
				return "redirect:/main";
			}
	}
	
	@RequestMapping("/depth_update_ok")
	public String depth_update_ok(HttpServletRequest request,Model model,HttpSession session,DepthDto dDto,int menuCode) {
		
		if(session.getAttribute("nextNum") != null) {
			int nextNum = (int) session.getAttribute("nextNum");
		
		}
		String MenuParents = (String) session.getAttribute("MenuParents");
		

		model.addAttribute("ndto",dDto);
		
		dDao.update(dDto);

		return"redirect:depth?MenuParents="+MenuParents;
	}
	
	}



