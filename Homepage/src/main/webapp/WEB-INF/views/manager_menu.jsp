<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<c:if test="${level == 1 }">
					<ul class="navi">
						<li><a href="depth?MenuParents=ABOUT" class="depth1 on">ABOUT</a><a href="depth?MenuParents=ABOUT"
							class="depth1" class="icon-left-padding"><i
								class="far fa-edit"></i></a>
							<ul class="depth2">
							<c:forEach var="dDto" items="${listAbout}">
								<li><a href="${dDto.menuContents}">${dDto.menuContents}</a></li>
							</c:forEach>
							</ul>
						</li>
						<li><a href="depth?MenuParents=PORTFOLIO" class="depth1">IT portfolio</a><a
							class="depth1"><i class="far fa-edit"></i></a>
							<ul class="depth2">
							<c:forEach var="dDto" items="${listPort}">
								<li><a href="${dDto.menuContents}">${dDto.menuContents}</a></li>
							</c:forEach>
							</ul></li>
						<li><a href="depth?MenuParents=BRAND" class="depth1">Brand</a><a class="depth1"><i
								class="far fa-edit"></i></a>
							<ul class="depth2">
							<c:forEach var="dDto" items="${listBrand}">
								<li><a href="${dDto.menuContents}">${dDto.menuContents}</a></li>
							</c:forEach>
							</ul></li>
						<li><a href="depth?MenuParents=SOLUTION" class="depth1">SOLUTION</a><a class="depth1"><i
								class="far fa-edit"></i></a>
							<ul class="depth2">
							<c:forEach var="dDto" items="${listSol}">
								<li><a href="${dDto.menuContents}">${dDto.menuContents}</a></li>
							</c:forEach>
							</ul></li>
						<li><a href="#" class="depth1">ManageMent</a>
							<ul class="depth2">
								<li><a href="logout">Logout</a></li>
								<li><a href="notice">Notice</a></li>
							</ul></li>
					</ul>
				</c:if>