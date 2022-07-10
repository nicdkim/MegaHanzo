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
      margin-bottom: 20px !important;
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
                <em><img src="${pageContext.request.contextPath}/app/user/assets/img/logo.png" alt="MEGAHANZO" /></em>
                <strong
                  ><img src="${pageContext.request.contextPath}/app/user/assets/img/logo-sub.png" alt="LIFE THEATER"
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
   
   <c:if test="${cookie.w.value == 'f' }">
      <script>
         alert("유저 추가 실패!");
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
  <c:if test="${not empty param.u }">
      <c:if test="${param.u == 'f' }">
         <script>
            alert("유저 권한 수정 실패! 다음에 다시 시도해주세요.");
         </script>
      </c:if>
      <c:if test="${param.u == 't' }">
         <script>
            alert("유저 권한 수정 성공!");
         </script>
      </c:if>
   </c:if>
   <c:if test="${not empty param.r }">
		<c:if test="${param.r == 't' }">
			<script>
				alert("강제 탈퇴 성공!");
			</script>
		</c:if>
	</c:if>
   <div style="margin:0 auto; width:1000px;" id="list_wrap">
      
      <!-- 타이틀과 글 개수 띄워주는 테이블 -->
      <table class="title">
         <tr align="center" valign="middle">
            <td><h3>유저 목록</h3></td>
         </tr>
         <tr align="right" valign="middle">
            <td>유저 수 : ${totalCnt}</td>
         </tr>
      </table>
      <input type="hidden" name="userid" id="userid" value=""/>
      <table class="list">
         <tr align="center" valign="middle">
            <th width="25%">아이디<span id="u" style="display:none;"></span></th>
            <th width="25%">이름</th>
            <th width="25%">관리자 권한</th>
            <th width="25%">권한 변경</th>
         </tr>
         <c:choose>
            <c:when test="${userList != null and userList.size()>0}">
               <c:forEach var="i" begin="0" end="${userList.size()-1}" step="1">
               <span class="adminid" style="display:none;"></span>
                  <tr>
                     <td id="userid${i}">${userList[i].userid}</td>      
                     <td><a style="color: #6e40c4;" href="${cp}/user/UserView.us?userid=${userList[i].userid}&page=${page}&keyword=${keyword}" id="username${i}">${userList[i].username}</a></td>
                     <td><c:if test="${userList[i].useradmin == 1}">관리자</c:if><c:if test="${userList[i].useradmin == 0}">일반회원</c:if></td>
                     <td>
                     	<c:if test="${userList[i].userid != 'admin'}">
      	                  	<select name="useradmin" id="useradmin${i}" class="useradmin">
        	                   <option value="0" <c:if test="${userList[i].useradmin == 0}">selected</c:if>>일반회원</option>
            	               <option value="1" <c:if test="${userList[i].useradmin == 1}">selected</c:if>>관리자</option>
                	        </select>
                        </c:if>
                     </td>
                     <td>
                     	<c:if test="${userList[i].userid != 'admin'}">
                        	<c:if test="${userList[i].useradmin == 0}">
		                		<input type="button" onclick="changeRole(${i})" value="변경" style="border:0px;border-radius: 3px;">   
                  	      	</c:if>
                    	    <c:if test="${userList[i].useradmin == 1}">
								<input type="button" onclick="changeRole(${i})" value="변경" style="border:0px;border-radius: 3px;">   
                        	</c:if>
                        </c:if>
                     </td>
                  </tr>
               </c:forEach>   
            </c:when>
            <c:otherwise>
               <tr>
                  <td colspan="2" style="text-align: center; font-size: 20px">
                     등록된 유저가 없습니다.
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
                  <a href="${cp}/user/UserList.us?page=${startPage-1}&keyword=${keyword}">&lt;</a>
               </c:if>
               <c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
                  <c:choose>
                     <c:when test="${page == i}">
                        <span class="nowPage">${i}</span>
                     </c:when>
                     <c:otherwise>
                        <a href="${cp}/user/UserList.us?page=${i}&keyword=${keyword}">${i}</a>
                     </c:otherwise>
                  </c:choose>
               </c:forEach>
               <c:if test="${endPage != totalPage }">
                  <a href="${cp}/user/UserList.us?page=${endPage+1}&keyword=${keyword}">&gt;</a>
               </c:if>
            </td>
         </tr>
      </table> 
      
      <div class="search_area">
         <input type="search" id="q" name="q"> <input type="button" value="아이디 검색" onclick="search()" style="border:0px;border-radius: 3px;">
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
<script>let cp = "${pageContext.request.contextPath}";</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/app/user/user.js"></script>
<script>

   function search(){
      let q = document.getElementById("q");
      //유효성 검사(귀찮으니 스킵)
      location.href = "${pageContext.request.contextPath}/user/UserList.us?keyword="+q.value;      
   }
   function changeRole(i){
      const userid = document.getElementById("userid"+i);
      location.href = "${pageContext.request.contextPath}/user/UserPerAction.us?userid="+userid.innerText;
   	  alert("변경되었습니다.");
   }    

</script>
</html>





