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
		margin-top: 50px;
		margin-bottom: 300px;
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
	.header_area a{
		width:100px;
		padding:10px;
		text-align:center;
	}
	.header_area span{
		font-weight:bold;
	}
	.btn_area a{
		text-align:center;
		padding:10px;
		width:100px;
	}
	img.thumbnail{
		display:block;
		clear:both;
		width:100px;
	}
	#boardForm tr:nth-child(n+4) {
		height:50px;
	}
	#boardForm a{
		padding:5px 10px;
	}
	input[type="text"], textarea{
		border:none;
		padding:5px;
	}
</style>
</head>
<body>
	<c:set var="cp" value="${pageContext.request.contextPath}"/>
	<c:if test="${loginUser == null }">
		<script>
			alert("로그인 후 이용하세요!");
			location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
		</script>
	</c:if>
	<c:if test="${loginUser != null and loginUser.userid != 'admin'}">
		<script>
			alert("접근 권한이 없습니다!");
			location.replace("${pageContext.request.contextPath}/user/UserLogoutOk.us");
		</script>
	</c:if>
    <header id="header">
      <div class="container">
        <div class="row">
          <div class="header clearfix">
            <h1>
              <a href="${pageContext.request.contextPath}/">
                <em><img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="MEGAHANZO" /></em>
                <strong
                  ><img src="${pageContext.request.contextPath}/assets/img/logo-sub.png" alt="LIFE THEATER"
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
		<table class="title">
			<tr align="center" valign="middle">
				<td><h3>${movietitle} 상영시간 수정</h3></td>
			</tr>
		</table>
		<form id="ticketingTimeForm" method="post" name="ticketingTimeForm" action="${cp}/ticketing/TicketingTimeModifyOk.ti">
			<input type="hidden" name="movietitle" value="${movietitle}"/>
			<input type="hidden" name="timeid" value="${time.timeid}"/>
			<table border="1" style="border-collapse: collapse;">
				<tr height="30px">
					<th align="center" width="150px">상영시작시간</th>
					<td>
						<input type="text" id="starttime" name="starttime" value="${time.starttime}" size="50" maxlength="50" placeholder="상영시작시간을 입력하세요" />
					</td>
				</tr>
				<tr height="30px">
					<th align="center" width="150px">상영종료시간</th>
					<td>
						<input type="text" id="endtime" name="endtime" value="${time.endtime}" size="50" maxlength="50" placeholder="상영종료시간을 입력하세요" />
					</td>
				</tr>
				<tr height="30px">
					<th align="center" width="150px">상영관</th>
					<td>
						<select id="cinemaid" name="cinemaid">
								<c:forEach begin="0" end="${cinemas.size()-1}" step="1" var="i">
									<c:set var="cinema" value="${cinemas[i]}" />
									<c:choose>
										<c:when test="${cinema.cinemaid == time.cinemaid}">
											<option value="${cinema.cinemaid}" selected>${cinema.cinemaid}관</option>																
										</c:when>
										<c:otherwise>
											<option value="${cinema.cinemaid}">${cinema.cinemaid}관</option>																										
										</c:otherwise>
									</c:choose>
								</c:forEach>
						</select>
					</td>
				</tr>
			</table>
			<br>
		</form>
		<table class="btn_area">
			<tr align="right" valign="middle">
				<td>
					<a href="javascript:document.ticketingTimeForm.submit()">등록</a>&nbsp;&nbsp;
					<a href="${cp}/ticketing/TicketingTimeList.ti">목록</a>
				</td>
			</tr>
		</table>
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
<!-- 자바스크립트 라이브러리 -->
<script src="${pageContext.request.contextPath}/app/movie/assets/js/datepicker.js"></script>
<script src="${pageContext.request.contextPath}/app/movie/assets/js/modernizr-custom.js"></script>
<script src="${pageContext.request.contextPath}/app/movie/assets/js/ie-checker.js"></script>
<script src="${pageContext.request.contextPath}/app/movie/assets/js/swiper.min.js"></script>
<script src="${pageContext.request.contextPath}/app/movie/assets/js/iframe_api.js"></script>
<script src="${pageContext.request.contextPath}/app/movie/assets/js/movie.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/app/movie/assets/js/jquery.min_1.12.4.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="https://t1.daumcdn.net/cfile/tistory/2521D9505802210833?original"></script>
<script src="https://code.jquery.com/jquery-migrate-1.2.1.js"></script>

