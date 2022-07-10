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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/movie/assets/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/movie/assets/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/movie/assets/css/swiper.css" />

	<!-- datepicker import-->
    <link
      rel="stylesheet"
      href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
      type="text/css"
    />
    <script src="${pageContext.request.contextPath}/app/movie/assets/js/jquery.min_1.12.4.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/app/movie/assets/js/datepicker.js"></script>




    <!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/movie/assets/icons/favicon.ico" />
    <link
      rel="apple-touch-icon-precomposed"
      href="${pageContext.request.contextPath}/app/movie/assets/icons/favicon_72.png"
    />
    <link
      rel="apple-touch-icon-precomposed"
      sizes="96x96"
      href="${pageContext.request.contextPath}/app/movie/assets/icons/favicon_96.png"
    />
    <link
      rel="apple-touch-icon-precomposed"
      sizes="144x144"
      href="${pageContext.request.contextPath}/app/movie/assets/icons/favicon_144.png"
    />
    <link
      rel="apple-touch-icon-precomposed"
      sizes="192x192"
      href="${pageContext.request.contextPath}/app/movie/assets/icons/favicon_192.png"
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
<style>
	body{
		background-color:#fff;
	}
	table{
		border:0px;
		width:900px;
	}
	#wrap{
		width:1000px;
		margin:0 auto;
		margin-top: 60px;
	}
	.title h3{
		font-size:1.5em;
		color:#6e40c4;
		text-shadow:0 0 4px deepskyblue;
	}
	#wrap a{
		display:inline-block;
		border-radius:3px;
		background-color:#6e40c4;
		color:#fff;
		font-weight: bold;
		text-decoration: none;
	}
	.btn_area a{
		text-align:center;
		padding:10px;
		width:100px;
	}
	.finput{
		position:absolute;
		left:-9999px;
		width:1px;
		height:1px;
		padding:0;
		margin:-1px;
	}
	input[type=hidden]+label{
		display:inline-block;
		border-radius:3px;
		background-color:#6e40c4;
		color:#fff;
		font-weight: bold;
		text-decoration: none;
		padding:5px;
		margin-left:10px;
	}
	
	.reviewstar_mo{
    display: inline-block;
    direction: rtl;
    border:0;
}
.reviewstar_mo span{
    text-align: left;
    font-weight: bold;
    font-size: 1.5rem;
}
.reviewstar_mo input[type=radio]{
    display: none;
}
.reviewstar_mo label{
    font-size: 2em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
.reviewstar_mo label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
.reviewstar_mo label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
.reviewstar_mo input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
</style>
</head>
<body>
	<c:set var="cp" value="${pageContext.request.contextPath}"/>
	<c:if test="${loginUser == null}">
		<script>
			alert("로그인 후 이용하세요!");
			location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
		</script>
	</c:if>
	<c:if test="${loginUser.useradmin == 1}">
		<script>
			alert("접근권한이 없습니다!");
			location.replace("${pageContext.request.contextPath}/user/UserAdmin.us");
		</script>
	</c:if>
	<header id="header">
      <div class="container">
        <div class="row">
          <div class="header clearfix">
            <h1>
              <a href="${pageContext.request.contextPath}/">
                <em><img src="${pageContext.request.contextPath}/app/ticketing/assets/img/logo.png" alt="MEGAHANZO" /></em>
                <strong
                  ><img src="${pageContext.request.contextPath}/app/ticketing/assets/img/logo-sub.png" alt="LIFE THEATER"
                /></strong>
              </a>
            </h1>
            <nav id="mNav">
              <h2 class="ir_so">메가한조 전체메뉴</h2>
              <a href="#" class="ham"><span></span></a>
            </nav>
            <nav class="nav">
              <ul class="clearfix" id="nav">
              	<c:choose>
		        	<c:when test="${loginUser.useradmin == 0 }">
		             	<c:if test="${loginUser.userid != 'admin'}">
							<li><a href="${cp }/movie/MovieListByRate.mo">영화</a></li>
						</c:if>
		            	<c:if test="${loginUser.userid != 'admin'}">
							<li><a href="${cp }/ticketing/TicketingMovieSelect.ti">예매</a></li>
						</c:if>
						<c:if test="${loginUser != null and loginUser.userid != 'admin'}">
							<li><a href="${cp }/movie/ReviewList.mo?useradmin=${loginUser.useradmin}">리뷰</a></li>
						</c:if>
						<c:if test="${loginUser != null and loginUser.userid != 'admin'}">
							<li><a href="${cp}/user/UserMypage.us?useradmin=${loginUser.useradmin}">내정보</a></li>
						</c:if>
						<c:if test="${loginUser.userid == 'admin' or loginUser.useradmin == 1}">
							<li><a href="${cp}/user/UserAdmin.us">ADMIN</a></li>
						</c:if>
		             </c:when>
		             <c:when test="${loginUser.useradmin == 1 }">
              			<li><a href="${cp}/movie/MovieListByRate.mo">영화관리</a></li>
               			<c:if test="${loginUser.userid == 'admin'}">
							<li><a href="${cp}/user/UserList.us">회원관리</a></li>
							<li><a href="${cp}/ticketing/TicketingCinema.ti">극장관리</a></li>
						</c:if>
           			</c:when>
		    	</c:choose>
				<li><a href="${cp }/board/Board.bo">게시판</a></li>
                <c:if test="${loginUser == null}">
					<li><a href="${cp}/user/UserLogin.us">로그인</a></li>
				</c:if>
                <c:if test="${loginUser != null}">
					<li><a href="${cp}/user/UserLogoutOk.us">로그아웃</a></li>
				</c:if>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </header>
	<div id="wrap">

		<!-- 타이틀과 글 개수 띄워주는 테이블 -->
		<table class="title">
			<tr align="center" valign="middle">
				<td><h3>리뷰</h3></td>
			</tr>
		</table>

		<form method="post" name="reviewForm" action="${cp}/movie/ReviewBigModifyOk.mo">
			<input type="hidden" name="reviewid" value="${review.reviewid}">
			<input type="hidden" name="keyword" value="${param.keyword}">
			<input type="hidden" name="page" value="${param.page}">
			<input type="hidden" name="star" value="${review.reviewstar}">
			<!-- 게시글 작성하는 인풋들 배치 테이블 -->
			<table border="1" style="border-collapse:collapse;">
				<tr height="30px">
					<th align="center" width="150px">
						영 화
					</th>
					<td>
						<select id="movieid" name="movieid">
							<c:forEach items="${movieList}" var="movie">
								<option value="${movie.movieid}"
								<c:if test="${movie.movieid == review.movieid}">
									selected
								</c:if>
								>${movie.movietitle}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr height="30px">
					<th align="center" width="150px">별 점</th>
					<td colspan="2">
						<fieldset class="reviewstar_mo">
							<c:choose>
								<c:when test="${review.reviewstar == 5}">
									<input type="radio" name="reviewstar" value="5" id="rate1" checked readonly><label for="rate1">★</label>
								</c:when>
								<c:otherwise>
									<input type="radio" name="reviewstar" value="5" id="rate1"><label for="rate1">★</label>											
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${review.reviewstar == 4}">
									<input type="radio" name="reviewstar" value="4" id="rate2" checked readonly><label for="rate2">★</label>
								</c:when>
								<c:otherwise>
									<input type="radio" name="reviewstar" value="4" id="rate2"><label for="rate2">★</label>								
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${review.reviewstar == 3}">
									<input type="radio" name="reviewstar" value="3" id="rate3" checked readonly><label for="rate3">★</label>
								</c:when>
								<c:otherwise>
									<input type="radio" name="reviewstar" value="3" id="rate3"><label for="rate3">★</label>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${review.reviewstar == 2}">
									<input type="radio" name="reviewstar" value="2" id="rate4" checked readonly><label for="rate4">★</label>
								</c:when>
								<c:otherwise>
									<input type="radio" name="reviewstar" value="2" id="rate4"><label for="rate4">★</label>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${review.reviewstar == 1}">
									<input type="radio" name="reviewstar" value="1" id="rate5" checked readonly><label for="rate5">★</label>
								</c:when>
								<c:otherwise>
									<input type="radio" name="reviewstar" value="1" id="rate5"><label for="rate5">★</label>											
								</c:otherwise>
							</c:choose>
							<span>:별점</span>
						</fieldset>
					</td>
				</tr>
				<tr height="30px">
					<th align="center" width="150px">
						글쓴이
					</th>
					<td>
						<input name="userid" size="10" maxlength="20" readonly value="${review.userid}">
					</td>
				</tr>
				<tr height="300px">
					<th align="center" width="150px">
						내 용
					</th>
					<td>
						<textarea name="reviewcontents" style="width:700px;height:250px;resize:none;">${review.reviewcontents}</textarea>					
					</td>
				</tr>
			</table>
			<br>
			<table class="btn_area">
				<tr align="right" valign="middle">
					<td>
						<a href="javascript:document.reviewForm.submit()">수정완료</a>&nbsp;&nbsp;
						<a href="${cp }/movie/ReviewList.mo?useradmin=${loginUser.useradmin}">목록</a>
					</td>
				</tr>
			</table>
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
              <h2><img src="${pageContext.request.contextPath}/app/movie/assets/img/logo_footer.png" alt="megabox" /></h2>
              <ul>
                <c:choose>
		              		<c:when test="${loginUser.useradmin == 0 }">
		              			<c:if test="${loginUser.userid != 'admin'}">
									<li><a href="${cp }/movie/MovieList.mo">영화</a></li>
								</c:if>
		                		<c:if test="${loginUser.userid != 'admin'}">
									<li><a href="${cp }/ticketing/TicketingList.ti">예매</a></li>
								</c:if>
		 		               <li><a href="${cp }/board/Board.bo">게시판</a></li>
								<c:if test="${loginUser != null and loginUser.userid != 'admin'}">
									<li><a href="${cp }/movie/ReviewList.mo?useradmin=${loginUser.useradmin}">리뷰</a></li>
								</c:if>
								<c:if test="${loginUser != null and loginUser.userid != 'admin'}">
									<li><a href="${cp}/user/UserMypage.us?useradmin=${loginUser.useradmin}">내정보</a></li>
								</c:if>
								<c:if test="${loginUser.userid == 'admin' or loginUser.useradmin == 1}">
									<li><a href="${cp}/user/UserAdmin.us">ADMIN</a></li>
								</c:if>
		        		        <c:if test="${loginUser == null}">
									<li><a href="${cp}/user/UserLogin.us">로그인</a></li>
								</c:if>
		                		<c:if test="${loginUser != null}">
									<li><a href="${cp}/user/UserLogoutOk.us">로그아웃</a></li>
								</c:if>
		              		</c:when>
		              		<c:otherwise>
              			<li><a href="${cp}/movie/MovieListByRate.mo">영화관리</a></li>
                		<c:if test="${loginUser.userid == 'admin'}">
							<li><a href="${cp}/user/UserList.us">회원관리</a></li>
							<li><a href="${cp}/ticketing/TicketingCinema.ti">극장관리</a></li>
						</c:if>
						<li><a href="${cp }/board/Board.bo">게시판</a></li>
                		<c:if test="${loginUser == null}">
							<li><a href="${cp}/user/UserLogin.us">로그인</a></li>
						</c:if>
                		<c:if test="${loginUser != null}">
							<li><a href="${cp}/user/UserLogoutOk.us">로그아웃</a></li>
						</c:if>
              		</c:otherwise>
		              	</c:choose>
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</html>
