<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"
    />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="author" content="webstoryboy" />
    <meta
      name="description"
      content="메가박스 사이트를 모티브로 삼은 메가한조 웹사이트입니다."
    />
    <meta
      name="keywords"
      content="메가박스, 유투브, 영화, 최신영화, 영화관, CGV, 롯데시네마, 웹스토리보이, 웹스, 사이트 만들기, 따라하기, 이미지 슬라이드"
    />
    <title>메가한조</title>

    <!-- css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/user/assets/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/user/assets/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/user/assets/css/swiper.css" />

    <!-- 파비콘 -->
    <link rel="shortcut icon" href="./assets/icons/favicon.ico" />
    <link
      rel="apple-touch-icon-precomposed"
      href="${pageContext.request.contextPath}/app/user/assets/icons/favicon_72.png"
    />
    <link
      rel="apple-touch-icon-precomposed"
      sizes="96x96"
      href="${pageContext.request.contextPath}/app/user/assets/icons/favicon_96.png"
    />
    <link
      rel="apple-touch-icon-precomposed"
      sizes="144x144"
      href="${pageContext.request.contextPath}/app/user/assets/icons/favicon_144.png"
    />
    <link
      rel="apple-touch-icon-precomposed"
      sizes="192x192"
      href="${pageContext.request.contextPath}/app/user/assets/icons/favicon_192.png"
    />

    <!-- 페이스북 메타 태그 -->
    <meta property="og:title" content="메가박스 사이트 만들기" />
    <meta
      property="og:url"
      content="https://github.com/webstoryboy/megabox2019"
    />
    <meta
      property="og:image"
      content="https://webstoryboy.github.io/megabox2019/mega.jpg"
    />
    <meta
      property="og:description"
      content="메가박스 사이트 따라하면서 배우는 튜토리얼입니다."
    />

    <!-- 트위터 메타 태그 -->
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="메가박스 사이트 만들기" />
    <meta
      name="twitter:url"
      content="https://github.com/webstoryboy/megabox2019/"
    />
    <meta
      name="twitter:image"
      content="https://webstoryboy.github.io/megabox2019/mega.jpg"
    />
    <meta
      name="twitter:description"
      content="메가박스 사이트 따라하면서 배우는 튜토리얼입니다."
    />

    <!-- 웹 폰트 -->
    <link
      href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
      rel="stylesheet"
    />

    <!-- HTLM5shiv ie6~8 -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.min.js"></script>
      <script type="text/javascript">
        alert(
          "현재 브라우저는 지원하지 않습니다. 크롬 브라우저를 추천합니다.!"
        );
      </script>
    <![endif]-->
  </head>
<style>
	html,body{
	  margin:0; 
 	 padding:0;
 	 width:100%; 
 	 height:100px;
	}
	
	body{
		background-color:rgb(245,246,247);
	}
	#wrap{
		width:300px;
		margin:0 auto;
		margin-top: 100px;
		height: 460px;
		text-align: center;
	}
	#wrap > tr, #wrap > td{
		padding:10px;
	}
	#wrap > tr{
		width:200px;
	}
	#wrap > td{
		width:350px;
	}
	input[type=text], input[type=password]{
		padding:10px;
		width:200px;
		margin-left:20px;
		border:1px solid #ccc;
		outline:none;
	}
	input[type=submit]{
		margin-top:10px;
		padding:10px 20px;
		width:100px;
		border:none;
		background-color:#6e40c4;
		border-radius:5px;
		color:#fff;
		font-weight:bold;
		font-size:16px;
		margin-left: auto;
		margin-right: auto;
	}
	input[type=button]{
		text-align: center;
		margin-top:30px;
		padding:10px 20px;
		width:100px;
		border:none;
		background-color:#6e40c4;
		border-radius:5px;
		color:#fff;
		font-weight:bold;
		font-size:18px;
	
	}
	
	#sub_area{
		text-align: center;
		padding:10px 20px;
	}
	
