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
							<li><a href="#"onclick="about_click(this)">${dDto.menuContents}</a></li>
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
							<li><a href="#"onclick="port_click(this)">${dDto.menuContents}</a></li>
						</c:if>
					</c:if>
				</c:forEach>
			</ul></li>
		<li><a href="brand_Brand" class="depth1">BRAND</a>
			<ul class="depth2">
				<c:forEach var="dDto" items="${Flist}">
					<c:if test="${dDto.menuParents == 'BRAND' }">
						<c:if test="${dDto.menuState ==1 }">
							<li><a href="#"onclick="brand_click(this)">${dDto.menuContents}</a></li>
						</c:if>
					</c:if>
				</c:forEach>
			</ul></li>
		<li><a href="solution_Adrive" class="depth1">SOLUTION</a>
			<ul class="depth2">
				<c:forEach var="dDto" items="${Flist}">
					<c:if test="${dDto.menuParents == 'SOLUTION' }">
						<c:if test="${dDto.menuState ==1 }">
							<li><a href="#"onclick="sol_click(this)">${dDto.menuContents}</a></li>
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
function about_click(ths){
	var hello = $(ths).text();
    hello = hello.replace(/ /g,"");
    
    
    location.href = "/homepage/about_"+ hello;
}
	
	
function brand_click(ths){
	var hello = $(ths).text();
    hello = hello.replace(/ /g,"");
    
    
    location.href = "/homepage/brand_"+ hello;
}

function port_click(ths){
	var hello = $(ths).text();
    hello = hello.replace(/ /g,"");
    hello = hello.replace("-","");
    
    location.href = "/homepage/portfolio_"+ hello;
}

function sol_click(ths){
	var hello = $(ths).text();
    hello = hello.replace(/ /g,"");
    hello = hello.replace("","");
    
    location.href = "/homepage/solution_"+ hello;
}
</script>

