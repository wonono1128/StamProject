<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>STAM</title>
<link rel="stylesheet"
	href="resources/static/plugins/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="resources/static/css/common.css">
<link rel="stylesheet" href="resources/static/css/style.css">
<link rel="stylesheet"
	href="resources/static/css/product/product_insert.css">

<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper" id="mainWrapper">
		<header class="header item">
			<h1 class="logo">
				<a href="main"><img src="resources/static/images/logo.png"
					alt="STAM"></a>
			</h1>
			<button class="btn_nav mo">
				<span></span><span></span><span></span>
			</button>
			<button class="btn_back mo"></button>
			<nav class="navi_wrap">
				<jsp:include page="../customer_menu.jsp" />
				<jsp:include page="../manager_menu.jsp" />
			</nav>
		</header>
		<div class="container item">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="loca_div mo">
							<span class="loca">HOME</span>

						</div>
						<div class="insert_div">
							<div class="insert_title_div">
								<span class="insert_title_span">${menuContents }</span>
							</div>
							<div class="insert_contain">
								<form method="post" action="product_update_ok"
									enctype="multipart/form-data">
									<table class="insert_table">
										<tr class="insert_tr">
											<td class="insert_td_name">기업명</td>
											<td class="insert_td_input"><input type="text"
												name="companyName" value="${pDto.companyName }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">제품명</td>
											<td class="insert_td_input"><input type="text"
												name="productName" value="${pDto.productName }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">제품 설명</td>
											<td class="insert_td_input"><textarea
													name="productContents" class="pcInput">${pDto.productContents }</textarea></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">기업 로고</td>
											<td class="insert_td_input">
												<input type="file" id="1jpg" style="display:none"
												name="pLogo" >
												<label id="4jpg" onclick="cancle()" style="display:none">취소</label>
												<label for="1jpg" id="2jpg">${pDto.companyLogo } 수정</label>
											
												</td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">메뉴</td>
											<td class="insert_td_input"><select name="menuContents">
													<c:forEach var="dDto" items="${Flist}">
														<c:if test="${dDto.menuState == 1 }">
															<c:if test="${dDto.menuParents != 'SOLUTION' }">
																<c:if test="${dDto.menuParents != 'ABOUT' }">
																	<c:set var="menuContents" value="${dDto.menuContents}" />
																	<c:set var="menuContents2"
																		value="${fn:replace(menuContents,' ','')}" />
																	<c:set var="menuContents3"
																		value="${fn:replace(menuContents2,'-','')}" />
																	<option value="${menuContents3 }" selected>${menuContents3 }</option>
																</c:if>
															</c:if>
														</c:if>
													</c:forEach>
											</select></td>
										</tr>

										<tr class="insert_tr">
											<td class="insert_td_name">브랜드 내용</td>
											<td class="insert_td_input"><input type="text"
												name="brandContents" value="${pDto.brandContents }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">제품 이미지</td>
											<td class="insert_td_input"><input type="file"
												name="pImg"></td>
										</tr>
										<tr class="insert_tr">
											<td><button class="insert_td_btn">수정</button></td>

										</tr>
									</table>
								</form>
								<button class="delete_btn"
									onclick="location.href='./product?menuContents=${pDto.menuContents}';">목록</button>
							</div>
						</div>
						<!-- //swiper-wrapper -->
						<div class="swiper-pagination"></div>
					</div>
					<!-- //swiper-container -->

				</div>
				<!-- //container -->

			</div>
		</div>
	</div>
</body>
<script>
	let j1jpg = document.getElementById("1jpg");
	let j2jpg = document.getElementById("2jpg");
	let j4jpg = document.getElementById("4jpg");
	let cancleflag = 0;  // 0 = >유지   1=> 변경
	let j3jpg ;
	function change(){
		if(!j1jpg.value){
			alert(typeof j3jpg);
			
			j1jpg.value = j3jpg;
			alert(j1jpg);
		}else{
			j1jpg.style.display = "";
			j2jpg.style.display = "none";
			j3jpg=j1jpg.value;
			j4jpg.style.display= "";
			cancleflag = 1;
			alert(typeof j1jpg.value);
		}

	}
	j1jpg.addEventListener('change',change);
	
	function cancle(){
		cancleflag = 0;
		j1jpg.style.display = "none";
		j2jpg.style.display = "";
		j3jpg=j1jpg.value;
		j4jpg.style.display= "none";
	}
</script>
</html>