</style>
  <body>
  	<c:set var="cp" value="${pageContext.request.contextPath}"/>
    <header id="header">
      <div class="container">
        <div class="row">
          <div class="header clearfix">
            <h1 class="ci" style="text-align:center;">
              <a href="${pageContext.request.contextPath}/">
                <em><img src="${pageContext.request.contextPath}/app/user/assets/img/logo.png" alt="MEGAHANZO" /></em>
              	 <strong
                  ><img src="${pageContext.request.contextPath}/app/user/assets/img/logo-sub.png" alt="LIFE THEATER"
                /></strong>
              </a>
            </h1>
            <nav id="mNav">
              <h2 class="ir_so">메가한조 전체메뉴</h2>
              <a href="#" class="ham"><span></span></a>
            </nav>
          </div>
        </div>
      </div>
    </header>
    
    
	<c:set var="cp" value="${pageContext.request.contextPath }"></c:set>
	<div id="wrap">
		<form name="loginForm" action="${cp}/user/UserLoginOk.us" method="post" onsubmit="return sendit();">
			<table class="sc_login">
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="userid" placeholder="아이디를 입력하세요"
						value="">
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="userpw" placeholder="비밀번호를 입력하세요">
					</td>
				</tr>
			</table>
			
<!-- 					<th colspan="2"> -->
						<input type="submit" value="로그인">
<%-- 						<input type="button" value="회원가입" onclick="location.href='${cp}/user/UserJoin.us';"> --%>
<%-- 						<input type="button" value="아이디 찾기" onclick="location.href='${cp}/user/Id_Find.us';"> --%>
<%-- 						<input type="button" value="비밀번호 찾기" onclick="location.href='${cp}/user/Pw_Find.us';"> --%>
<!-- 						<div id= "account" class="sc_login"> -->
<!-- 							<h2 class="blind">로그인</h2> -->
<!-- 							<p class="login_msg">메가박슨를 더 안전하게 이용</p> -->
						<div  id="sub_area" class="sub_area">
							<div class="look_box">
							<a href="${cp}/user/Id_Find.us" class="link look" data-clk="log_off.searchid">아이디 찾기/비밀번호 찾기</a>
							<a>/</a>
							<a href="http://localhost:9090/app/user/joinagree.jsp" class="link look" data-clk="log_off.join">회원가입</a>
							
							</div>
						</div>
						</form>
						</div>
							
	
	<footer id="footer">
      <div id="footer_sns">
        <div class="container">
          <div class="footer_sns">
            <div class="tel">
              <a href="#">ARS <em>1544-0070</em></a>
            </div>
          </div>
        </div>
      </div>
      <div id="footer_infor">
        <div class="container">
          <div class="row">
            <div class="footer_infor">
              <h2><img src="${pageContext.request.contextPath}/app/user/assets/img/logo_footer.png" alt="megabox" /></h2>
              <ul>
                <li><a href="#">회사소개</a></li>
                <li><a href="#">채용정보</a></li>
                <li><a href="#">제휴/광고/부대사업 문의</a></li>
                <li><a href="#">이용약관</a></li>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">고객센터</a></li>
                <li><a href="#">윤리경영</a></li>
              </ul>
              <address>
                <p>
                  서울특별시 강남구 도산대로 156, 2층 메가박스중앙(주) (논현동,
                  중앙엠앤비사옥)<br /><span class="bar2">대표자명 안호진</span>
                  개인정보보호 책임자 경영지원실 실장 박영진<br /><span
                    class="bar2"
                    >사업자등록번호 211-86-59478</span
                  >
                  통신판매업신고번호 제 833호
                </p>
                <p>Copyright 2022 by MegaboxJoongAng Inc. All right reserved</p>
              </address>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- //footer -->
	
</body>
<script>let cp = "${pageContext.request.contextPath}"</script>
<script src="${cp}/app/user/user.js"></script>
</html>











