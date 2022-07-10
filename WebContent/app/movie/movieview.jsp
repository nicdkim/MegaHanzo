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
		margin-top: 70px;
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
	#wrap h1 img{
		width: 185px;
		height: 260px;
		display: block;
		margin-left: 20px;
		margin-right: 0px;
	}
	#poster_wrap{
		width: 300px;
	}
	#poster_wrap h1{
		width: 300px;
	}
	.title h3 a{
		background-color: transparent;
		color:#6e40c4;
		text-shadow:0 0 4px deepskyblue;
	}
	.header_area span{
		font-weight:bold;
	}
	.btn_area a{
		text-align:center;
		padding:10px;
		width:100px;
	}
	.board_area a{
		background: transparent;
		color:#6e40c4;
		margin-left:20px;
	}
	.board_area input, .board_area textarea{
		border:none;
		outline:none;
	}
	tr.like a{
		position:absolute;
		left:3px;
		top:3px;
		background: transparent;
		color:#f00;
		background-image: url(https://ca-fe.pstatic.net/web-pc/static/img/ico-post-like-f-53535.svg?a37a11006a542ce9949c0dd6779345b8=);
		background-repeat: no-reapeat;
		width:17px;
		height:17px;
	}
	tr.like span{
		margin-left:18px;
	}
	.reply_line{
		width:900px;
		margin-top:20px;
		border-top:1px solid grey;
		padding-top:30px;
	}
	.write_box{
		padding-bottom: 40px;
	}
	.write_box>tbody>tr>td:first-child, .update_box>tbody>tr>td:first-child{
		width:150px;
		text-align: center;
		font-weight: bold;
		font-size: 18px;
	}
	.write_box>tbody>tr>td+td{
		position: relative;
	}
	.write_box textarea, .update_box textarea{
		padding:5px 10px;
		height:70px;
		resize:none;
		width:600px;
		outline:none;
		border:1px solid rgba(102,0,153,0.5);
		border-radius:10px;
	}
	.update_box textarea{
		width:500px;
		height:80px;
	}
	.write_box a{
		display:inline-block;
		text-align:center;
		padding:10px;
		width:90px;
		position: absolute;
		top:22px;
		right:0px;
	}
	.update_box{
		border-top:1px solid grey;
		padding-top:30px;
	}
	.update_box td:last-child {
		vertical-align: top;
	}
	.update_box .btns a{
		display:inline-block;
		width:70px;
		height:30px;
		text-align: center;
		vertical-align: middle;
		line-height: 30px;
		margin-top: 20px;
	}
	
	
	
.reviewstar{
    display: inline-block;
    direction: rtl;
    border:0;
}
.reviewstar span{
    text-align: left;
    font-weight: bold;
    font-size: 1.5rem;
}
.reviewstar input[type=radio]{
    display: none;
}
.reviewstar label{
    font-size: 2em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
.reviewstar label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
.reviewstar label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
.reviewstar input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
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

td span img{
	width: 93.75px;
	height: 15px;
}
td span{
	line-height: 100%;
}

#infotextar{
	width:100%;
	height:290px; 
	resize:none;
	text-align: center;
	padding-top:20px; 
	margin-bottom: 20px;
	border-radius:10px;
	
}

#agebox{
	width: 20px !important;
	height: 20px !important;
	text-align: center;
	line-height: 20px;
	color: white;
}

