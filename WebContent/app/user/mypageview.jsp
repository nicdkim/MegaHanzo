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
	#mypage{
		width : 150px;
 		height: 500px;
 		background-color: #5C0496;
 		font-size : 20px;
 		position : absolute;
        top:0;            
        text-align: center;
        color: white !important;
	}
	#mypage a{
        color: white !important;
	}
	#mypage a:hover{
        color: deepskyblue !important;
	}
	footer{
		position : fixed;
		bottom : 0;
		width: 100%;
	}
	body {
       
        background-repeat : no-repeat;
        background-size: 100% 100%;
        background-position : center;
 		width: 100%;
 		height: 470px;
      }
    .box{
    	border: 2px dashed #fff;
    	color: black;
    	font-weight: bold;
    	border-style: solid;
    	border-left-width: 0px;
    	border-right-width: 0px;
    }
    
       	.clearfix > li:hover {
  background-color: #fff;
  transition-duration: 0.5s;
}

.clearfix > li:hover .submenu {
  height: 160px; /*서브메뉴 li한개의 높이 50*5*/
  transition-duration: 1s;
   	}
.clearfix > li:hover .submenu1 {
  height: 170px; /*서브메뉴 li한개의 높이 50*5*/
  transition-duration: 1s;
   	}
   	
   	.submenu {
  height: 0; /*ul의 높이를 안보이게 처리*/
  overflow: hidden;
}
   	.submenu1 {
  height: 0; /*ul의 높이를 안보이게 처리*/
  overflow: hidden;
}
	
	#help{
	
	}
	.help_box{
		margin:0 auto;
		position: absolute;
		top: 50%;
		left:23%;
  		display: block;
		margin-left: auto;
		margin-right: auto;
		margin-top: 100px; 
		display: flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		text-decoration: none;

	}
	.help_img1{
		float:left;
		margin-right:200px;
		margin-left: 0px;
		width:100px;
		margin-bottom: 150px;
		padding:30px;
	}
	.help_img2{
		width:100px;
		margin-bottom: 150px;
		padding:30px;
	}
	.help_img3{
		margin-bottom: 150px;
		width:100px;
		height:100px;
		padding:30px;
		margin-right:200px;
		
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
      
      	<div id="help">
	      	<div class="help_box">
				<div class="help_img1">
					<a href="${pageContext.request.contextPath}/user/UserTicketingList.us">
						<img src="${pageContext.request.contextPath}/app/user/assets/img/10.png" alt="예매 확인">
						<strong>예매 확인</strong>
					</a>
				</div>
				<div class="help_img3" style="margin-top: -15px;">
					<a href="javascript:isityou('${loginUser.userpw}')">
						<img src="${pageContext.request.contextPath}/app/user/assets/img/20.png" alt="정보 수정">
						<strong>정보 수정</strong>
					</a>	    				
			    </div>
				<div class="help_img2">
					<a href="${cp}/user/UserLeave.us?useradmin=${loginUser.useradmin}">
						<img src="${pageContext.request.contextPath}/app/user/assets/img/30.png" alt="회원 탈퇴">
						<strong>회원 탈퇴</strong>
					</a>	    				
			    </div>
			    
			</div>
		</div>
    </header>
    
<%-- 	<form class="box" id="mypage">
		<table>
			<br>
			<br>
              <div style="font-size:30px;">MyPage</div><br>
			<tr>
				<li><a href="${cp}/user/UserTicketingList.us">예매 내역</a></li><br>
				<li><a href="javascript:isityou('${loginUser.userpw}')">정보 수정</a></li><br>
				<li><a href="${cp}/user/UserLeave.us?useradmin=${loginUser.useradmin}">회원 탈퇴</a></li>
			</tr>
		</table> --%>
<!-- 	</form> -->
	
	
      
    
    <c:if test="${not empty param.u }">
		<c:if test="${param.u == 'f' }">
			<script>
				alert("내 정보 수정 실패! 다음에 다시 시도해주세요.");
			</script>
		</c:if>
		<c:if test="${param.u == 't' }">
			<script>
				alert("내 정보 수정 성공!");
			</script>
		</c:if>
	</c:if>
	
	
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
<script>
	let count = 0;
	
	function isityou(userpw){
		let pwchk = prompt("비밀번호를 입력해주세요");
		if(pwchk == userpw){
			location.href = cp+"/user/UserModify.us";
		}
		else{
			count++;
			if(count > 1){
				alert("비밀번호를 "+count+"회 연속으로 틀리셨습니다!");				
			}
			else{
				alert("비밀번호를 "+count+"회 틀리셨습니다!");								
			}
		}
		if(count == 3){
			location.href = cp+"/user/UserLogoutOk.us";
		}
	}
</script>
<script src="${cp}/app/user/user.js"></script>
</html>