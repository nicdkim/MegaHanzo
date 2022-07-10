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

	.swiper-slide:after {
    z-index:-1;
	}
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
	
	.write{
		display:inline-block;
		border-radius:3px;
		background-color:#6e40c4;
		color:#fff;
		font-weight: bold;
		text-decoration: none;
		right: 0px;
	}
	
	.search_area {
		margin-left: 0px;
	}
	
	#sw_wrapper{
		width: 100%;
		display: flex;
		align-items: center;
		justify-content: center;
		background-color: #f2f2f2;
		height: 100px;
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
	input[type=button]{
		background-color: #6e40c4;
		color: #FFF;
	}
	.movie{
		padding-top: 0px !important;
	}
	.fixed_add a:hover{
		background: silver;
	}
	a#writemovie{
		width: 60px;
		height: 30px;
		display:inline-block;
		border-radius:3px;
		background-color:#6e40c4;
		color:#fff;
		font-weight: bold;
		text-decoration: none;
		text-align: center;
		line-height: 30px;
		pading: 3px;
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
                <em><img src="${pageContext.request.contextPath}/app/movie/assets/img/logo.png" alt="MEGAHANZO" /></em>
                <strong
                  ><img src="${pageContext.request.contextPath}/app/movie/assets/img/logo-sub.png" alt="LIFE THEATER"
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
	<c:if test="${cookie.w.value == 'f' }">
		<script>
			alert("영화 추가 실패!");
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
	<!-- 타이틀과 글 개수 띄워주는 테이블 -->
		<table class="title">
			<tr align="center" valign="middle">
				<td><h3>영화 랭킹</h3></td>
			</tr>
			<tr align="right" valign="middle">
				<td>영화 수 : ${totalCnt}</td>
			</tr>
		</table>
		
		
		
		
		
		
		
		
		
		
			<!-- body 시작  -->
    <section id="movie">
      <div class="container">
        <div class="row">
          <h2 class="ir_so">영화 예매</h2>
          <div class="movie">
            <div class="movie_title">
              <ul class="clearfix">
                <li class="active"><a href="#">평점랭킹</a></li>
                <li><a href="#">베스트셀링 무비</a></li>
              </ul>
            </div>
            <div class="movie_chart">
              <div class="swiper-container2" id="slider-bigcontain">
                <!-- 평점랭킹 -->
                <div
                  class="chart_cont1 swiper-wrapper"
                  id="slider-smallcontain"
 				  >
 				  
 				  
 				 <c:choose>
					<c:when test="${movieList != null and movieList.size()>0}">
						<c:forEach begin="0" end="${movieList.size()-1}" step="1" var="i">
							<c:set var="movie" value="${movieList[i]}" />
							<div class="swiper-slide">
                    			<div class="poster">
                      				<figure>
                        			<img src="${cp}/file/${files[i].systemname}" style="border-radius: 5px;">
     			                 </figure>
                			      <div class="rank"><strong>${i+1}</strong></div>
                   			 </div>
                    			<div class="infor">
                      			<h3>
 			                       <span 
 			                       
 			                       	<c:choose>
 								  		<c:when test="${movie.movieage == '12세이상'}">class="icon a15 ir_pm"</c:when>
 								  		<c:when test="${movie.movieage == '15세이상'}">class="icon a19 ir_pm"</c:when>
 								  		<c:when test="${movie.movieage == '18세이상'}">class="icon a12 ir_pm"</c:when>
 				 				 		<c:otherwise>class="icon all ir_pm"</c:otherwise>
 				  					</c:choose>
 			                       
 			                       >${movie.movieage}</span>
            			            <strong>${movie.movietitle}</strong>
      			                </h3>
                			      <div class="rate-date">
                      				<!-- <span class="rate">"예매율 27.7%"</span> -->
                      				<span class="date"></span>
                      			</div>
                      			<div class="infor_btn">
                        			<a href="${pageContext.request.contextPath}/movie/MovieView.mo?movieid=${movie.movieid}">상세정보</a>
                        			<a href="${pageContext.request.contextPath}/ticketing/TicketingTimeSelect.ti?movietitle=${movie.movietitle}">예매하기</a>
                     			 </div>
                    			</div>
                  			</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<div style="width: 100%; height: 300px; text-align: center;">
							등록된 영화가 없습니다
						</div>
					</c:otherwise>
				</c:choose>
 				  
 				  
                  





                </div>
              </div>
              <!-- //chart_cont1-->
              <!-- 평점랭킹 끝 -->

 <!-- 베스트셀링무비  -->
              <div class="swiper-container2">
                <div class="chart_cont2 swiper-wrapper">
                
                
                <c:choose>
					<c:when test="${movieList2 != null and movieList2.size()>0}">
						<c:forEach begin="0" end="${movieList2.size()-1}" step="1" var="i">
							<c:set var="movie" value="${movieList2[i]}" />
							<div class="swiper-slide">
                    			<div class="poster">
                      				<figure>
                        			<img src="${cp}/file/${files2[i].systemname}" style="border-radius: 5px;">
     			                 </figure>
                			      <div class="rank"><strong>${i+1}</strong></div>
                   			 </div>
                    			<div class="infor">
                      			<h3>
 			                       <span 
 			                       
 			                       	<c:choose>
 								  		<c:when test="${movie.movieage == '12세이상'}">class="icon a15 ir_pm"</c:when>
 								  		<c:when test="${movie.movieage == '15세이상'}">class="icon a19 ir_pm"</c:when>
 								  		<c:when test="${movie.movieage == '18세이상'}">class="icon a12 ir_pm"</c:when>
 				 				 		<c:otherwise>class="icon all ir_pm"</c:otherwise>
 				  					</c:choose>
 			                       
 			                       >${movie.movieage}</span>
            			            <strong>${movie.movietitle}</strong>
      			                </h3>
                			      <div class="rate-date">
                      				<!-- <span class="rate">"예매율 27.7%"</span> -->
                      				<span class="date"></span>
                      			</div>
                      			<div class="infor_btn">
                        			<a href="${pageContext.request.contextPath}/movie/MovieView.mo?movieid=${movie.movieid}">상세정보</a>
                        			<a href="${pageContext.request.contextPath}/ticketing/TicketingTimeSelect.ti?movietitle=${movie.movietitle}">예매하기</a>
                     			 </div>
                    			</div>
                  			</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<div style="width: 100%; height: 300px; text-align: center;">
							등록된 영화가 없습니다
						</div>
					</c:otherwise>
				</c:choose>
                  
                </div>
              </div>


            </div>
          </div>
        </div>
      </div>
	    <div style="display:flex;align-items:center;justify-content:center;width:100%;">
   			<c:if test="${loginUser.userid == 'admin'}">
				<a id="writemovie" href="${cp}/movie/MovieWrite.mo" style="color: white;">
					추가하기
				</a>
			</c:if>
    	</div>
    </section>
    <!-- //movie -->
    <!-- 글쓰기 버튼 배치하는 테이블 -->
    
    
   	<div id="sw_wrapper">
		<div class="search_area" id="search-area">
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
    
    <!-- 자바스크립트 라이브러리 -->
    <script src="${pageContext.request.contextPath}/app/movie/assets/js/jquery.min_1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/app/movie/assets/js/modernizr-custom.js"></script>
    <script src="${pageContext.request.contextPath}/app/movie/assets/js/ie-checker.js"></script>
    <script src="${pageContext.request.contextPath}/app/movie/assets/js/swiper.min.js"></script>
    <script src="${pageContext.request.contextPath}/app/movie/assets/js/iframe_api.js"></script>
    <script src="${pageContext.request.contextPath}/app/movie/assets/js/movie.js"></script>
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
    
    
</body>
<script>
	function search(){
		let q = document.getElementById("q");
		//유효성 검사(귀찮으니 스킵)
		location.href = "${pageContext.request.contextPath}/movie/MovieListByRate.mo?keyword="+q.value;		
	}
</script>
</html>



