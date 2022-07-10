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
      audio{
         visibility:hidden;
      }
      
         .clearfix > li:hover {
     background-color: #fff;
     transition-duration: 0.5s;
   }
   
   .clearfix > li:hover .submenu {
     height: 150px; /*서브메뉴 li한개의 높이 50*5*/
     transition-duration: 1s;
         }
   .clearfix > li:hover .submenu1 {
     height: 100px; /*서브메뉴 li한개의 높이 50*5*/
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
   
      .clearfix{
      border: none;
      }
      .infor_btn{
      margin-top: 50px;
      }
   </style>
   <script>
   
   function getCookie(name) {
       var Found = false
       var start, end
       var i = 0

       // cookie 문자열 전체를 검색
       while(i <= document.cookie.length) {
         start = i
         end = start + name.length
         // name과 동일한 문자가 있다면
         if(document.cookie.substring(start, end) == name) {
           Found = true
           break
         }
         i++
       }

       // name 문자열을 cookie에서 찾았다면
       if(Found == true) {
         start = end + 1
         end = document.cookie.indexOf(";", start)
         // 마지막 부분이라는 것을 의미(마지막에는 ";"가 없다)
         if(end < start)
         end = document.cookie.length
         // name에 해당하는 value값을 추출하여 리턴한다.
         return document.cookie.substring(start, end)
       }
       // 찾지 못했다면
       return ""
     }
   
   function openMsgBox() {
       var eventCookie=getCookie("pop_cook");  // 쿠키이름_cook 은 임의로 꼭 변경하세요.
       if (eventCookie != "no")
       window.open('http://localhost:9090/app/popup.jsp','_blank','width=400,height=450,top=50,left=100');
       //팝업창의 주소, 같은 도메인에 있어야 한다.
     }
     openMsgBox();
   
   </script>
  </head>
  <body>
  
     <body onload="javascript:openPopup('popup.html')">
     
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
     
     <c:set var="cp" value="${pageContext.request.contextPath}"/>
  <audio id='audio' src="${pageContext.request.contextPath}/assets/hanzo.m4a"></audio>
    <header id="header">
      <div class="container">
        <div class="row">
          <div class="header clearfix">
            <h1>
              <a href="${pageContext.request.contextPath}">
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
                 <c:if test="${loginUser != null and loginUser.userid != 'admin'}">
               <li><a href="${cp }/movie/MovieListByRate.mo?useradmin=${loginUser.useradmin}">영화</a></li>
            </c:if>
                <c:if test="${loginUser != null and loginUser.userid != 'admin'}">
               <li><a href="${cp }/ticketing/TicketingMovieSelect.ti">예매</a></li>
            </c:if>
            <li>
                <c:if test="${loginUser != null and loginUser.userid != 'admin'}">
               <a href="${cp }/board/Board.bo">게시판</a>
            </c:if>
            <c:if test="${loginUser != null and loginUser.userid != 'admin'}">
               <li><a href="${cp }/movie/ReviewList.mo?useradmin=${loginUser.useradmin}">리뷰</a></li>
            </c:if>
                <ul class="submenu1">
               <li><a href="${pageContext.request.contextPath}/board/Boardview.bo">공지사항</a></li>
                  <li><a href="${pageContext.request.contextPath}/board/BoardWrite.bo">FAQ</a></li>
                    </ul>
                 </li>   
               <li>
            <c:if test="${loginUser != null and loginUser.userid != 'admin'}">
               <a href="${cp}/user/UserMypage.us?useradmin=${loginUser.useradmin}">내정보</a>
            </c:if>
                <ul class="submenu">
               <li><a href="${cp}/user/UserTicketingList.us">예매 내역</a></li>
                   <li><a href="javascript:isityou('${loginUser.userpw}')">정보 수정</a></li>   
                   <li><a href="${cp}/user/UserLeave.us?useradmin=${loginUser.useradmin}">회원 탈퇴</a></li>
                    </ul>
            </li>
            <c:if test="${loginUser.userid == 'admin' or loginUser.useradmin == 1}">
               <li><a href="${cp}/user/UserAdmin.us?useradmin=${loginUser.useradmin}">ADMIN</a></li>
            </c:if>
                <c:if test="${loginUser != null}">
               <li><a href="${cp}/user/UserLogoutOk.us">로그아웃</a></li>
            </c:if>
                <c:if test="${loginUser == null}">
               <li><a href="${cp}/user/UserLogin.us">로그인</a></li>
            </c:if>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </header>
    <!-- //header -->

    <!-- section1 -->
    <section id="banner">
      <div class="banner_menu">
        <h2 class="ir_so">배너 영역</h2>
      </div>
      <div class="slider">
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide ss1">
              <div class="container">
                <div class="row">
                  <h3 style="opacity: 0">.</h3>
                  <p style="opacity: 0">.</p>
                </div>
              </div>
            </div>
            <div class="swiper-slide ss2">
              <div class="container">
                <div class="row">
                  <h3 style="opacity: 0">.</h3>
                  <p style="opacity: 0">.</p>
                </div>
              </div>
            </div>
            <div class="swiper-slide ss3">
              <div class="container">
                <div class="row">
                  <h3 style="opacity: 0">.</h3>
                  <p style="opacity: 0">.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-pagination"></div>
          <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div>
        </div>
      </div>
    </section>
    <!-- //banner -->
    <!-- section1 -->
    <c:choose>
      <c:when test="${loginUser != null}">
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
                                 <img src="${cp}/file/${files[i].systemname}">
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
                                 <img src="${cp}/file/${files2[i].systemname}">
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
    </section>
          <!-- //movie -->
      </c:when>
      <c:otherwise>
    <!-- section2  -->
    <section id="movie" style="text-align: center; background-color:#6e40c4 !important;">
      <a href="${cp}/user/UserLogin.us" style="color: #fff;">로그인을 한뒤 영화 랭킹을 찾아주세요.</a>
    </section>
    <!-- //movie -->
         
      </c:otherwise>
   </c:choose>

    <!-- section3 -->
    <section id="help">
      <div class="container">
        <div class="row">
          <div class="help clearfix">
            <article class="help_box1">
              <h3><a href="${pageContext.request.contextPath}/board/BoardList.bo"><em>공지사항</em></a></h3>
              <div class="notice">
                <ul>
                  <li class="active">
                    <ul>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar"
                              >행사로 인한 MX관 이용제한 안내</strong
                            >
                            <em>2022.06.07</em>
                          </dt>
                          <dd>
                            6월 13일(월)~14일(화) 기간동안 MX관 행사로 인해
                            일반영화의 티켓예매가 제한되어 안내드리오니 영화관
                            이용에 참고부탁드립니다.
                          </dd>
                        </dl>
                      </li>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar"
                              >영화관 임시운영중단 안내</strong
                            >
                            <em>2022.06.07</em>
                          </dt>
                          <dd>
                            굿모닝시티쇼핑몰 건물 이슈로 인하여 불가피하게
                            영화관 운영이 불가하여 안내드리오니 참고 하시어 이용
                            부탁드립니다.
                          </dd>
                        </dl>
                      </li>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar"
                              >[범죄도시2 1PICK] 이벤트 당첨자 발표 지연
                              안내</strong
                            >
                            <em>2022.06.03</em>
                          </dt>
                          <dd>
                            금일 발표예정이었던 []범죄도시2] 1PICK 이벤트 당첨자
                            발표가 내부사정으로 인해 6월 7일(화)로
                            연기되었습니다.
                          </dd>
                        </dl>
                      </li>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar"
                              >고객센터 시스템 점검 안내</strong
                            >
                            <em>2019.05.30</em>
                          </dt>
                          <dd>
                            6/2(목) 메가박스 고객센터 시스템 점검으로 인하여
                            해당일의 고객상담 서비스 운영시간이 단축 운영될
                            예정입니다. 서비스 이용에 불편이 없도록 사전에 아래
                            내용을 참고해 주시기 바랍니다.
                          </dd>
                        </dl>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </article>
            <article class="help_box2">
              <h3><em>평점</em></h3>
              <div class="notice">
                <ul>
                  <li class="active">
                    <ul>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar">브로커</strong>
                            <em>2022.06.08</em>
                          </dt>
                          <dd>9.1</dd>
                        </dl>
                      </li>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar">범죄도시2</strong>
                            <em>2022.06.08</em>
                          </dt>
                          <dd>9.0</dd>
                        </dl>
                      </li>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar">극장판 포켓몬스터DP</strong>
                            <em>2022.06.08</em>
                          </dt>
                          <dd>8.3</dd>
                        </dl>
                      </li>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar">쥬라기월드</strong>
                            <em>2019.06.08</em>
                          </dt>
                          <dd>8.5</dd>
                        </dl>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </article>
            <article class="help_box3">
              <h3><a href="${cp}/movie/ReviewList.mo"><em>후기</em></a></h3>
              <div class="notice">
                <ul>
                  <li class="active">
                    <ul>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar">범죄도시2</strong>
                            <em>2022.06.08</em>
                          </dt>
                          <dd>마동석 짱!</dd>
                        </dl>
                      </li>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar">브로커</strong>
                            <em>2022.06.08</em>
                          </dt>
                          <dd>굿굿^^</dd>
                        </dl>
                      </li>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar">쥬라기월드</strong>
                            <em>2022.06.02</em>
                          </dt>
                          <dd>너무 재밌어요~~</dd>
                        </dl>
                      </li>
                      <li>
                        <dl>
                          <dt>
                            <strong class="bar">범죄도시2</strong>
                            <em>2019.05.31</em>
                          </dt>
                          <dd>재밌어요</dd>
                        </dl>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </article>
          </div>
        </div>
      </div>
    </section>
    <!-- //help -->

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

    <!-- 로그인 팝업창 -->
    <div id="popup" class="hide has-filter">
      <div class="content">
        <p>로그인</p>
        <button onclick="closePopup()">취소</button>
      </div>
    </div>

    <!-- 로그인 팝업창 끝 -->

    <!-- 트레일러 -->
    <aside role="complementary" id="blackout" class="overlay">
      <div id="trailerModal" class="modal">
        <div id="trailer"></div>
        <!-- YouTube 플레이어로 대체되는 부분 -->
      </div>
      <button id="hideTrailer" class="modal_close">닫기</button>
    </aside>

    <!-- 자바스크립트 라이브러리 -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min_1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/modernizr-custom.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/ie-checker.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/iframe_api.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/movie.js"></script>
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
  function checkAdmin(userid){
      const xhr = new XMLHttpRequest();
      
      xhr.open("GET",cp+"/user/CheckAdminOk.us?userid="+userid,true);
      xhr.onreadystatechange = function(){
         if(xhr.readyState == 4){
            if(xhr.status == 200){
               let txt = xhr.responseText;
               txt = txt.trim();
               
               if(txt == "O"){
                  return true;
               }
               else{
                  return false;
               }
            }
         }   
      }
      xhr.send();
   }
  </script>
  <script>let cp = "${pageContext.request.contextPath}";</script>
   <script> 
   function play() { 
       var audio = document.getElementById("audio"); 
       if (audio.paused) { 
           audio.play(); 
       }else{ 
           audio.pause(); 
           audio.currentTime = 0 
       } 
   }
   document.addEventListener("DOMContentLoaded", play());
   
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
</html>