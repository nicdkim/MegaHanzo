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
	body{background-color:#fff;}
	table{border:0px; width:900px;}
	h3 {
	}
	.title h3{
		color: white; 
		background-color:#39106A; 
		margin-top: 80px;
		padding: 5px 0 5px 0;
		font-size:2em; 
		font-weight:80px; 
		}
	.list{
		border-collapse:collapse;
		border-spacing:0;
		width:900px;
	}
	.list>tbody>tr:nth-child(n+2):hover{
		background-color:rgb(239,233,252);
	}
	.list>tbody>tr>th{
		border-top:1px solid #39106A;
		border-bottom:1px solid #ccc;
		padding:5px;
	}
	
	.list>tbody>tr>td{
		border-bottom:1px solid #ccc;
		padding:5px;
		text-align:center;
	}
	a{
		display:inline-block;
		border-radius:3px;
		background-color:#fffff;
		color:black;
		font-weight: bold;
		text-decoration: none;
	}
	.list a{
		background-color: transparent;
		color:#39106A;
		
	}
	.header_area a{
		width:100px;
		padding:10px;
		text-align:center;
		color: white;
		background-color: #39106A;
	}
	.header_area span{
		font-weight:bold;
	}
	.pagination a{
		padding:5px;
		width:20px;
		height:20px;
	}
	.pagination a:hover{background-color:rgb(239,233,252);}
	.nowPage{
		padding:5px;
		display:inline-block;
		border-radius:3px;
		background-color:#39106A;
		color:#fff;
		font-weight: bold;
		width:20px;
		height:20px;
	}
	a.write{
		display:inline-block;
		border-radius:3px;
		width:85px;
		height: 40px;
		line-height: 35px;
		text-align: center;
		color:#fff;
		font-weight: bold;
		text-decoration: none;
		background-color: #39106A;
		
	}
	.search_area{
		padding : 50px 0 100px 0;
	}
	#ReviewB{
		text-align: center;
		border:none;
		background-color:#6e40c4;
		border-radius:2px;
		color:#fff;
		font-weight:bold;
		width:35px;
	}
	#ReviewB:hover{
		background:silver;
	}
	
	td span img{
		width: 93.75px;
		height: 15px;
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
	<c:if test="${cookie.w.value == 'f' }">
		<script>
			alert("리뷰 추가 실패!");
			let cookies = document.cookie.split(",");
			result = ""
			for(let i=0;i<cookies.length;i++){
				let cookie = cookies[i];
				let key = cookie.split("=")[0];
				if(key != 'w'){
					result+=cookie+",";	
				}
			}
			result = result.substring(0,result.length - 1);
			document.cookie = result;
		</script>
	</c:if>
	<c:if test="${not empty param.r }">
		<c:if test="${param.r == 't' }">
			<script>
				alert("리뷰 삭제 성공!");
			</script>
		</c:if>
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
    <c:set var="actuallist" value="0"/>
	<div style="margin:0 auto; width:1000px;">
	<form id="moviereviewselect" method="post" name="moviereviewselect" action="${cp}/movie/ReviewList.mo" >
		<!-- 타이틀과 글 개수 띄워주는 테이블 -->
		<table class="title">
			<tr align="center" valign="middle">
				<td><h3>리뷰</h3></td>
			</tr>
			<tr align="right" valign="middle">
				<td>총 리뷰 수 : ${totalCnt}</td>
			</tr>
			<tr align="center" valign="middle">
				<td>
					<select id="movieid" name="movieid">
						<option value="영화선택" selected disabled>영화를 선택해주세요!</option>
						<c:forEach items="${movieList}" var="movie">
	  						<option value="${movie.movieid}" <c:if test="${movieselectid == movie.movieid}">selected</c:if>>${movie.movietitle}</option>
						</c:forEach>
					</select>
					<a href="javascript:sendit()">선택</a>
				</td>
			</tr>
		</table>
	</form>

		<!-- 게시글 리스트 띄우는 테이블 -->
		<table class="list">
			<tr align="center" valign="middle">
				<th width="25%">영화제목</th>
				<th width="12%">별점</th>
				<th width="50%">내용</th>
				<th width="13%">작성자</th>
			</tr>
			<c:choose>
				<c:when test="${reviewList != null and reviewList.size()>0}">
					<c:forEach items="${reviewList}" var="review">
						<tr>
							<c:forEach items="${movieList}" var="movie">
								<c:if test="${movie.movieid == review.movieid}">
									<c:set var="movietitle" value="${movie.movietitle}"/>
									<td><a href="${pageContext.request.contextPath}/movie/MovieView.mo?movieid=${movie.movieid}">${movie.movietitle}</a></td>
								</c:if>
							</c:forEach>
							<td><a href="${cp}/movie/ReviewView.mo?reviewid=${review.reviewid}&page=${page}&keyword=${keyword}&movietitle=${movietitle}">
									<span>
										<c:if test="${review.reviewstar==1}"><img src="${pageContext.request.contextPath}/app/movie/assets/img/star1.jpg"></c:if>
										<c:if test="${review.reviewstar==2}"><img src="${pageContext.request.contextPath}/app/movie/assets/img/star2.jpg"></c:if>
										<c:if test="${review.reviewstar==3}"><img src="${pageContext.request.contextPath}/app/movie/assets/img/star3.jpg"></c:if>
										<c:if test="${review.reviewstar==4}"><img src="${pageContext.request.contextPath}/app/movie/assets/img/star4.jpg"></c:if>
										<c:if test="${review.reviewstar==5}"><img src="${pageContext.request.contextPath}/app/movie/assets/img/star5.jpg"></c:if>
									</span>
								</a></td>
							<td><a href="${cp}/movie/ReviewView.mo?reviewid=${review.reviewid}&page=${page}&keyword=${keyword}&movietitle=${movietitle}">${review.reviewcontents}</a></td>
							<td>${review.userid}</td>
						</tr>
					    <c:set var="actuallist" value="${actuallist+1}"/>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4" style="text-align: center; font-size: 20px">
							등록된 리뷰가 없습니다.
						</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table><br>

		<!-- 페이징 처리하는 테이블 -->
		<table class="pagination">
			<tr align="center" valign="middle">
				<td>
					<c:if test="${startPage != 1}">
						<a href="${cp}/movie/ReviewList.mo?page=${startPage-1}&keyword=${keyword}">&lt;</a>
					</c:if>
					<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:choose>
							<c:when test="${page == i}">
								<span class="nowPage">${i}</span>
							</c:when>
							<c:otherwise>
								<a href="${cp}/movie/ReviewList.mo?page=${i}&keyword=${keyword}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${endPage != totalPage }">
						<a href="${cp}/movie/ReviewList.mo?page=${endPage+1}&keyword=${keyword}">&gt;</a>
					</c:if>
				</td>
			</tr>
		</table> 
		<!-- 글쓰기 버튼 배치하는 테이블 -->
		<table style="border:0px; width:900px;">
			<tr align="right" valign="middle">
				<td>
					<c:if test="${totalCnt>actuallist}">
						<a class="write" href="${cp}/movie/ReviewList.mo">리뷰 전체 목록</a>					
					</c:if>
					<a class="write" href="${cp}/movie/ReviewBigWrite.mo?page=${page}&keyword=${keyword}">리뷰 쓰기</a>
				</td>
			</tr>
		</table>
		<div class="search_area">
			<input type="search" id="q" name="q"> <input type="button" value="검색" onclick="search()">
		</div>
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
<script>
	function search(){
		let q = document.getElementById("q");
		//유효성 검사(귀찮으니 스킵)
		location.href = "${pageContext.request.contextPath}/movie/ReviewList.mo?keyword="+q.value;		
	}
	
	function sendit(){
		const moviereviewselect = document.moviereviewselect;
		const movieid = moviereviewselect.movieid;
		if(movieid.value == '영화선택'){
			alert("영화를 선택해주세요!");
			movieid.focus();
			return false;
		}
		moviereviewselect.submit();
	}
</script>
</html>


