package kr.stam.homepage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.stam.homepage.dao.DepthDao;
import kr.stam.homepage.dao.NoticeDao;
import kr.stam.homepage.dao.NoticeLogDao;
import kr.stam.homepage.dto.DepthDto;
import kr.stam.homepage.dto.NoticeDto;
import kr.stam.homepage.dto.NoticeLogDto;

@Controller
public class NoticeController {

	@Autowired
	private NoticeDao ndao;

	@Autowired
	private NoticeLogDao nLDao;
	@Autowired
	private DepthDao dDao;

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  NoticeController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:51:00 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param ndto			=>noticeDto
	  @param request
	  @param model
	  @param session
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/notice")
	public String notice(NoticeDto ndto, HttpServletRequest request, Model model, HttpSession session) {
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		model.addAttribute("url", "notice");
		int index; // 1페이지=>0, 2페이지는 10
		int page;

		// 사용자가 페이지 값을 보내지 않는 경우=> 게시판에 처음 접근
		if (request.getParameter("page") == null) {
			page = 1;
			index = 0;
		} else // 사용자가 페이지 값을 보내는 경우
		{
			page = Integer.parseInt(request.getParameter("page"));
			index = (page - 1) * 10;
		}

		// 게시판 하단에 다른페이지 이동을 위한 링크
		int pstart = page / 10;
		if (page % 10 == 0) // 10 의 배수일 경우
			pstart = pstart - 1;

		pstart = (pstart * 10) + 1;
		int pend = pstart + 9;
		// 검색에 필요한 필드값과 검색어를 가져와서 검색을 한다.

		String cla, sword;
		if (request.getParameter("cla") == null)
			cla = "noticeTitle";
		else
			cla = request.getParameter("cla");

		if (request.getParameter("sword") == null)
			sword = "";
		else
			sword = request.getParameter("sword");

		ArrayList<NoticeDto> nlist = ndao.nlist(cla, sword, index);

		model.addAttribute("nlist", nlist);
		model.addAttribute("pstart", pstart);
		model.addAttribute("page", page);

		model.addAttribute("sword", sword);
		Integer pagecnt = ndao.get_pagecnt(cla, sword); // cla,sword적용
		
		session.setAttribute("pagecnt", pagecnt);
		model.addAttribute("pagecnt", pagecnt);
		// 출력될 pend값이 총페이지보다 클경우는 pend에 총페이지값을 전달
		if (pend > pagecnt) {
			pend = pagecnt;
		}
		model.addAttribute("pend", pend);
		return "notice/notice";
	}

	/*
	 * level = 회원 로그인 구분 세션
	 */
	@RequestMapping("/insert")
	public String insert(HttpSession session,Model model) {
		if (session.getAttribute("level") != null) {
			ArrayList<DepthDto> Flist = dDao.Flist();
			model.addAttribute("Flist", Flist);
			return "notice/insert";
		}

		else {

			return "redirect:/notice";
		}
	}

	/*
	 * nextNum = 다음 글 번호, managerId = 관리자 아이디, managerName = 관리자 닉네임
	 * ndto = 게시판 DTO   , nLDto = 게시판 로그 DTO
	 */
	@RequestMapping("/insert_ok")
	public String insert_ok(HttpServletRequest request, NoticeDto ndto, Model model, NoticeLogDto nLDto,
			HttpSession session) throws Exception {
		//입력시 로그테이블에 게시글번호를 준다.		
		if (session.getAttribute("nextNum") != null) {
			int nextNum = (int) session.getAttribute("nextNum");
			nLDto.setNoticeNum(nextNum + 1);
		}else {
			int nextNum = 1;
			nLDto.setNoticeNum(nextNum);
		}
		
		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");

		ndto.setManagerName(managerName);

		nLDto.setManagerId(managerId);
		nLDto.setManagerName(managerName);
		nLDto.setLogType("Insert");

		model.addAttribute("ndto", ndto);

		ndao.insert(ndto);
		nLDao.insert(nLDto);
		return "redirect:/notice";
	}

	/*
	 * noticeNum = 글 번호
	 */
	@RequestMapping("/content")
	public String content(HttpServletRequest request, NoticeDto ndto, Model model) throws Exception {
		int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		ndto = ndao.content(noticeNum);
		model.addAttribute("ndto", ndto);
		return "notice/content";
	}

	/*
	 * level = 회원 로그인 구분 세션 noticeNum = 글 번호 managerId = 관리자 아이디 managerName = 관리자
	 * 닉네임
	 */
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, NoticeDto ndto, Model model, NoticeLogDto nLDto,
			HttpSession session) throws Exception {
		if (session.getAttribute("level") != null) {
			int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));

			String managerId = (String) session.getAttribute("mId");
			String managerName = (String) session.getAttribute("mName");

			nLDto.setManagerId(managerId);
			nLDto.setManagerName(managerName);
			nLDto.setLogType("Delete");
			ndao.delete(noticeNum);
			nLDao.insert(nLDto);
			return "redirect:/notice";

		}

		else {
			return "redirect:/notice";
		}

	}

	/*
	 * level = 회원 로그인 구분 세션 noticeNum = 글 번호
	 */
	@RequestMapping("update")
	public String update(HttpServletRequest request, NoticeDto ndto, Model model, HttpSession session) {
		if (session.getAttribute("level") != null) {
			int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));
			ArrayList<DepthDto> Flist = dDao.Flist();
			model.addAttribute("Flist", Flist);
			ndto = ndao.content(noticeNum);
			model.addAttribute("ndto", ndto);
			return "notice/update";
		} else {
			return "redirect:/notice";
		}

	}

	/*
	 * managerId = 관리자 아이디 managerName = 관리자 닉네임
	 */
	@RequestMapping("update_ok")
	public String update_ok(HttpServletRequest request, NoticeDto ndto, NoticeLogDto nLDto, HttpSession session) {

		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");

		nLDto.setManagerId(managerId);
		nLDto.setManagerName(managerName);
		nLDto.setLogType("Update");
		ndao.update(ndto);
		nLDao.insert(nLDto);
		return "redirect:/notice";
	}
}
