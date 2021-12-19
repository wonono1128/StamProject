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
			   cla="ntitle";
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
		String nwriter = "������";
		ndto.setNwriter(nwriter);
		model.addAttribute("ndto",ndto);

		ndao.insert(ndto);
		return "redirect:/notice";
	}
}
