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
											<td class="insert_td_name">메뉴 선택</td>
											<td class="insert_td_input"><select name="menuContents"
												id="menu_contents">
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
											<td class="insert_td_name">고객명</td>
											<td class="insert_td_input"><input type="text"
												onkeyup="fn_checkByte(this)" required name="companyName"
												value="${pDto.companyName }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">사업명</td>
											<td class="insert_td_input"><input type="text" required
												maxlength="25" name="productName"
												value="${pDto.productName }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">사업 설명</td>
											<td class="insert_td_input"><textarea required
													maxlength="100" name="productContents" class="pcInput">${pDto.productContents }</textarea></td>
										</tr>


										<tr class="insert_tr">
											<c:if test="${menuParents == 'BRAND'}">
												<td class="insert_td_name">브랜드 내용</td>
												<td class="insert_td_input"><input type="text" 
													 name="brandContents"
													value="${pDto.brandContents }"></td>
											</c:if>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">고객 로고</td>
											<td class="insert_td_input"><input type="file"
												id="log_img" style="display: none" name="pLogo"> <label
												for="log_img" id=log_img_update>${pDto.companyLogo }
													수정</label> <label id="log_img_cancle" onclick="cancle()"
												style="display: none">취소</label> <label id="log_img_delete"
												onclick="delete_img()">삭제</label> <input type="hidden"
												id="cancleflag" name="logoCancleflag" value="0"> <input
												type="hidden" name="companyLogo"
												value="${pDto.companyLogo }"></td>
										</tr>
										<c:choose>
											<c:when test="${menuParents != 'BRAND'}">
												<tr class="insert_tr">
													<td class="insert_td_name">사업 로고</td>
													<td class="insert_td_input"><input type="file"
														id="year_img" style="display: none" name="yearLogo"><label
														for="year_img" id=year_img_update>${pDto.productLogo }
															수정</label> <label id="year_img_cancle" onclick="year_cancle()"
														style="display: none">취소</label> <label
														id="year_img_delete" onclick="year_delete_img()">삭제</label>
														<input type="hidden" id="yearcancleflag"
														name="yearCancleflag" value="0"> <input
														type="hidden" name="yearImg" value="${pDto.productLogo }">
													</td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr class="insert_tr">
													<td class="insert_td_name">사업 키워드</td>
													<td class="insert_td_input"><input type="text" required maxlength="15";
														name="yearKeyword" value="${pDto.productLogo }"></td>
												</tr>
											</c:otherwise>
										</c:choose>


										<tr class="insert_tr">
											<td class="insert_td_name">화면 이미지</td>
											<td class="insert_td_input"><input type="file"
												id="product_img" style="display: none" name="pImg">
												<label for="product_img" id=product_img_update>${pDto.productImg }
													수정</label> <label id="product_img_cancle"
												onclick="product_cancle()" style="display: none">취소</label>
												<label id="product_img_delete"
												onclick="product_delete_img()">삭제</label> <input
												type="hidden" id="productcancleflag"
												name="productCancleflag" value="0"> <input
												type="hidden" name="productImg" value="${pDto.productImg }">
											</td>
										</tr>
										<tr class="insert_tr insert_update_tr">
											<td>
												<button class="delete_btn" onclick="prev_btn(event)">이전</button>
											</td>
											<td>
												<button class="delete_btn" onclick="content_btn(event)">목록</button>
											</td>

											<td><button>완료</button></td>
										</tr>
									</table>
								</form>

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
<script src="resources/static/js/product/productupdate.js"></script>
<script src="resources/static/js/product/productTextChk.js"></script>
<script>
	window.onload = function() {
		//페이지 입장시 자신이 입장한 뎁스가 자동으로 선택
		let menu_contents = "${pDto.menuContents}";
		$("#menu_contents").val(menu_contents).attr("selected", "selected");
	}
	//이전페이지
	function prev_btn(event) {
		event.preventDefault();
		const productCode = ${productCode};
		location.href = "/homepage/product_content?productCode=" + productCode;
	}
	//목록페이지
	function content_btn(event) {
		event.preventDefault();
		const menuContents = "${pDto.menuContents}";
		const menuParents = "${menuParents}";
		
		if(menuParents == "BRAND"){
			location.href = "/homepage/product?menuParents="+menuParents+ "&menuContents=" + menuContents;
		}else{
			location.href = "/homepage/product?menuContents=" + menuContents;
		}

	}
</script>

</html>