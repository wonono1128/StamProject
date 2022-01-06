package kr.stam.homepage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import kr.stam.homepage.dao.DepthLogDao;
import kr.stam.homepage.dto.DepthDto;
import kr.stam.homepage.dto.DepthLogDto;

@Controller
public class DepthController {

	@Autowired
	private DepthDao dDao;

	@Autowired
	private DepthLogDao dLDao;

	
	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  DepthController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:03:01 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param request
	  @param model
	  @param session
	  @param MenuParents		=> ABOUT PORTFOLIO BRAND SOLUTION 같은 최상위메뉴
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/depth")
	public String depth(HttpServletRequest request, Model model, HttpSession session, String MenuParents) {
		if (session.getAttribute("level") != null) {			//로그인구분
			Integer DepthNextNum = dDao.DepthNextNum();
			session.setAttribute("DepthNextNum", DepthNextNum);
			ArrayList<DepthDto> Flist = dDao.Flist();			//좌측 메뉴바들을 디비에서 불러옴
			model.addAttribute("Flist", Flist);
			
			ArrayList<DepthDto> list = dDao.list(MenuParents);  //우측 뎁스게시판을 디비에서 불러옴
			session.setAttribute("MenuParents", MenuParents);

			model.addAttribute("list", list);
			return "depth/depth";
		} else {
			return "redirect:/main";
		}
	}

	
	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  DepthController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:03:05 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param request
	  @param model
	  @param session
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/depth_insert")
	public String depth_insert(HttpServletRequest request, Model model, HttpSession session) {

		if (session.getAttribute("level") != null) {

			session.getAttribute("MenuParents");
			ArrayList<DepthDto> Flist = dDao.Flist();
			model.addAttribute("Flist", Flist);
			return "depth/depth_insert";
		} else {
			return "redirect:/main";
		}
	}


	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  DepthController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:03:11 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param insertArray	=> depth.jsp에서 소제목(menuContents)를 배열로 받아왔다.
	  @param dDto			=> depthDto
	  @param request
	  @param dLDto			=> depthLogoDto
	  @return
	  @throws Exception : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping(value = "/depth_insert_ok", method = RequestMethod.POST)
	@ResponseBody
	public int depth_insert_ok(HttpSession session, @RequestParam(value = "insertTitle[]") List<String> insertArray,
			DepthDto dDto, HttpServletRequest request, DepthLogDto dLDto) throws Exception {

		if (session.getAttribute("DepthNextNum") != null) {
			int DepthNextNum = (int) session.getAttribute("DepthNextNum");
			dLDto.setMenuCode(DepthNextNum + 1);
		}
		int result = 0;
		String menuParents = request.getParameter("menuParents");
		String menuContents = "";
		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");

		if (!insertArray.isEmpty()) {		//널이 아닐경우 동작함
			for (String i : insertArray) {
				menuContents = i;
				if (menuContents != "") {	//제목이 빈칸이 아닐경우동작함
					dDto.setMenuParents(menuParents);
					dDto.setMenuContents(menuContents);
					dDao.insert(dDto);
					result = 1;				//변경
			
					dLDto.setManagerId(managerId);		
					dLDto.setManagerName(managerName);
					dLDto.setLogType("Insert");
					dLDao.insert(dLDto);				//뎁스로그테이블 입력
				} else {
					result = 2;				//변경실패
				}
			}
		} else {
			result = 2;
		}
		return result;
	}

	
	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  DepthController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:03:15 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param chArr			=> depth.jsp 체크된 항목의 번호(setMenuCode)를 배열로 받아왔다.
	  @param dDto			=> depthDto
	  @param dLDto			=> depthLogoDto
	  @return
	  @throws Exception : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping(value = "/depth_delete", method = RequestMethod.POST)
	@ResponseBody
	public int deleteCart(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, DepthDto dDto,
			DepthLogDto dLDto) throws Exception {

		int result = 0;
		int menuCode = 0;
		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");
		for (String i : chArr) {
			menuCode = Integer.parseInt(i);
			dDto.setMenuCode(menuCode);
			dDao.depth_delete(dDto);
			dLDto.setMenuCode(menuCode);
			dLDto.setManagerId(managerId);
			dLDto.setManagerName(managerName);
			dLDto.setLogType("Delete");
			dLDao.insert(dLDto);
		}

		result = 1;

		return result;
	}


	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  DepthController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:03:18 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param request
	  @param model
	  @param session
	  @param menuCode			=> menu 테이블의 기본키
	  @param dDto				=> depthDto
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/depth_update")
	public String depth_update(HttpServletRequest request, Model model, HttpSession session, int menuCode,
			DepthDto dDto) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);

		if (session.getAttribute("level") != null) {		//비회원 get방식으로 입장방지
			dDto = dDao.content(menuCode);
			model.addAttribute("dDto", dDto);
			return "depth/depth_update";
		}

		else {

			return "redirect:/main";
		}
	}


	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  DepthController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:03:21 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param model
	  @param updateTitleArray			=>depth.jsp 에서 받은 소제목(menuContents)를 배열로 받음
	  @param updateNumArray				=>depth.jsp 에서 받은 번호(menuCode)를 배열로 받음
	  @param dDto						=> depthDto
	  @param request
	  @param dLDto						=> depthLogoDto
	  @return
	  @throws Exception : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping(value = "/depth_update_ok", method = RequestMethod.POST)
	@ResponseBody
	public int depth_update_ok(HttpSession session, Model model,
			@RequestParam(value = "updateTitle[]") List<String> updateTitleArray,
			@RequestParam(value = "updateNum[]") List<String> updateNumArray, DepthDto dDto, HttpServletRequest request,
			DepthLogDto dLDto) throws Exception {

		int result = 0;
		String menuParents = request.getParameter("menuParents");
		String menuContents = "";
		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");

		int menuCode = 0;
		
		for (String i : updateNumArray) {
			Map<String, String> paramMap = new HashMap<String, String>();

				for (int t = 0; t < updateTitleArray.size(); t++) {
					paramMap.put(updateNumArray.get(t), updateTitleArray.get(t));
				}
					menuContents = (String) paramMap.get(i);
					if(menuContents.equals("")) {
						
					}else {
						menuCode = Integer.parseInt(i);
						dDto.setMenuContents(menuContents);
						dDto.setMenuCode(menuCode);
						dDto.setMenuParents(menuParents);

						dDao.update(dDto);
						dLDto.setMenuCode(menuCode);
						dLDto.setManagerId(managerId);
						dLDto.setManagerName(managerName);
						dLDto.setLogType("Update");
						dLDao.insert(dLDto);
						model.addAttribute("ndto", dDto);
						result = 1;
					}
		}

		return result;
	}

}