#updateForm{
	margin-bottom: 30px;
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
    <!-- //header -->
	<c:if test="${not empty param.u }">
		<c:if test="${param.u == 'f' }">
			<script>
				alert("영화 정보 수정 실패! 다음에 다시 시도해주세요.");
			</script>
		</c:if>
		<c:if test="${param.u == 't' }">
			<script>
				alert("영화 수정 성공!");
			</script>
		</c:if>
	</c:if>
	
	<div id="wrap">
		<form>
			<table style="border-collapse: collapse;">
				<c:choose>
					<c:when test="${files != null and files.size()>0 }">
						<c:forEach var="i" begin="0" end="${files.size()-1}">
							<c:set var="file" value="${files[i]}"/>
							<c:if test="${file.movieid == movie.movieid}">
								<c:forTokens items="${file.orgname}" delims="." var="token" varStatus="status">
									<c:if test="${status.last}">
										<c:if test="${token eq 'jpg' or token eq 'jpeg' or token eq 'png' or token eq 'bmp' or token eq 'gif' }">
											<tr>
												<th id="poster_wrap" rowspan="9" >
													<h1><img src="${cp}/file/${file.systemname}"></h1>
												</th>
												<td>
													<span style="font-size: 27px; font-weight: bold;">${movie.movietitle}</span>
												</td>
											</tr>
											<tr height="30px">
												<th colspan="2">
												</th>
												<td colspan="2">
												</td>
											</tr>
											<tr height="30px">
												<td colspan="2">
													<span id="agebox" style="background-color: <c:choose>
 								  																<c:when test="${movie.movieage == '12세이상'}">#0055FF;</c:when>
 								  																<c:when test="${movie.movieage == '15세이상'}">#81c147;</c:when>
 								  																<c:when test="${movie.movieage == '18세이상'}">red;</c:when>
 				 				 																<c:otherwise>#FF9500;</c:otherwise>
 				  																			  </c:choose>">
 				  																			  <c:choose>
 								  																<c:when test="${movie.movieage == '12세이상'}">12</c:when>
 								  																<c:when test="${movie.movieage == '15세이상'}">15</c:when>
 								  																<c:when test="${movie.movieage == '18세이상'}">19</c:when>
 				 				 																<c:otherwise>A</c:otherwise>
 				  																			  </c:choose></span>&nbsp;&nbsp;<span>${movie.movieage}</span>
												</td>
											</tr>
											<tr height="30px">
												<td colspan="2">
													<span>장르: ${movie.moviegenre}</span>
												</td>
											</tr>
											<tr height="30px">
												<td colspan="2">
													<span>상영길이: ${movie.movietime}분</span>
												</td>
											</tr>
											<tr height="30px">
												<td colspan="2"><span>평점: <c:choose>
																	<c:when test="${movie.movierate < 0.51}">
																		<img src="${pageContext.request.contextPath}/app/movie/assets/img/starhalf.jpg">
																	</c:when>
																	<c:when test="${movie.movierate < 1.01}">
																		<img src="${pageContext.request.contextPath}/app/movie/assets/img/star1.jpg">
																	</c:when>
																	<c:when test="${movie.movierate < 1.51}">
																		<img src="${pageContext.request.contextPath}/app/movie/assets/img/star1half.jpg">
																	</c:when>
																	<c:when test="${movie.movierate < 2.01}">
																		<img src="${pageContext.request.contextPath}/app/movie/assets/img/star2.jpg">
																	</c:when>
																	<c:when test="${movie.movierate < 2.51}">
																		<img src="${pageContext.request.contextPath}/app/movie/assets/img/star2half.jpg">
																	</c:when>
																	<c:when test="${movie.movierate < 3.01}">
																		<img src="${pageContext.request.contextPath}/app/movie/assets/img/star3.jpg">
																	</c:when>
																	<c:when test="${movie.movierate < 3.51}">
																		<img src="${pageContext.request.contextPath}/app/movie/assets/img/star3half.jpg">
																	</c:when>
																	<c:when test="${movie.movierate < 4.01}">
																		<img src="${pageContext.request.contextPath}/app/movie/assets/img/star4.jpg">
																	</c:when>
																	<c:when test="${movie.movierate < 4.51}">
																		<img src="${pageContext.request.contextPath}/app/movie/assets/img/star4half.jpg">
																	</c:when>
																	<c:otherwise>
																		<img src="${pageContext.request.contextPath}/app/movie/assets/img/star5.jpg">
																	</c:otherwise>
																</c:choose>&nbsp;${movie.movierate}</span>
												</td>
											</tr>
											<tr height="30px">
												<td colspan="2">
													<span>배우: ${movie.movieactor}</span>
												</td>
											</tr>
											<tr height="30px">
												<td colspan="2">
													<span>감독: ${movie.moviedirect}</span>
												</td>
											</tr>
											<tr height="30px">
												<td colspan="2">
													<span>개봉날짜 : <c:forEach var="i" begin="0" end="${movie.moviedate.length()-1}">${movie.moviedate.charAt(i)}<c:if test="${i==3}">년&nbsp;</c:if><c:if test="${i==5}">월&nbsp;</c:if><c:if test="${i==7}">일</c:if></c:forEach></span>
												</td>
											</tr>
											<tr height="30px">
												<th colspan="2">
												</th>
												<td colspan="2">
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<textarea name="movieinfo" id="infotextar" readonly>${movie.movieinfo}</textarea>
												</td>
											</tr>
										</c:if>
									</c:if>
								</c:forTokens>
							</c:if>
						</c:forEach>
					</c:when>
				</c:choose>
				
			</table>
			<table class="btn_area">
				<tr align="right" valign="middle">
					<td>
						<a href="${cp}/ticketing/TicketingTimeList.ti?movietitle=${movie.movietitle}">상영시간표</a>&nbsp;&nbsp;
						<c:if test="${loginUser.useradmin == 1}">
							<a href="${cp}/movie/MovieModify.mo?movieid=${movie.movieid}">수정</a>&nbsp;&nbsp;
							<a href="${cp}/movie/MovieRemove.mo?movieid=${movie.movieid}">삭제</a>&nbsp;&nbsp;
						</c:if>
						<a href="${cp}/movie/MovieListByRate.mo">목록</a>
					</td>
				</tr>
			</table>
		</form>
		
		<div class="reply_line">
				<form id="reviewForm" name="reviewForm" method="post" action="${cp}/movie/ReviewWrite.mo">
					<input type="hidden" name="movieid" value="${movie.movieid}">
					<fieldset class="reviewstar">
						<input type="radio" name="reviewstar" value="5" id="rate1" checked><label for="rate1">★</label>
						<input type="radio" name="reviewstar" value="4" id="rate2"><label for="rate2">★</label>
						<input type="radio" name="reviewstar" value="3" id="rate3"><label for="rate3">★</label>
						<input type="radio" name="reviewstar" value="2" id="rate4"><label for="rate4">★</label>
						<input type="radio" name="reviewstar" value="1" id="rate5"><label for="rate5">★</label>
						<span>:별점</span>
					</fieldset>
					<table class="write_box">
						<tr>
							<td style="user-select:none;" onclick="location.href='${cp}/movie/ReviewList.mo?movieid=${movie.movieid}';">리뷰</td>
							<td>
								<textarea name="reviewcontents"></textarea>
								<a href="javascript:document.reviewForm.submit()">등록</a>
							</td>
						</tr>
					</table>
				</form>
			<form name="updateForm" id="updateForm" method="post" action="">
				<input type="hidden" name="movieid" value="${movie.movieid}">
				
				<table class="update_box">
					<c:set var="i" value="0"/>
					<c:forEach items="${reviews}" var="review">
					<input type="hidden" name="star${i}" value="${review.reviewstar}"/>
						<tr>
							<td colspan="2">
								<fieldset class="reviewstar_mo">
									<c:choose>
										<c:when test="${review.reviewstar == 5}">
											<input type="radio" name="reviewstar_mo${i}" value="5" id="rate1${i}" checked readonly><label for="rate1${i}">★</label>
										</c:when>
										<c:otherwise>
											<input type="radio" name="reviewstar_mo${i}" value="5" id="rate1${i}"><label for="rate1${i}">★</label>											
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${review.reviewstar == 4}">
											<input type="radio" name="reviewstar_mo${i}" value="4" id="rate2${i}" checked readonly><label for="rate2${i}">★</label>
										</c:when>
										<c:otherwise>
											<input type="radio" name="reviewstar_mo${i}" value="4" id="rate2${i}"><label for="rate2${i}">★</label>								
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${review.reviewstar == 3}">
											<input type="radio" name="reviewstar_mo${i}" value="3" id="rate3${i}" checked readonly><label for="rate3${i}">★</label>
										</c:when>
										<c:otherwise>
											<input type="radio" name="reviewstar_mo${i}" value="3" id="rate3${i}"><label for="rate3${i}">★</label>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${review.reviewstar == 2}">
											<input type="radio" name="reviewstar_mo${i}" value="2" id="rate4${i}" checked readonly><label for="rate4${i}">★</label>
										</c:when>
										<c:otherwise>
											<input type="radio" name="reviewstar_mo${i}" value="2" id="rate4${i}"><label for="rate4${i}">★</label>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${review.reviewstar == 1}">
											<input type="radio" name="reviewstar_mo${i}" value="1" id="rate5${i}" checked readonly><label for="rate5${i}">★</label>
										</c:when>
										<c:otherwise>
											<input type="radio" name="reviewstar_mo${i}" value="1" id="rate5${i}"><label for="rate5${i}">★</label>											
										</c:otherwise>
									</c:choose>
									<span>:별점</span>
								</fieldset>
							</td>
						</tr>
						<tr>
							<td>${review.userid}</td>
							<td>
								<textarea readonly name="review${i}" id="review${i}" class="reviewcontents">${review.reviewcontents}</textarea>
							</td>
							<td valign="middle" style="text-align: center">
								${review.reviewdate}
								<c:if test="${review.updatechk == 'o' }">
									<br>(수정됨)
								</c:if>
								<c:if test="${review.userid == loginUser.userid }">
									<br>
									<div class="btns">
										<a href="javascript:updateReview(${i});" id="start${i}">수정</a>
										<a href="javascript:updateOk(${i},${review.reviewid})" style="display:none;" id="end${i}">수정완료</a>
										<a href="javascript:deleteReview(${review.reviewid},${review.reviewstar})">삭제</a>
									</div>
								</c:if>
							</td>
						</tr>
						<c:set var="i" value="${i+1}"/>
					</c:forEach>
				</table>
			</form>
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
</body>
<script>
const updateForm = document.updateForm;
let flag = true;

function deleteReview(reviewid,star){
	updateForm.setAttribute("action","${cp}/movie/ReviewRemove.mo?reviewid="+reviewid+"&star="+star);
	updateForm.submit();
}

function updateReview(i){
	if(flag){
		//수정버튼
		let start = document.getElementById("start"+i);
		//수정완료버튼
		let end = document.getElementById("end"+i);
		//textarea
		let review = document.getElementById("review"+i);
		let reviewstar_mo = document.getElementById("reviewstar_mo"+i);
		
		start.style.display = 'none';
		end.style.display = 'inline-block'
		review.removeAttribute("readonly");
		reviewstar_mo.removeAttribute("readonly");
		
		flag = false;
	}
	else{
		alert("수정중인 리뷰가 있습니다.");
	}
}



function updateOk(i,reviewid){
	updateForm.setAttribute("action","${cp}/movie/ReviewModify.mo?reviewid="+reviewid+"&i="+i);
	updateForm.submit();
}
</script>
</html>










