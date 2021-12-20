package kr.stam.homepage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.stam.homepage.Dao.Notice_Dao;
import kr.stam.homepage.Dto.Notice_Dto;





@Controller
public class Notice_Controller {
	
	@Autowired
	private SqlSession sqlSession;


	
	@RequestMapping("/notice")
	public String notice(Notice_Dto ndto ,HttpServletRequest request,Model model) {
		Notice_Dao ndao=sqlSession.getMapper(Notice_Dao.class);
		 int index; // 1������=>0, 2�������� 10
		   int page;
		   
		   // ����ڰ� ������ ���� ������ �ʴ� ���=> �Խ��ǿ� ó�� ���� 
		   if(request.getParameter("page")==null)
		   {
			   page=1;
			   index=0;
		   }
		   else // ����ڰ� ������ ���� ������ ���
		   {
			   page=Integer.parseInt(request.getParameter("page"));
			   index=(page-1)*10;
		   }
		   
		   // �Խ��� �ϴܿ� �ٸ������� �̵��� ���� ��ũ
		   int pstart=page/10;
		   if(page%10 == 0) // 10 �� ����� ���
		     pstart=pstart-1;
		   
		   pstart=(pstart*10)+1;
		   int pend=pstart+9;
		   // �˻��� �ʿ��� �ʵ尪�� �˻�� �����ͼ� �˻��� �Ѵ�.
		   
		   String cla,sword;
		   if(request.getParameter("cla")==null)
			   cla="notice_title";
		   else
		       cla=request.getParameter("cla");
		   
		   if(request.getParameter("sword")==null)
			   sword="";
		   else
		       sword=request.getParameter("sword");
		ArrayList<Notice_Dto> nlist = ndao.nlist(cla,sword,index);
		
		model.addAttribute("nlist",nlist);
		model.addAttribute("pstart",pstart);
		model.addAttribute("page",page);
		model.addAttribute("sword",sword);
		Integer pagecnt=ndao.get_pagecnt(cla,sword); // cla,sword����
		model.addAttribute("pagecnt",pagecnt);
		// ��µ� pend���� ������������ Ŭ���� pend�� ������������ ����
			if(pend > pagecnt) {
				pend=pagecnt;
			}
			model.addAttribute("pend",pend);	
		return "/notice";
	}
	@RequestMapping("/insert")
	public String insert() {
		
		return "/insert";
	}
	@RequestMapping("/insert_ok")
	public String insert_ok(HttpServletRequest request,Notice_Dto ndto,Model model) throws Exception {
		Notice_Dao ndao=sqlSession.getMapper(Notice_Dao.class);
		String manager_name = "������";
		ndto.setManager_name(manager_name);
		model.addAttribute("ndto",ndto);

		ndao.insert(ndto);
		return "redirect:/notice";
	}
	
	@RequestMapping("/content")
	public String content(HttpServletRequest request,Notice_Dto ndto,Model model) throws Exception {
		int notice_num = Integer.parseInt(request.getParameter("notice_num"));
		Notice_Dao ndao = sqlSession.getMapper(Notice_Dao.class);
		ndto = ndao.content(notice_num);
		model.addAttribute("ndto",ndto);
		return "/content";
	}
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request,Notice_Dto ndto,Model model) throws Exception {
		int notice_num = Integer.parseInt(request.getParameter("notice_num"));
		Notice_Dao ndao = sqlSession.getMapper(Notice_Dao.class);
		ndao.delete(notice_num);

		return "redirect:/notice";
	}
	@RequestMapping("update")
	public String update(HttpServletRequest request,Notice_Dto ndto,Model model) {
		int notice_num = Integer.parseInt(request.getParameter("notice_num"));
		Notice_Dao ndao = sqlSession.getMapper(Notice_Dao.class);
		ndto = ndao.content(notice_num);
		model.addAttribute("ndto",ndto);
		return "/update";
	}
	@RequestMapping("update_ok")
	public String update_ok(HttpServletRequest request,Notice_Dto ndto) {

		int notice_num = Integer.parseInt(request.getParameter("notice_num"));
		String notice_title = request.getParameter("notice_title");
		String notice_contents =request.getParameter("notice_contents");

		Notice_Dao ndao = sqlSession.getMapper(Notice_Dao.class);
		ndao.update(ndto);
		
		return "redirect:/notice";
	}
}
