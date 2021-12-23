package kr.stam.homepage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.stam.homepage.dao.NoticeDao;
import kr.stam.homepage.dao.NoticeLogDao;
import kr.stam.homepage.dto.NoticeDto;
import kr.stam.homepage.dto.NoticeLogDto;





@Controller
public class NoticeController{
	
	@Autowired
	private SqlSession sqlSession;


	
	@RequestMapping("/notice")
	public String notice(NoticeDto ndto ,HttpServletRequest request,Model model,HttpSession session ) {
		NoticeDao ndao=sqlSession.getMapper(NoticeDao.class);
	
		Integer nextNum = ndao.nextNum();
		session.setAttribute("nextNum", nextNum);
		 int index; // 1페이지=>0, 2페이지는 10
		   int page;
		   
		   // 사용자가 페이지 값을 보내지 않는 경우=> 게시판에 처음 접근 
		   if(request.getParameter("page")==null)
		   {
			   page=1;
			   index=0;
		   }
		   else // 사용자가 페이지 값을 보내는 경우
		   {
			   page=Integer.parseInt(request.getParameter("page"));
			   index=(page-1)*10;
		   }
		   
		   // 게시판 하단에 다른페이지 이동을 위한 링크
		   int pstart=page/10;
		   if(page%10 == 0) // 10 의 배수일 경우
		     pstart=pstart-1;
		   
		   pstart=(pstart*10)+1;
		   int pend=pstart+9;
		   // 검색에 필요한 필드값과 검색어를 가져와서 검색을 한다.
		   
		   String cla,sword;
		   if(request.getParameter("cla")==null)
			   cla="noticeTitle";
		   else
		       cla=request.getParameter("cla");
		   
		   if(request.getParameter("sword")==null)
			   sword="";
		   else
		       sword=request.getParameter("sword");
	
		ArrayList<NoticeDto> nlist = ndao.nlist(cla,sword,index);
		
		System.out.println(nlist);
	
		model.addAttribute("nlist",nlist);
		model.addAttribute("pstart",pstart);
		model.addAttribute("page",page);
		
		model.addAttribute("sword",sword);
		Integer pagecnt=ndao.get_pagecnt(cla,sword); // cla,sword적용
		System.out.println("총 페이지는" + pagecnt);
		session.setAttribute("pagecnt", pagecnt);
		model.addAttribute("pagecnt",pagecnt);
		// 출력될 pend값이 총페이지보다 클경우는 pend에 총페이지값을 전달
			if(pend > pagecnt) {
				pend=pagecnt;
			}
			model.addAttribute("pend",pend);	
		return "notice/notice";
	}
	@RequestMapping("/insert")
	public String insert() {
		
		return "notice/insert";
	}
	@RequestMapping("/insert_ok")
	public String insert_ok(HttpServletRequest request,NoticeDto ndto,Model model ,NoticeLogDto nLDto,HttpSession session) throws Exception {
		NoticeDao ndao=sqlSession.getMapper(NoticeDao.class);
		NoticeLogDao nLDao=sqlSession.getMapper(NoticeLogDao.class);
		
		int nextNum = (int) session.getAttribute("nextNum");
		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");
		
		ndto.setManagerName(managerName);
		nLDto.setNoticeNum(nextNum+1);
		nLDto.setManagerId(managerId);
		nLDto.setManagerName(managerName);
		nLDto.setLogType("Insert");
		
		model.addAttribute("ndto",ndto);
		
		ndao.insert(ndto);
		nLDao.insert(nLDto);
		return "redirect:/notice";
	}
	
	@RequestMapping("/content")
	public String content(HttpServletRequest request,NoticeDto ndto,Model model) throws Exception {
		int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));
		NoticeDao ndao = sqlSession.getMapper(NoticeDao.class);
		ndto = ndao.content(noticeNum);
		model.addAttribute("ndto",ndto);
		return "notice/content";
	}
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request,NoticeDto ndto,Model model,NoticeLogDto nLDto,HttpSession session) throws Exception {
		int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));
		NoticeDao ndao = sqlSession.getMapper(NoticeDao.class);
		NoticeLogDao nLDao=sqlSession.getMapper(NoticeLogDao.class);
		
	
		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");
		
	
		nLDto.setManagerId(managerId);
		nLDto.setManagerName(managerName);
		nLDto.setLogType("Delete");
		ndao.delete(noticeNum);
		nLDao.insert(nLDto);
		return "redirect:/notice";
	}
	@RequestMapping("update")
	public String update(HttpServletRequest request,NoticeDto ndto,Model model) {
		int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));
		NoticeDao ndao = sqlSession.getMapper(NoticeDao.class);
		ndto = ndao.content(noticeNum);
		model.addAttribute("ndto",ndto);
		return "notice/update";
	}
	@RequestMapping("update_ok")
	public String update_ok(HttpServletRequest request,NoticeDto ndto,NoticeLogDto nLDto,HttpSession session) {
		
		NoticeDao ndao = sqlSession.getMapper(NoticeDao.class);
		NoticeLogDao nLDao=sqlSession.getMapper(NoticeLogDao.class);
		
		
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