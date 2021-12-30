package kr.stam.homepage.controller;

import java.io.File;
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

import kr.stam.homepage.dao.DepthDao;
import kr.stam.homepage.dao.ProductDao;
import kr.stam.homepage.dto.DepthDto;
import kr.stam.homepage.dto.ProductDto;

@Controller
public class ProductController {
	@Autowired
	private ProductDao pd;

	@Autowired
	private DepthDao dDao;

	@RequestMapping("product")
	public String product(HttpServletRequest request, Model model, HttpSession session, String menuContents,
			String menuParents) {
		if (session.getAttribute("level") != null) {
			Integer nextNum = pd.nextNum();
			session.setAttribute("nextNum", nextNum + 1);

			ArrayList<DepthDto> Flist = dDao.Flist();
			model.addAttribute("Flist", Flist);

			ArrayList<ProductDto> list = pd.list(menuContents);
			session.setAttribute("MenuContents", menuContents);
			session.setAttribute("menuParents", menuParents);
			model.addAttribute("list", list);

			return "product/product";
		} else {
			return "redirect:/main";
		}
	}

	@RequestMapping("/product_insert")
	public String depth_insert(HttpServletRequest request, Model model, HttpSession session) {
		String menuParents = (String) session.getAttribute("menuParents");
		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		if (session.getAttribute("level") != null) {

			return "product/product_insert";
		}

		else {

			return "redirect:/product";
		}
	}

	@RequestMapping(value="/product_insert_ok", method=RequestMethod.POST)
	public String product_insert_ok(ProductDto pdto, HttpSession session, MultipartFile[] pLogo, MultipartFile[] pImg) {
		String menuContents = (String) session.getAttribute("menuContents");
		String uploadFolder2 = "C:\\Users\\woonho\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\portfolio";
		String uploadFolder = "C:\\Users\\woonho\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images";
		
//		String uploadFolder = "C:\\Users\\stam\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images";
//		String uploadFolder2 = "C:\\Users\\stam\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\portfolio";
		for(MultipartFile multipartFile : pLogo) {
			System.out.println("---------------------------로고 파일------------------------------------");
			System.out.println("Upload File Name : " + multipartFile.getOriginalFilename());
			System.out.println("Upload File Size : " + multipartFile.getSize());
			pdto.setCompanyLogo(multipartFile.getOriginalFilename());
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
				
			}catch (Exception e) {
				System.out.println("저장 실패");
			}
		}
		
		for(MultipartFile multipartFile : pImg) {
			System.out.println("---------------------------제품이미지 파일------------------------------------");
			System.out.println("Upload File Name : " + multipartFile.getOriginalFilename());
			System.out.println("Upload File Size : " + multipartFile.getSize());
			pdto.setProductImg(multipartFile.getOriginalFilename());
			File saveFile = new File(uploadFolder2, multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
			}catch (Exception e) {
				System.out.println("저장 실패");
			}
		}
		
		pd.insert(pdto);
		return "redirect:/product?menuContents=" + menuContents;
	}

	@ResponseBody
	@RequestMapping(value = "/product_delete", method = RequestMethod.POST)
	public int product_delete(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, ProductDto pDto)
			throws Exception {
		int result = 0;
		int productCode = 0;
		for (String i : chArr) {
			productCode = Integer.parseInt(i);
			pDto.setProductCode(productCode);
			pd.delete(pDto);
		}

		result = 1;

		return result;
	}

	@RequestMapping("/product_content")
	public String content(HttpServletRequest request, ProductDto pDto, Model model, HttpSession session)
			throws Exception {
		if (session.getAttribute("level") != null) {
			int productCode = Integer.parseInt(request.getParameter("productCode"));
			String menuContents = (String) session.getAttribute("menuContents");
			Integer listCount = pd.listCount(menuContents);
			pDto.setListCount(listCount);
			ArrayList<DepthDto> Flist = dDao.Flist();
			model.addAttribute("Flist", Flist);
			pDto = pd.content(productCode);
			model.addAttribute("pDto", pDto);
			return "product/product_content";
		} else {
			return "redirect:/main";
		}
	}

	@RequestMapping("/product_update")
	public String product_update(HttpServletRequest request, Model model, HttpSession session,ProductDto pDto) {

		ArrayList<DepthDto> Flist = dDao.Flist();
		model.addAttribute("Flist", Flist);
		if (session.getAttribute("level") != null) {
			int productCode = Integer.parseInt(request.getParameter("productCode"));
		
			pDto = pd.content(productCode);
			session.setAttribute("productCode",productCode);
			model.addAttribute("pDto", pDto);
			return "product/product_update";
		}

		else {

			return "redirect:/main";
		}
	}
	
	@RequestMapping("product_update_ok")
	public String update_ok(HttpServletRequest request, ProductDto pDto, HttpSession session, MultipartFile[] pLogo, MultipartFile[] pImg) {
		
		int productCode = (int) session.getAttribute("productCode");
		pDto.setProductCode(productCode);
		String menuContents = request.getParameter("menuContents");

		
		
		
		
		String uploadFolder = "C:\\Users\\woonho\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\logo";
		String uploadFolder2 = "C:\\Users\\woonho\\git\\StamProject\\Homepage\\src\\main\\resources\\static\\images\\product";

		
		for(MultipartFile multipartFile : pLogo) {
			System.out.println("---------------------------로고 파일------------------------------------");
			pDto.setCompanyLogo(multipartFile.getOriginalFilename());
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
				
			}catch (Exception e) {
				System.out.println("저장 실패");
			}
		}
		
		for(MultipartFile multipartFile : pImg) {
			System.out.println("---------------------------제품이미지 파일------------------------------------");
			pDto.setProductImg(multipartFile.getOriginalFilename());
			File saveFile = new File(uploadFolder2, multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
			}catch (Exception e) {
				System.out.println("저장 실패");
			}
		}
		
		pd.update(pDto);
		
		return "redirect:/product?menuContents=" + menuContents;
	}
}
