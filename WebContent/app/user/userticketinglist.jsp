<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/swiper.css" />

    <!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/icons/favicon.ico" />
    <link
      rel="apple-touch-icon-precomposed"
      href="${pageContext.request.contextPath}/assets/icons/favicon_72.png"
    />
    <link
      rel="apple-touch-icon-precomposed"
      sizes="96x96"
      href="${pageContext.request.contextPath}/assets/icons/favicon_96.png"
    />
    <link
      rel="apple-touch-icon-precomposed"
      sizes="144x144"
      href="${pageContext.request.contextPath}/assets/icons/favicon_144.png"
    />
    <link
      rel="apple-touch-icon-precomposed"
      sizes="192x192"
      href="${pageContext.request.contextPath}/assets/icons/favicon_192.png"
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
		margin-top: 60px;
	}
	.title h3{
		font-size:1.5em;
		color:#6e40c4;
		text-shadow:0 0 4px deepskyblue;
	}
	.list{
		border-collapse:collapse;
		border-spacing:0;
		width:900px;
	}
	.list>tbody>tr:nth-child(2n){
		background-color:rgb(239,233,252);
	}
	.list>tbody>tr:nth-child(n+2):hover{
		background-color:#b9a0fe;
	}
	.list>tbody>tr>th{
		border-top:1px solid #384d75;
		border-bottom:1px solid #ccc;
		padding:5px;
	}
	
	.list>tbody>tr>td{
		border-bottom:1px solid #ccc;
		padding:5px;
	}
	#list_wrap{
		margin-top: 200px;
		text-align: center;
	}
	#list_wrap a{
		display:inline-block;
		font-weight: bold;
		text-decoration: none;
	}
	.list a{
		background-color: transparent;
		color:#424242;
		
	}
	.header_area a{
		width:100px;
		padding:10px;
		text-align:center;
	}
	.header_area span{
		font-weight:bold;
	}
	.pagination a{
		padding:5px;
		width:20px;
		height:20px;
	}
	.pagination a:hover{
		background-color:rgb(198,175,245);
	}
	.nowPage{
		padding:5px;
		display:inline-block;
		border-radius:3px;
		background-color:rgb(198,175,245);
		color:#fff;
		font-weight: bold;
		width:20px;
		height:20px;
	}
	a.write{
	padding:5px;
		width:70px;
		height:25px;
		text-align: center;
	}
	input[type=button]{
		display:inline-block;
		background-color:#6e40c4;
		color: #FFF;
		width:70px;
		margin-top: -3px;
		height:25px;
		text-align: center;
		vertical-align: middle;
		line-height: 25px;
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
	<c:if test="${loginUser.userid == 'admin'}">
		<script>
			alert("접근 권한이 없습니다!");
			location.replace("${pageContext.request.contextPath}/user/UserAdmin.us");
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
    
     <c:if test="${not empty param.c }">
		<c:if test="${param.c == 'f' }">
			<script>
				alert("예매 취소 실패! 다음에 다시 시도해주세요.");
			</script>
		</c:if>
		<c:if test="${param.c == 't' }">
			<script>
				alert("예매 취소 성공!");
			</script>
		</c:if>
	</c:if>
	
	
	<div style="margin:0 auto; width:1000px;" id="list_wrap">
		
		<!-- 타이틀과 글 개수 띄워주는 테이블 -->
		<table class="title">
			<tr align="center" valign="middle">
				<td><h3>예매 내역</h3></td>
			</tr>
		</table>

		<!-- 게시글 리스트 띄우는 테이블 -->
		<table class="list">
			<tr align="center" valign="middle">
				<th width="10%">예매번호</th>
				<th width="15%">예매일자</th>
				<th width="20%">영화제목</th>
				<th width="30%">상영시작시간</th>
				<th width="15%">상영관</th>
				<th width="10%">좌석번호</th>
				
			</tr>
			<c:choose>
				<c:when test="${ticketingList != null and ticketingList.size()>0}">
					<c:forEach items="${ticketingList}" var="ticketing">
						<tr>
							<c:forEach items="${timeList}" var="time">
								<c:if test="${time.timeid == ticketing.timeid}">
									<td><a style="color: #6e40c4;" href="${cp}/user/UserTicketingView.us?ticketingid=${ticketing.ticketingid}&page=${page}&keyword=${keyword}&starttime=${time.starttime}&endtime=${time.endtime}">${ticketing.ticketingid}</a></td>
								</c:if>
							</c:forEach>
							<c:forEach items="${timeList}" var="time">
								<c:if test="${time.timeid == ticketing.timeid}">
									<td><a style="color: #6e40c4;" href="${cp}/user/UserTicketingView.us?ticketingid=${ticketing.ticketingid}&page=${page}&keyword=${keyword}&starttime=${time.starttime}&endtime=${time.endtime}">${ticketing.ticketingdate}</a></td>
								</c:if>
							</c:forEach>
							<c:forEach items="${timeList}" var="time">
								<c:if test="${time.timeid == ticketing.timeid}">
									<td><a style="color: #6e40c4;" href="${cp}/user/UserTicketingView.us?ticketingid=${ticketing.ticketingid}&page=${page}&keyword=${keyword}&starttime=${time.starttime}&endtime=${time.endtime}">${ticketing.movietitle}</a></td>
								</c:if>
							</c:forEach>
							<c:forEach items="${timeList}" var="time">
								<c:if test="${time.timeid == ticketing.timeid}">
									<td><a style="color: #6e40c4;" href="${cp}/user/UserTicketingView.us?ticketingid=${ticketing.ticketingid}&page=${page}&keyword=${keyword}&starttime=${time.starttime}&endtime=${time.endtime}">
										<c:forEach items="${timeList}" var="time">
											<c:if test="${time.timeid == ticketing.timeid}">
												${time.starttime}
											</c:if>
										</c:forEach>
									</a></td>
								</c:if>
							</c:forEach>
							<c:forEach items="${timeList}" var="time">
								<c:if test="${time.timeid == ticketing.timeid}">
									<td><a style="color: #6e40c4;" href="${cp}/user/UserTicketingView.us?ticketingid=${ticketing.ticketingid}&page=${page}&keyword=${keyword}&starttime=${time.starttime}&endtime=${time.endtime}">${ticketing.cinemaid}</a></td>
								</c:if>
							</c:forEach>
							<c:forEach items="${timeList}" var="time">
								<c:if test="${time.timeid == ticketing.timeid}">
									<td><a style="color: #6e40c4;" href="${cp}/user/UserTicketingView.us?ticketingid=${ticketing.ticketingid}&page=${page}&keyword=${keyword}&starttime=${time.starttime}&endtime=${time.endtime}">
										<c:set var="seatidList" value="${ticketing.seatid.split(',')}"/>
										<c:forEach items="${seatList}" var="seat">
											<c:forEach items="${seatidList}" var="seatids">
												<c:if test="${seat.seatid == seatids}">
													${seat.seatnum}&nbsp;
												</c:if>
											</c:forEach>
										</c:forEach>
									</a></td>
								</c:if>
							</c:forEach>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="6" style="text-align: center; font-size: 20px">
							예매 내역이 없습니다.
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
						<a href="${cp}/user/UserTicketingList.us?page=${startPage-1}&keyword=${keyword}">&lt;</a>
					</c:if>
					<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:choose>
							<c:when test="${page == i}">
								<span class="nowPage">${i}</span>
							</c:when>
							<c:otherwise>
								<a href="${cp}/user/UserTicketingList.us?page=${i}&keyword=${keyword}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${endPage != totalPage }">
						<a href="${cp}/user/UserTicketingList.us?page=${endPage+1}&keyword=${keyword}">&gt;</a>
					</c:if>
				</td>
			</tr>
		</table> 
		
		<div class="search_area">
			<input type="search" id="q" name="q"> <input type="button" value="예매번호검색" onclick="search()">
		</div>
	</div>

</body>
<script>
	function search(){
		let q = document.getElementById("q");
		//유효성 검사(귀찮으니 스킵)
		location.href = "${pageContext.request.contextPath}/user/UserTicketingList.us?keyword="+q.value;		
	}
</script>
</html>