<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${level != 1 }">
	<ul class="navi">
		<li><a href="about_Intro" class="depth1">ABOUT</a>
			<ul class="depth2">
				<c:forEach var="dDto" items="${Flist}">
					<c:if test="${dDto.menuParents == 'ABOUT' }">
						<c:if test="${dDto.menuState ==1 }">
							<li><a href="javascript:void(0);" onclick="about_click();">${dDto.menuContents}</a></li>
						</c:if>
					</c:if>
				</c:forEach>
			</ul></li>
		<li><a href="portfolio_2021" class="depth1">IT
				PORTFOLIO</a>
			<ul class="depth2">
				<c:forEach var="dDto" items="${Flist}">
					<c:if test="${dDto.menuParents == 'PORTFOLIO' }">
						<c:if test="${dDto.menuState ==1 }">
							<li><a href="portfolio_${dDto.menuContents}">${dDto.menuContents}</a></li>
						</c:if>
					</c:if>
				</c:forEach>
			</ul></li>
		<li><a href="brand_Brand" class="depth1">BRAND</a>
			<ul class="depth2">
				<c:forEach var="dDto" items="${Flist}">
					<c:if test="${dDto.menuParents == 'BRAND' }">
						<c:if test="${dDto.menuState ==1 }">
							<li><a href="brand_${dDto.menuContents}">${dDto.menuContents}</a></li>
						</c:if>
					</c:if>
				</c:forEach>
			</ul></li>
		<li><a href="solution_Adrive" class="depth1">SOLUTION</a>
			<ul class="depth2">
				<c:forEach var="dDto" items="${Flist}">
					<c:if test="${dDto.menuParents == 'SOLUTION' }">
						<c:if test="${dDto.menuState ==1 }">
							<li><a href="solution_${dDto.menuContents}">${dDto.menuContents}</a></li>
						</c:if>
					</c:if>
				</c:forEach>
			</ul></li>
		<li><a href="login" class="depth1">ManageMent</a>
			<ul class="depth2">
				<li><a href="login">login</a></li>
				<li><a href="notice">Notice</a></li>
			</ul></li>
	</ul>
</c:if>



<script type="text/javascript">
function about_click(){

	String about_url = "test";
	alert(about_url);
}
	
</script>

