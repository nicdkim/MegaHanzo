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
	.title h3{
		font-size:1.5em;
		color:#6e40c4;
		font-weight: bold;
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
      	height:25px;
      	margin:0 auto;
      	text-align:center;
      	position:absolute;
      	top:155%;
      	left:50%;
   	}
	a.write{
		padding:5px;
		width:70px;
		height:25px;
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
		text-decoration: none;
	}
</style>
</head>
<body>
	<c:set var="cp" value="${pageContext.request.contextPath}"/>
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
		    
    
    <div class="box has-lnb">
    
		<div class="inner-wrap">

			<div id="contents">
				<h2 class="tit">자주 묻는 질문</h2>

				<div class="faq-list-box">
					<p class="reset mb10"><strong><span id="totalTitle">전체</span> <span class="font-green" id="totalCnt">11</span>건</strong></p>

					<div class="faq-list">
						<ul>
							<li>
								<div class="qut" id="que-1">
									<a href="javascript:;" class="btn" onclick="function();">
										<p class="tit">
											<span class="font-green">[영화예매]</span>
										</p>
										<p class="txt">영화관람 등급은 어떻게 되나요?</p>
									</a>
								</div>
								<div class="awn" id="ans-1">
									<p class="cont"><strong>전체 관람가:</strong> 모든 연력의 고객이 관람 가능<br>
									<strong>12세 이상 관람가:</strong> 만12세 이상(주민등록상 생일기준) 관람가능<br>
									만 12세 미만 고객은 보호자(성인) 동반 시 관람 가능<br>
									<br>
									<strong>15세 이상 관람가:</strong> 만 15세 이상(주민등록상 생일기준) 관람 가능<br>
									만 15세 미만 고객은 보오자(성인) 동반 시 관람 가능<br>
									<br>
									<strong>청소년 관람불가:</strong> 만 18세 이상(주민등록상 생일기준) 관람가능<br>
									- 만 18세 이상이더라고 고등학교 재학중인 경우 관람 불가<br>
									- 신분증 지참 필수 (티켓 구매, 입장 시 신분등 확인 必)<br>
									만 18세 미만 고객은 보호자(성인) 동반 시에도 관람 불가<br>
									<br>
									<strong style="color:red;">보호자(성인): 만 20세 이상의 성인</strong>
								</p>
							</div>
						</li>
						<li>
							<div class="qut" id="que-2">
								<a href="javascript:;" class="btn" onclick="function();">										
									<p class="tit">
										<span class="font-green">[전체]</span>
									</p>
									<p class="txt">
										<p class="txt">외부음식 반입이 가능한가요?</p>
									</p>
								</a>
							</div>
							<div class="awn" id="ans-2">
								<p class="cont">
									상영관 내 외부 음식 반입은 가능하나<br>
									영화 관람 시 다른 고객님에게 방해가 되지않은 품목에 한하여 반입 가능합니다.<br>
									<br>
									강한 냄새 및 지속적인 소음이 발생하는 품목은 취식 후 입장해주시길 부탁드리며,<br>
									쾌적한 관람 환경을 위해 많은 양해 부탁드립니다.<br>
								</p>
							</div>
						</li>
						<li>
							<div class="qut" id="que-3">
								<a href="javascript:;" class="btn" onclick="function();">
									<p class="tit">
										<span class="font-green">[전체]</span>
									</p>
									<p class="txt">
										<p class="txt">분실물 문의는 어떻게 하나요?</p>
									</p>
								</a>
							</div>
							<div class="awn" id="ans-3">
								<p class="cont">
								홈페이지 및 모바일 어플 고객첸터 > 분실물 문의를 통해 관람하신 지점과 상세 내용을 기재하여 접수하여주시면<br>
								지점에서 확인 후 순차 답변을 드립니다.<br>
								</p>
							</div>
						</li>
						<li>
							<div class="qut" id="que-4">
								<a href="javascript:;" class="btn" onclick="function();">
									<p class="tit">
										<span class="font-green">[전체]</span>
									</p>
									<p class="txt">
										<p class="txt">주차가 가능한가요?</p>
									</p>
								</a>
							</div>
							<div class="awn" id="ans-4">
								<p class="cont">
								모든 영화관에는 주차공간이 마련되어 있으며,<br>
								주차 요금 및 주차장 정보 등 자세한 내용은 이용하시는 지점에서 확인 가능합니다.<br>
								</p>
							</div>
						</li>
						<li>
							<div class="qut" id="que-5">
								<a href="javascript:;" class="btn" onclick="function();">
									<p class="tit">
										<span class="font-green">[전체]</span>
									</p>
									<p class="txt">
										<p class="txt">반려동물과 함께 영화관람이 가능한가요?</p>
									</p>
								</a>
							</div>
							<div class="awn" id="ans-5">
								<p class="cont">
								안내견 제외, 반려동물의 경우 상용관 동반 입장이 불가능한 점 이용에 참고부탁드립니다.<br>
								<br>
								상영관 내 돌발상황 발생 및 알러지 보유 고객 등 다른 고객으로부터 불편이 접수 될 수 있어 입장이 제한되는 점 양해 부탁드립니다.
								</p>
							</div>
						</li>
						<li>
							<div class="qut" id="que-6">
								<a href="javascript:;" class="btn" onclick="function();">
									<p class="tit">
										<span class="font-green">[홈페이지]</span>
									</p>
									<p class="txt">
										<p class="txt">아이디를 바꾸고 싶은데 수정할 수 있나요?</p>
									</p>
								</a>
							</div>
							<div class="awn" id="ans-6">
							<p class="cont">
							회원가입시 입력한 아이디는 변경이 불가하며,<br>
							탈퇴 후 재가입(신규가입)을 통해 새로운 아이디로 지정할 수 있습니다.<br>
							</p>
							</div>
						</li>
						<li>
							<div class="qut" id="que-7">
								<a href="javascript:;" class="btn" onclick="function();">
									<p class="tit">
										<span class="font-green">[홈페이지]</span>
									</p>
									<p class="txt">
										<p class="txt">본 영화 후기등록은 어떻게 하나요?</p>
									</p>
								</a>
							</div>
							<div class="awn" id="ans-7">
							<p class="cont">
							회원 로그인 후 영화 후기 작성 탭에서 후기 작성 가능합니다.<br>
							</p>
							</div>
						</li>
						<li>
							<div class="qut" id="que-8">
								<a href="javascript:;" class="btn" onclick="function();">
									<p class="tit">
										<span class="font-green">[영화예매]</span>
									</p>
									<p class="txt">
										<p class="txt">영화는 어떻게 예매하나요?</p>
									</p>
								</a>
							</div>
							<div class="awn" id="ans-8">
							<p class="cont">
							홈페이지 상단 바에서 예매 클릭 후 영화, 좌석 및 시간을 선택하시면 예매가능합니다.<br>
							</p>
							</div>
						</li>
						<li>
							<div class="qut" id="que-9">
								<a href="javascript:;" class="btn" onclick="function();">
									<p class="tit">
										<span class="font-green">[영화예매]</span>
									</p>
									<p class="txt">
										<p class="txt">예매취소는 어떻게 하나요?</p>
									</p>
								</a>
							</div>
							<div class="awn" id="ans-9">
							<p class="cont">
							상영시간 20분 전까지 홈페이지에서 취소가 가능합니다.<br>
							</p>
							</div>
						</li>
						<li>
							<div class="qut" id="que-10">
								<a href="javascript:;" class="btn" onclick="function();">
									<p class="tit">
										<span class="font-green">[홈페이지]</span>
									</p>
									<p class="txt">
										<p class="txt">회원정보는 어디서 바꾸나요?</p>
									</p>
								</a>
							</div>
							<div class="awn" id="ans-10">
							<p class="cont">
							홈페이지 회원 로그인 후 내 정보에서 회원 정보 수정을 통해 변경하실 수 있습니다.<br>
							</p>
							</div>
						</li>
						<li>
							<div class="qut" id="que-11">
								<a href="javascript:;" class="btn" onclick="function();">
									<p class="tit">
										<span class="font-green">[영화예매]</span>
									</p>
									<p class="txt">
										<p class="txt">인터넷 예매시 부분환불/교환이 가능한가요?</p>
									</p>
								</a>
							</div>
							
							<div class="awn" id="ans-11">
							<p class="cont">
							인터넷 예매시에는 예매매수의 전체환불 및 교환만 가능합니다.<br>
							</p>
							</div>
							
						</li>
					</ul>
				</div>
			</div>
			
			 

				<!-- 페이징 처리하는 테이블 -->
				<!-- 추후 수정 필요 -->
    	<%-- <table class="pagination">
			<tr align="center" valign="middle">
				<td>
					<c:if test="${startPage != 1}">
						<a href="${cp}/board/BoardFaqList.bo?page=${startPage-1}&keyword=${keyword}">&lt;</a>
					</c:if>
					<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:choose>
							<c:when test="${page == i}">
								<span class="nowPage">${i}</span>
							</c:when>
							<c:otherwise>
								<a href="${cp}/board/BoardFaqList.bo?page=${i}&keyword=${keyword}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${endPage != totalPage }">
						<a href="${cp}/board/BoardFaqList.bo?page=${endPage+1}&keyword=${keyword}">&gt;</a>
					</c:if>
				</td>
			</tr>
		</table>  --%>
			</div>
		</div>
			<!-- pagination -->
		<div>
			<div class="nowPage">
			    <nav>
					<strong>1</strong> 
						<!-- <a title="2페이지보기" href="javascript:void(0)" pagenum="2">2</a> -->
				</nav> 
			</div>
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
    <!-- //footer -->
    
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<script>
	// faq ans 보기 창
	const items = document.querySelectorAll('.qut');

	  function openCloseAnswer() {
	    const answerId = this.id.replace('que', 'ans');

	    if(document.getElementById(answerId).style.display === 'block') {
	      document.getElementById(answerId).style.display = 'none';
	    } else {
	      document.getElementById(answerId).style.display = 'block';
	    }
	  }

	  items.forEach(item => item.addEventListener('click', openCloseAnswer));
	   
	  // faq qut on/off
	  $(".qut").click(function(){
		  $(this).toggleClass("on off");
	  })
</script>
</html>
      