<script>
		$("#starttime").datetimepicker({
			dateFormat:'yy-mm-dd',
			monthNamesShort:[ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
			dayNamesMin:[ '일', '월', '화', '수', '목', '금', '토' ],
			changeMonth:true,
			changeYear:true,
			showMonthAfterYear:true,
	
			// timepicker 설정
			timeFormat:'HH:mm:ss',
			controlType:'select',
			oneLine:true,
		});
		$("#endtime").datetimepicker({
			dateFormat:'yy-mm-dd',
			monthNamesShort:[ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
			dayNamesMin:[ '일', '월', '화', '수', '목', '금', '토' ],
			changeMonth:true,
			changeYear:true,
			showMonthAfterYear:true,
	
			// timepicker 설정
			timeFormat:'HH:mm:ss',
			controlType:'select',
			oneLine:true,
		});
</script>
<script>
 //배너 이미지 슬라이드
 var swiper = new Swiper(".swiper-container", {
   pagination: {
     el: ".swiper-pagination",
   },
   navigation: {
     nextEl: ".swiper-button-next",
     prevEl: ".swiper-button-prev",
   },
   autoplay: {
     delay: 5000,
   },
 });

 //영화차트 이미지 슬라이드
 var swiper = new Swiper(".swiper-container2", {
   slidesPerView: 4,
   spaceBetween: 24,
   //            mousewheel: {
   //                invert: true,
   //            },
   keyboard: {
     enabled: true,
     onlyInViewport: false,
   },
   autoplay: {
     delay: 6000,
   },
   breakpoints: {
     600: {
       slidesPerView: 1.4,
       spaceBetween: 24,
     },
     768: {
       slidesPerView: 2,
       spaceBetween: 24,
     },
     960: {
       slidesPerView: 3,
       spaceBetween: 24,
     },
   },
 });

 //영화차트 탭 메뉴
 var movBtn = $(".movie_title > ul > li");
 var movCont = $(".movie_chart > div");

 movCont.hide().eq(0).show();

 movBtn.click(function (e) {
   e.preventDefault();
   var target = $(this);
   var index = target.index();
   movBtn.removeClass("active");
   target.addClass("active");
   movCont.css("display", "none");
   movCont.eq(index).css("display", "block");
 });

 //공지사항 탭 메뉴
 var tabMenu = $(".notice");

 //컨텐츠 내용을 숨겨주세요!
 tabMenu.find("ul > li > ul").hide();
 tabMenu.find("li.active > ul").show();

 function tabList(e) {
   e.preventDefault(); //#의 기능을 차단
   var target = $(this);
   target
     .next()
     .show()
     .parent("li")
     .addClass("active")
     .siblings("li")
     .removeClass("active")
     .find("ul")
     .hide();
   //버튼을 클릭하면 ~ div를 보여주고
   //부모의 li 태그에 클래스 추가하고
   //형제의 li 태그에 클래스 제거하고
   //제거한 자식의 div 태그를 숨겨줌
 }

 tabMenu.find("ul > li > a").click(tabList).focus(tabList);
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<script>
	
	function sendit(){
		const ticketingTimeForm = document.ticketingTimeForm;
		const starttime = ticketingTimeForm.starttime;
		const endtime = ticketingTimeForm.endtime;
		if(starttime.value == ''){
			alert("상영 시작 시간을 입력하세요!");
			endtime.focus();
			return false;
		}
		if(endtime.value == ''){
			alert("상영 종료 시간을 입력하세요!");
			endtime.focus();
			return false;
		}
		movieForm.submit();
	}
</script>
</html>






