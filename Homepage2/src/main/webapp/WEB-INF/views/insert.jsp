<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>STAM</title>
<link rel="stylesheet" href="resource/plugins/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" href="resource/css/common.css">
<link rel="stylesheet" href="resource/css/style.css">

<script src="resource/js/jquery-3.2.1.min.js"></script>
<script src="resource/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resource/js/common.js"></script>
<style>
.notice-div{
  position: relative;
}
	.notice-table{
		 width:1135px;
		 height:640px;
		 text-align: center;
		 display:flex;
		 justify-content: center;
		 flex-direction: column;
		 position:absolute;
		 left:200px;
		 bottom:300px;
	}
	.notice-td ,.notice-th {
	 border: 1px solid black;
	}
	.notice-td{
		height:85px;
	}
	.td-num{
		width: 150px;
		height:110px
	}
	
	.td-mangager{
		width: 295px;
		height:110px
	}
	.Td-Title{
		width: 560px;
		height:110px
	}
	.Td-Select{
		width:130px;
		height:110px;
	}
	.notice-span{
		display:flex;
		position:absolute;
		left:200px;
		bo:60px;
		font-size:60px;
	}
</style>
</head>
<body>
<div class="wrapper" id="mainWrapper">
 <header class="header item">
    <h1 class="logo"><a href="main"><img src="resource/images/logo.png" alt="STAM"></a></h1>
    <button class="btn_nav mo">
      <span></span><span></span><span></span>
    </button>
    <button class="btn_back mo"></button>
    <nav class="navi_wrap">
      <ul class="navi">
        <li>
          <a href="intro" class="depth1">ABOUT</a>
          <ul class="depth2">
            <li><a href="intro">Intro + Vision & Business</a></li>
            <li><a href="about_history">History</a></li>
            <li><a href="organizationChart">Organization Chart</a></li>
            <li><a href="withClient">With CLIENT</a></li>
          </ul>
        </li>
        <li>
          <a href="portfolio_2021" class="depth1">IT portfolio</a>
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
          <a href="brand" class="depth1">Brand</a>
          <ul class="depth2">
            <li><a href="brand">Brand</a></li>
            <li><a href="brand_promotion">Promotion</a></li>
            <li><a href="brand_edit">Edit</a></li>
          </ul>
        </li>
        <li>
          <a href="solution_Adrive" class="depth1">SOLUTION</a>
          <ul class="depth2">
            <li><a href="solution_Adrive">A.Drive</a></li>
            <li><a href="solution_ST_framework">ST Framework</a></li>
            <li><a href="solution_system1">통합 SNS 관리 시스템</a></li>
            <li><a href="solution_system2">구간별 암호화 시스템</a></li>
          </ul>
        </li>
        <li>
        	 <a href="notice" class="depth1">Notice</a>
        </li>
      </ul>
    </nav>
  </header>

  <div class="container item">

    <div class="swiper-container">
      <div class="swiper-wrapper">

        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">HOME</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="notice-div">
          	<span class="notice-span">Notice Insert</span>
          	<form method="post" action="insert_ok">
	       		<table class="notice-table">
	       			<tr>
	       				<td>제목</td>
	       				<td><input type="text" placeholder="제품명을 입력해주세요." name="ntitle"></td>	
	       			</tr>
	       			<tr>
	      			 	<td>내용</td>
	       				<td><textarea placeholder="내용을 입력해주세요" name="ncontent"></textarea></td>	
	       			</tr>
	       			
	       			<tr>
		       				<td><button>추가</button></td>
		       				<td><a href="notice">목록</a></td>
		       		</tr>
	       		</table>
       		</form>
       		
          </div>

      </div><!-- //swiper-wrapper -->
      <div class="swiper-pagination"></div>
    </div><!-- //swiper-container -->
    <p class="bottom_text">Strategy + Ambition</p>
  </div><!-- //container -->

</div>
</div>


</body>

</html>