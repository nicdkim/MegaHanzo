<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/board/assets/css/faq.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/board/assets/css/board.css" />

    

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
	.title{
		margin-top:130px;
	}
	.title h2{
		font-size:30px;
	}
	.list{
		border-collapse:collapse;
		border-spacing:0;
		width:900px;
	}
	.list>tbody>tr:nth-child(2n){
		background-color:none;
	}
	.list>tbody>tr:nth-child(n+2):hover{
		color: #fff;
    	background-color: #6e40c4;
    	border-color: #6e40c4;
	}
	.list>tbody>tr:nth-child(n+2):hover a{
		color: #fff;
    	background-color: #6e40c4;
    	border-color: #6e40c4;
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
	}
	
	#list_wrap a{
		display:inline-block;
		border-radius:3px;
		background-color:#6e40c4;
		color:#fff;
		font-weight: bold;
		text-decoration: none;
	}
	.list a{
		background-color: transparent;
		color:#424242;
	}
	/* #header{
		height:50px;
		border-bottom: 1px solid #ccc;
	} */
	.header_area a{
		width:100px;
		padding:10px;
		text-align:center;
	}
	.header_area span{
		font-weight:bold;
	}
/* 	.pagination a{
		padding:5px;
		width:20px;
		height:20px;
		color: #fff;
    	border-color: #6e40c4; 
    	background-color: #6e40c4;
    	
	} */
	.pagination a:hover{
	    color: #fff;
   		background-color: #6e40c4;
   	 	border-color: #6e40c4;
	}
	.nowPage{
		padding:5px;
		display:inline-block;
		border-radius:3px;
		background-color:rgb(198,175,245);
		color:#fff;
		font-weight: bold;
		width:20px;
		height:25px;
	}
	
	a.write{
		padding:5px;
		width:70px;
		text-align: center;
	}
	.awn{
		display: none;
	}
	footer{
		margin-top: 200px;
		
	}
	#contents{
		padding-top:200px;
	}
	header{
		font-family: "Noto Sans KR", AppleSDGothicNeo-Regular, "Malgun Gothic", "맑은 고딕", dotum, "돋움", sans-serif !important;
	}
	
	header a{
		text-decoration: none !important;
	}

</style>
</head>
<body>
	<c:set var="cp" value="${pageContext.request.contextPath}"/>
		<c:if test="${cookie.w.value == 'f' }">
		<script>
			alert("게시글 추가 실패!");
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
		<header id="header" style="height:50px; border-bottom: 1px solid #ccc; !important">
		      <div class="container">
		        <div class="row">
		          <div class="header clearfix">
		            <h1>
		              <a href="${pageContext.request.contextPath}/">
		                <em><img src="${pageContext.request.contextPath}/app/movie/assets/img/logo.png" alt="MEGAHANZO" /></em>
		                <strong>
		                <img src="${pageContext.request.contextPath}/app/movie/assets/img/logo-sub.png" alt="LIFE THEATER" style="position:absolute;"/>
		                </strong>
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
	
	<div style="margin:0 auto; width:1000px;">
		<!-- 로그아웃 버튼 배치할 테이블 -->


		<!-- 타이틀과 글 개수 띄워주는 테이블 -->
		<table class="title">
			<tr align="center" valign="middle" style="font-size:20px;">
				<td><h2>공지사항</h2></td>
			</tr>
			<tr align="left" valign="middle">
				<td>전체 : ${totalCnt}</td>
			</tr>
		</table>

		<!-- 게시글 리스트 띄우는 테이블 -->
		<table class="list">
			<tr align="center" valign="middle">
				<th width="8%">번호</th>
				<th width="50%">제목</th>
				<th width="15%">작성자</th>
				<th width="17%">날짜</th>
				<th width="10%">조회수</th>
			</tr>
			<c:choose>
				<c:when test="${boardList != null and boardList.size()>0}">
					<c:forEach items="${boardList}" var="board">
						<tr>
							<td>${board.boardnum }</td>
							<td><a href="${cp}/board/BoardView.bo?boardnum=${board.boardnum}&page=${page}&keyword=${keyword}">${board.boardtitle }</a></td>
							<td>${board.userid }</td>
							<td>${board.regdate }</td>
							<td>${board.readcount }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5" style="text-align: center; font-size: 20px">
							등록된 공지사항이 없습니다.
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
						<a href="${cp}/board/BoardList.bo?page=${startPage-1}&keyword=${keyword}">&lt;</a>
					</c:if>
					<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:choose>
							<c:when test="${page == i}">
								<span class="nowPage">${i}</span>
							</c:when>
							<c:otherwise>
								<a href="${cp}/board/BoardList.bo?page=${i}&keyword=${keyword}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${endPage != totalPage }">
						<a href="${cp}/board/BoardList.bo?page=${endPage+1}&keyword=${keyword}">&gt;</a>
					</c:if>
				</td>
			</tr>
		</table> 
		<!-- 글쓰기 버튼 배치하는 테이블 -->
		<table style="border:0px; width:900px;">
			<tr align="right" valign="middle">
				<c:if test="${loginUser.userid == 'admin'}">
				<td><a class="write" style="color: #fff;background-color: #6e40c4;border-color: #6e40c4; border-radius:3px;"href="${cp}/board/BoardWrite.bo?page=${page}&keyword=${keyword}">글쓰기</a></td>
				</c:if>
			</tr>
		</table>
				
		<div class="search_area" >
			<input type="search" id="q" name="q"> <input type="button" value="검색" onclick="search()" style="color: #fff;background-color: #6e40c4;border-color: #6e40c4; border-radius:3px; text-decoration:none;">
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
	function search(){
		let q = document.getElementById("q");
		//유효성 검사(귀찮으니 스킵)
		location.href = "${pageContext.request.contextPath}/board/BoardList.bo?keyword="+q.value;		
	}
</script>
</html>



