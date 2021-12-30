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
import kr.stam.homepage.dao.DepthLogDao;
import kr.stam.homepage.dto.DepthDto;
import kr.stam.homepage.dto.DepthLogDto;

@Controller
public class DepthController {

	@Autowired
	private DepthDao dDao;

	@Autowired
	private DepthLogDao dLDao;

	@RequestMapping("/depth")
	public String depth(HttpServletRequest request, Model model, HttpSession session, String MenuParents) {

		if (session.getAttribute("level") != null) {
			Integer DepthNextNum = dDao.DepthNextNum();
			session.setAttribute("DepthNextNum", DepthNextNum);
			ArrayList<DepthDto> Flist = dDao.Flist();
			model.addAttribute("Flist", Flist);

			ArrayList<DepthDto> list = dDao.list(MenuParents);
			session.setAttribute("MenuParents", MenuParents);

			model.addAttribute("list", list);
			return "depth/depth";
		} else {
			return "redirect:/main";
		}
	}

	@RequestMapping("/depth_insert")
	public String depth_insert(HttpServletRequest request, Model model, HttpSession session) {
		System.out.println("인서트페이지");

		if (session.getAttribute("level") != null) {
			ArrayList<DepthDto> Flist = dDao.Flist();
			model.addAttribute("Flist", Flist);
			return "depth/depth_insert";
		} else {
			return "redirect:/main";
		}
	}

	@RequestMapping("/depth_insert_ok")
	public String depth_insert_ok(HttpServletRequest request, Model model, HttpSession session, DepthDto dDto,
			String menuParents, DepthLogDto dLDto) {

		if (session.getAttribute("DepthNextNum") != null) {
			int DepthNextNum = (int) session.getAttribute("DepthNextNum");
			dLDto.setMenuCode(DepthNextNum + 1);
		}else {
			int DepthNextNum = 1;
			dLDto.setMenuCode(DepthNextNum);
		}
		model.addAttribute("ndto", dDto);
		dDto.setMenuParents(menuParents);
		dDao.insert(dDto);
		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");

		dLDto.setManagerId(managerId);
		dLDto.setManagerName(managerName);
		dLDto.setLogType("Insert");
		dLDao.insert(dLDto);

		return "redirect:depth?MenuParents=" + menuParents;
	}

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

	@RequestMapping("/depth_update")
	public String depth_update(HttpServletRequest request, Model model, HttpSession session, int menuCode,
			DepthDto dDto) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		System.out.println("수정페이지");
		if (session.getAttribute("level") != null) {
			dDto = dDao.content(menuCode);
			model.addAttribute("dDto", dDto);
			return "depth/depth_update";
		}

		else {

			return "redirect:/main";
		}
	}

	@RequestMapping("/depth_update_ok")
	public String depth_update_ok(HttpServletRequest request, Model model, String menuParents, HttpSession session, DepthDto dDto,
			DepthLogDto dLDto, int menuCode) {
		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");
		if (session.getAttribute("nextNum") != null) {
			int nextNum = (int) session.getAttribute("nextNum");

		}
		
		dDto.setMenuParents(menuParents);
		model.addAttribute("ndto", dDto);

		dDao.update(dDto);
		dLDto.setMenuCode(menuCode);
		dLDto.setManagerId(managerId);
		dLDto.setManagerName(managerName);
		dLDto.setLogType("Update");
		dLDao.insert(dLDto);
		return "redirect:depth?MenuParents=" + menuParents;
	}

}
