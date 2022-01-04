<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${level == 1 }">
	<ul class="navi">
		<li><a href="depth?MenuParents=ABOUT" class="depth1">ABOUT</a><a
			href="depth?MenuParents=ABOUT" class="depth1"
			class="icon-left-padding"><i class="far fa-edit"></i></a>
			<ul class="depth2">
				<c:forEach var="dDto" items="${Flist}">
					<c:if test="${dDto.menuParents == 'ABOUT' }">
						<c:if test="${dDto.menuState ==1 }">
							<li><a href="#">${dDto.menuContents}</a></li>
						</c:if>
					</c:if>
				</c:forEach>
			</ul></li>
		<li><a href="depth?MenuParents=PORTFOLIO" class="depth1">IT
				PORTFOLIO</a><a class="depth1" href="depth?MenuParents=PORTFOLIO"><i
				class="far fa-edit"></i></a>
			<ul class="depth2">
				<c:forEach var="dDto" items="${Flist}">
					<c:if test="${dDto.menuParents == 'PORTFOLIO' }">
						<c:if test="${dDto.menuState ==1 }">
							<li><a href="#" onclick="port_click(this)">${dDto.menuContents}</a></li>
						</c:if>
					</c:if>
				</c:forEach>
			</ul></li>
		<li><a href="depth?MenuParents=BRAND" class="depth1">BRAND</a><a
			class="depth1" href="depth?MenuParents=BRAND"><i
				class="far fa-edit"></i></a>
			<ul class="depth2">
				<c:forEach var="dDto" items="${Flist}">
					<c:if test="${dDto.menuParents == 'BRAND' }">
						<c:if test="${dDto.menuState ==1 }">
							<li><a href="#" onclick="brand_click(this)">${dDto.menuContents}</a></li>
						</c:if>
					</c:if>
				</c:forEach>
			</ul></li>
		<li><a href="depth?MenuParents=SOLUTION" class="depth1">SOLUTION</a><a
			class="depth1" href="depth?MenuParents=SOLUTION"><i
				class="far fa-edit"></i></a>
			<ul class="depth2">
				<c:forEach var="dDto" items="${Flist}">
					<c:if test="${dDto.menuParents == 'SOLUTION' }">
						<c:if test="${dDto.menuState ==1 }">
							<li><a href="#">${dDto.menuContents}</a></li>
						</c:if>
					</c:if>
				</c:forEach>
			</ul></li>
		<li><a href="#" class="depth1">ManageMent</a>
			<ul class="depth2">
				<li><a href="logout">Logout</a></li>
				<li><a href="notice">Notice</a></li>
			</ul></li>
	</ul>
</c:if>
<script>
	function brand_click(ths) {
		var url = $(ths).text();
		url = url.replace(/ /g, "");

		location.href = "product?menuParents=BRAND&menuContents=" + url;
	}

	function port_click(ths) {
		var url = $(ths).text();
		url = url.replace(/ /g, "");
		url = url.replace("-", "");
		location.href = "product?menuContents=" + url;
	}
</script>