package kr.stam.homepage.controller;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.stam.homepage.dao.DepthDao;
import kr.stam.homepage.dao.ProductDao;
import kr.stam.homepage.dao.ProductLogDao;
import kr.stam.homepage.dto.DepthDto;
import kr.stam.homepage.dto.ProductDto;
import kr.stam.homepage.dto.ProductLogDto;

@Controller
public class ProductController {
	@Autowired
	private ProductDao pd;

	@Autowired
	private DepthDao dDao;

	@Autowired
	private ProductLogDao pLDao;

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  ProductController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:51:35 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param request
	  @param model
	  @param session
	  @param menuContents				==> 2021, 2020, brand 등과같은 하위메뉴
	  @param menuParents				==> ABOUT BRAND등 최상위 메뉴
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("product")
	public String product(HttpServletRequest request, Model model, HttpSession session, String menuContents,
			String menuParents) {
		if (session.getAttribute("level") != null) {			//로그인 확인
			Integer ProductnextNum = pd.ProductnextNum();
			session.setAttribute("ProductnextNum", ProductnextNum + 1);

			ArrayList<DepthDto> Flist = dDao.Flist();			//좌측 메뉴 디비에서 불러옴
			model.addAttribute("Flist", Flist);	
			
			ArrayList<ProductDto> list = pd.list(menuContents);		//우측 사업디비에서 불러옴
			if(menuParents == null || menuParents.length() == 0) {		//menuParents에 내용이 없을경우 지정(브랜드의 경우 메뉴탭에서 미리지정해줬음)
				menuParents = "PORTFOLIO";
			}
			session.setAttribute("menuContents", menuContents);
			session.setAttribute("menuParents", menuParents);
			model.addAttribute("list", list);
			
			return "product/product";
		} else {
			return "redirect:/main";
		}
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  ProductController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:53:41 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param request
	  @param model
	  @param session
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/product_insert")
	public String depth_insert(HttpServletRequest request, Model model, HttpSession session) {
		String menuParents = (String) session.getAttribute("menuParents");
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		if (session.getAttribute("level") != null) {			//로그인 확인
			String referer = (String) request.getHeader("REFERER");		//직전 페이지 URL가져오기
			int contentsIndex = referer.lastIndexOf("=");				// 직전페이지 URL중 = Index를 알아내기
			String menuContents = referer.substring(contentsIndex+1);	//menuContents값을 가져오기
			
			session.setAttribute("referMenuContents", menuContents);
			return "product/product_insert";
		}

		else {

			return "redirect:/product";
		}
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  ProductController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:55:05 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param pdto			=>productDto
	  @param pLdto			=>productLogDto
	  @param session
	  @param pLogo			=>product_insert.jsp에서 회사로고이미지를 MultipartFile 로받아옴
	  @param pImg			=>product_insert.jsp에서 사업이미지를 MultipartFile 로받아옴
	  @param yearLogo		=>product_insert.jsp에서 사업설명이미지를 MultipartFile 로받아옴
	  @param menuContents	=>menuContents로 2021,2020 ,brand같은 하위메뉴를 가져옴
	  @param yearKeyword	=>product_insert.jsp에서 사업설명을 받아옴
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping(value = "/product_insert_ok", method = RequestMethod.POST)
	public String product_insert_ok(ProductDto pdto, ProductLogDto pLdto, HttpSession session, MultipartFile[] pLogo,
			MultipartFile[] pImg, MultipartFile[] yearLogo, String menuContents,String yearKeyword) {
	
		
		if (session.getAttribute("ProductnextNum") != null) {
			int ProductnextNum = (int) session.getAttribute("ProductnextNum");
			
			pLdto.setProductCode(ProductnextNum + 1);
		}else {
			int ProductnextNum = 1;
		}

	

//		String uploadFolder = "C:\\Users\\stam\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\logo";
//		String uploadFolder2 = "C:\\Users\\stam\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\product";
//		String uploadFolder3 = "C:\\Users\\stam\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images";

		String uploadFolder = "C:\\Users\\woonho\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\logo";
		String uploadFolder2 = "C:\\Users\\woonho\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\product";
		String uploadFolder3 = "C:\\Users\\woonho\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images";
		
		for (MultipartFile multipartFile : pLogo) {
			System.out.println("---------------------------로고 파일------------------------------------");
			System.out.println("Upload File Name : " + multipartFile.getOriginalFilename());
			System.out.println("Upload File Size : " + multipartFile.getSize());
			pdto.setCompanyLogo(multipartFile.getOriginalFilename());
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());

			try {
				multipartFile.transferTo(saveFile);

			} catch (Exception e) {
				System.out.println("저장 실패");
			}
		}

		if(yearKeyword == null) {//브랜드인지 포트폴리오인지 구분
			for (MultipartFile multipartFile : yearLogo) {
				System.out.println("---------------------------년도 로고 파일------------------------------------");
				System.out.println("Upload File Name : " + multipartFile.getOriginalFilename());
				System.out.println("Upload File Size : " + multipartFile.getSize());
				pdto.setProductLogo(multipartFile.getOriginalFilename());
				File saveFile = new File(uploadFolder3, multipartFile.getOriginalFilename());
	
				try {
					multipartFile.transferTo(saveFile);
	
				} catch (Exception e) {
					System.out.println("저장 실패");
				}
			}
		}else {//브랜드는 사업로고가 없고 텍스트가존재한다.
			pdto.setProductLogo(yearKeyword);
		}
		
		for (MultipartFile multipartFile : pImg) {
			System.out.println("---------------------------제품이미지 파일------------------------------------");
			System.out.println("Upload File Name : " + multipartFile.getOriginalFilename());
			System.out.println("Upload File Size : " + multipartFile.getSize());
			pdto.setProductImg(multipartFile.getOriginalFilename());
			File saveFile = new File(uploadFolder2, multipartFile.getOriginalFilename());

			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				System.out.println("저장 실패");
			}
		}

		pd.insert(pdto);

		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");
		String menuParents = (String) session.getAttribute("menuParents");
		pLdto.setManagerId(managerId);
		pLdto.setManagerName(managerName);

		pLdto.setPLogType("Insert");

		pLDao.insert(pLdto);
		
		if(!menuParents.isEmpty() &&menuParents.equals("BRAND")  ) {			//menuParents가 공백이 아니면서 값이 BRAND일경우 동작
			return "redirect:/product?menuParents="+menuParents+"&menuContents=" + menuContents;
		}else {
			return "redirect:/product?menuContents=" + menuContents;
		}
		
	
	}


	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  ProductController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:58:16 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param session
	  @param pLdto			=>productLogDto
	  @param chArr			=>product.jsp에서 체크된 제품의 번호(menuCode)를 가져옴
	  @param pDto			=>productDto
	  @return
	  @throws Exception : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@ResponseBody
	@RequestMapping(value = "/product_delete", method = RequestMethod.POST)
	public int product_delete(HttpSession session, ProductLogDto pLdto,
			@RequestParam(value = "chbox[]") List<String> chArr, ProductDto pDto) throws Exception {
		int result = 0;

		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");
		for (String i : chArr) {
			int productCode = Integer.parseInt(i);
			pDto.setProductCode(productCode);
			pd.delete(pDto);
			pLdto.setProductCode(productCode);
			pLdto.setManagerId(managerId);
			pLdto.setManagerName(managerName);
			pLdto.setPLogType("delete");
			pLDao.insert(pLdto);
		}

		result = 1;

		return result;
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  ProductController : The type enclosing the method (선택된 메소드의 타입)
	  오후 10:59:25 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param request
	  @param pDto			=>productDto
	  @param model
	  @param session
	  @return
	  @throws Exception : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/product_content")
	public String content(HttpServletRequest request, ProductDto pDto, Model model, HttpSession session)
			throws Exception {
		if (session.getAttribute("level") != null) {
			int productCode = Integer.parseInt(request.getParameter("productCode"));

			ArrayList<DepthDto> Flist = dDao.Flist();
			model.addAttribute("Flist", Flist);
			pDto = pd.content(productCode);
			model.addAttribute("pDto", pDto);
			return "product/product_content";
		} else {
			return "redirect:/main";
		}
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  ProductController : The type enclosing the method (선택된 메소드의 타입)
	  오후 11:02:02 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param request
	  @param model
	  @param session
	  @param pDto				=>productDto
	  @return : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("/product_update")
	public String product_update(HttpServletRequest request, Model model, HttpSession session, ProductDto pDto) {

		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		if (session.getAttribute("level") != null) {
			int productCode = Integer.parseInt(request.getParameter("productCode"));

			pDto = pd.content(productCode);
			session.setAttribute("productCode", productCode);
			
			model.addAttribute("pDto", pDto);
			return "product/product_update";
		}

		else {

			return "redirect:/main";
		}
	}

	/**
	  2022. 1. 6. : Current date (현재 날짜)
	  ProductController : The type enclosing the method (선택된 메소드의 타입)
	  오후 11:02:16 : Current time (현재 시간)
	  woonho : User name (사용자 이름)
	  2022 : Current year (현재 연도)
	  @param request
	  @param pLdto					=>productLogDto
	  @param pDto					=>productDto
	  @param session
	  @param yearKeyword			=>product_update.jsp에서 사업설명 값 받아옴
	  @param mRequest				=>Multipart값을 받아옴
	  @return
	  @throws Exception
	  @throws IOException : Generated Javadoc tags (@param, @return...) (Javedoc 태그 생성)
	
	*/
	@RequestMapping("product_update_ok")
	public String update_ok(HttpServletRequest request, ProductLogDto pLdto, ProductDto pDto, HttpSession session,String yearKeyword,
			MultipartHttpServletRequest mRequest) throws Exception, IOException {

		int productCode = (int) session.getAttribute("productCode");
		pDto.setProductCode(productCode);
		String menuContents = request.getParameter("menuContents");
		String uploadFolder3 = "C:\\Users\\woonho\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images";
		String uploadFolder2 = "C:\\Users\\woonho\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\product";
		String uploadFolder = "C:\\Users\\woonho\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\logo";
//		String uploadFolder = "C:\\Users\\stam\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\logo";
//		String uploadFolder2 = "C:\\Users\\stam\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\product";
//		String uploadFolder3 = "C:\\Users\\stam\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images";
		MultipartFile multipartFileLogo = mRequest.getFile("pLogo");
		MultipartFile multipartFileProduct = mRequest.getFile("pImg");
		MultipartFile multipartFileYear = mRequest.getFile("yearLogo");
//고객 로고
		int logoCancleflag = Integer.parseInt(request.getParameter("logoCancleflag"));

		if (logoCancleflag == 0) { // 이전 이미지 그대로 사용
			String companyLogo = request.getParameter("companyLogo");
			
			pDto.setCompanyLogo(companyLogo);

		} else if (logoCancleflag == 1) { // 새로운 이미지 사용
			
			pDto.setCompanyLogo(multipartFileLogo.getOriginalFilename());
			File saveFileLogo = new File(uploadFolder, multipartFileLogo.getOriginalFilename());
			multipartFileLogo.transferTo(saveFileLogo);

		} else { // 이미지 사용안함

			pDto.setCompanyLogo(" ");
		}
// 화면이미지
		int productCancleFlag = Integer.parseInt(request.getParameter("productCancleflag"));
		if (productCancleFlag == 0) { // 이전 이미지 그대로 사용
			String productImg = request.getParameter("productImg");
			pDto.setProductImg(productImg);

		} else if (productCancleFlag == 1) { // 새로운 이미지 사용

			pDto.setProductImg(multipartFileProduct.getOriginalFilename());
			File saveFileProduct = new File(uploadFolder2, multipartFileProduct.getOriginalFilename());
			multipartFileProduct.transferTo(saveFileProduct);

		} else { // 이미지 사용안함

			pDto.setProductImg(" ");
		}
// 사업종류
		
if(yearKeyword == null) {//브랜드인지 포트폴리오인지 구분
		int yearCancleFlag = Integer.parseInt(request.getParameter("yearCancleflag"));
		if (yearCancleFlag == 0) { // 이전 이미지 그대로 사용
			String yearImg = request.getParameter("yearImg");
			pDto.setProductLogo(yearImg);

		} else if (yearCancleFlag == 1) { // 새로운 이미지 사용

			pDto.setProductLogo(multipartFileYear.getOriginalFilename());
			File saveFileYear = new File(uploadFolder3, multipartFileYear.getOriginalFilename());
			multipartFileYear.transferTo(saveFileYear);

		} else { // 이미지 사용안함

			pDto.setProductLogo(" ");
		}
}else {//브랜드는 사업로고가 없고 텍스트가존재한다.
	pDto.setProductLogo(yearKeyword);
}
		
		

		String managerId = (String) session.getAttribute("mId");
		String managerName = (String) session.getAttribute("mName");
		String menuParents = (String) session.getAttribute("menuParents");
		
		pd.update(pDto);
		pLdto.setProductCode(productCode);
		pLdto.setManagerId(managerId);
		pLdto.setManagerName(managerName);
		pLdto.setPLogType("update");
		pLDao.insert(pLdto);
		
		if(menuParents.equals("BRAND")&& !menuParents.isEmpty() ) {
			return "redirect:/product?menuParents="+menuParents+"&menuContents=" + menuContents;
		}else {
			return "redirect:/product?menuContents=" + menuContents;
		}
		
	}
}
