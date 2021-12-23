package kr.stam.homepage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.stam.homepage.dao.NoticeDao;
import kr.stam.homepage.dao.NoticeLogDao;

public class ClassImport {

	@Autowired
	private SqlSession sqlSession;
	
	NoticeDao ndao = sqlSession.getMapper(NoticeDao.class);
	NoticeLogDao nLDao = sqlSession.getMapper(NoticeLogDao.class);
}
