package kr.stam.homepage.Service;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.stam.homepage.Dao.Notice_Dao;
import kr.stam.homepage.Dto.Notice_Dto;

@Service
public class Notice_ServiceImpl implements Notice_Service{

	@Autowired
	private SqlSession sqlSession;

	
	public void insert(Notice_Dto ndto,HttpServletRequest request,Model model) {
		System.out.println("서비스 동작");
		Notice_Dao ndao=sqlSession.getMapper(Notice_Dao.class);
		System.out.println("서비스에서 DAO 매퍼");
		String nwriter = "관리자";
		ndto.setNwriter(nwriter);
		System.out.println("관리자 값 생성");
		model.addAttribute("ndto",ndto);
		System.out.println("모델로 뿌림");
		
	
		ndao.insert(ndto);
	}
	
}
