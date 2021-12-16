<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
window.onload = function(){
	console.log("url : "+$(location).attr('href'));
}

$(document).ready(function () { 
	// 마우스 오버시 add 추가 
			$(".intro").click(function () { 
				console.log("url : "+$(location).attr('href'));
				$(this).toggleClass("on"); 
				console.log($(this).hasClass("on")); 
				$(location).attr("href", "intro")
				}); 
			});

</script>

<header class="header item">
    <h1 class="logo"><a href="main"><img src="resource/images/logo.png" alt="STAM"></a></h1>
    <button class="btn_nav mo">
      <span></span><span></span><span></span>
    </button>
    <button class="btn_back mo"></button>
    <nav class="navi_wrap">
      <ul class="navi">
        <li>
          <a href="#" class="depth1">ABOUT</a>
          <ul class="depth2">
            <li class="intro"><a>Intro + Vision & Business</a></li>
            <li><a href="about_history">History</a></li>
            <li><a href="organizationChart">Organization Chart</a></li>
            <li><a href="withClient">With CLIENT</a></li>
          </ul>
        </li>
        <li>
          <a href="#" class="depth1">IT portfolio</a>
          <ul class="depth2">
            <li><a href="portfolio_2021">2021</a></li>
            <li><a href="portfolio_2020">2020</a></li>
            <li><a href="portfolio_2019">2019</a></li>
            <li><a href="portfolio_2018">2018</a></li>
            <li><a href="portfolio_2017">2017</a></li>
            <li><a href="portfolio_2016">-2016</a></li>
          </ul>
        </li>
        <li>
          <a href="#" class="depth1">Brand</a>
          <ul class="depth2">
            <li><a href="brand">Brand</a></li>
            <li><a href="brand_promotion">Promotion</a></li>
            <li><a href="brand_edit">Edit</a></li>
          </ul>
        </li>
        <li>
          <a href="#" class="depth1">SOLUTION</a>
          <ul class="depth2">
            <li><a href="solution_Adrive">A.Drive</a></li>
            <li><a href="solution_ST_framework">ST Framework</a></li>
            <li><a href="solution_system1">통합 SNS 관리 시스템</a></li>
            <li><a href="solution_system2">구간별 암호화 시스템</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  </header>