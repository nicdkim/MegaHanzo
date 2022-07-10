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
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/user/assets/icons/favicon.ico" />
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
<style>
	body{
		background-color:rgb(245,246,247);
	}
	#wrap{
		margin-top: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	input{
		box-sizing: border-box;
		cursor:pointer;
	}
	table{
		border-collapse: collapse;
		justify-content: center;
  		align-items: center;
	}
	th{
		text-align: left;
	}
	th::after{
		content:"";
		display:inline-block;
		box-sizing:border-box;
		width:1px;
		height:14px;
		
	}
	th,td{
		padding:5px;
	}
	td{
		padding-left:20px;
		width:400px;
	}
	input[type=text], input[type=password]{
		padding:10px 15px 10px 10px;
		border:1px solid #ccc;
		width:250px;
	}
	input:focus{
		outline:none;
		border:1px solid #6e40c4;
	}
	
	td > input[type=text]+input[type=button]{
		margin-left:10px;
		padding:8px 10px;
		background-color:#6e40c4;
		color:#fff;
		font-size:14px;
		font-weight:bold;
		border:none;
		border-radius:5px;
		width:80px;
	}
	.zipcode_area > td > input[type=text]{
		width:200px;
	}
	.zipcode_area > td > input[type=button]{
		width:130px !important;
	}
	.addr_area > td > input[type=text], .addr_area+tr > td > input[type=text], .addr_area+tr+tr > td > input[type=text]{
		width:340px;
	}
	.hobby_area > td > div{
	 	display: flex;
		width:360px;
		flex-wrap: wrap;
	}
	.hobby_area > td > div > div{
		padding:10px;
		flex:1 1 40%;
	}
	.hobby_area > td > div > div:nth-child(2n){
		border-left:1px solid #ccc;
	}
	input[type=submit]{
		margin:0 auto;
		padding:10px 10px;
		margin-left:40px;
		background-color:#6e40c4;
		color:#fff;
		font-size:20px;
		font-weight:bold;
		border:none;
		border-radius:5px;
		width:400px;
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
	<%-- <c:if test="${loginUser.useradmin == 1}">
		<script>
			alert("접근 권한이 없습니다!");
			location.replace("${pageContext.request.contextPath}/user/UserAdmin.us");
		</script>
	</c:if> --%>
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
    
	<form id="wrap" name="modifyForm" method="post" action="${cp}/user/UserModifyOk.us" onsubmit="return modify();">
		<input type="hidden" name="useradmin1" value="${loginUser.useradmin}"/>
		<table>
			<tr>
				<td id="result" colspan="2"></td>
			</tr>			
			<tr>
				<th><label for="userid1">아이디(수정 불가)</label></th>
				<td><input type="text" name="userid1" id="userid1" value="${loginUser.userid}" readonly></td>
			</tr>
			<tr>
				<th><label for="userpw1">비밀번호</label></th>
				<td><input type="password" name="userpw1" id="userpw1" value="${loginUser.userpw}"></td>
			</tr>
			<tr>
				<th><label for="userpw_re1">비밀번호 확인</label></th>
				<td><input type="password" name="userpw_re1" id="userpw_re1"></td>
			</tr>
			<tr>
				<th><label for="username1">이름</label></th>
				<td><input type="text" name="username1" id="username1" value="${loginUser.username}"></td>
			</tr>
			<tr>
				<th><label for="userage1">나이</label></th>
				<td><input type="text" name="userage1" id="userage1" value="${loginUser.userage}"></td>
			</tr>
			<tr>
				<td id="result3" colspan="2"></td>
			</tr>
			<tr>
				<th><label for="userphone1">전화번호</label></th>
				<td><input type="text" name="userphone1" id="userphone1" value="${loginUser.userphone}"></td>
			</tr>
			<tr>
				<td id="result2" colspan="2"></td>
			</tr>
			<tr class="zipcode_area">
				<th>우편번호</th>
				<td>
					<input readonly name="zipcode1" type="text" id="sample6_postcode" placeholder="우편번호"  value="${loginUser.zipcode}"><input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				</td>
			</tr>
			<tr class="addr_area">
				<th>주소</th>
				<td><input readonly name="addr1" type="text" id="sample6_address" placeholder="주소" value="${loginUser.addr}"></td>
			</tr>
			<tr>
				<th>상세주소</th>
				<td><input name="addrdetail1" type="text" id="sample6_detailAddress" placeholder="상세주소" value="${loginUser.addrdetail}"></td>
			</tr>
			<tr>
				<th>참고항목</th>
				<td><input readonly name="addretc1" type="text" id="sample6_extraAddress" placeholder="참고항목" value="${loginUser.addretc}"></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="수정 완료">
				</th>
			</tr>
		</table>
	</form>
	
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
<script>let cp = "${pageContext.request.contextPath}";</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/app/user/user.js"></script>
</html>