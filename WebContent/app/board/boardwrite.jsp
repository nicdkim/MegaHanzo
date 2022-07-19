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
<title>메가한조</title>
<style>
   body{
      background-color:#fff;
   }
   wrap{
      border-radius:3px;
   }
   table{
      border:0px;
      width:900px;
      margin:auto;
   }
   #wrap{
      width:1000px;
      margin:0 auto;
      margin-top: 70px;
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
       background-color: #01738b;
       border-color: #01738b;
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
		color: #fff;
		background-color: #6e40c4;
		border-color: #6e40c4;
   }
   .pagination a:hover{
		color: #fff;
		background-color: #6e40c4;
		border-color: #6e40c4;
   }
   .nowPage{
		padding:5px;
      	display:inline-block;
      	border-radius:5px;
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
   .title {
      	margin-top: 80px;
      	margin-bottom: 20px;
   }
   
   table.type03 {
		border-collapse: collapse;
  		text-align: left;
  		line-height: 1.5;
  		border-top: 1px solid #ccc;
  		border-left: 2px solid #6e40c4;
  		margin : 20px 10px;
	}
	table.type03 th {
  		width: 147px;
  		padding: 10px;
  		font-weight: bold;
  		vertical-align: top;
  		color: #6e40c4;
 		border-right: 1px solid #ccc;
  		border-bottom: 1px solid #ccc;

	}
	table.type03 td {
  		width: 349px;
  		padding: 10px;
  		vertical-align: top;
  		border-right: 1px solid #ccc;
  		border-bottom: 1px solid #ccc;
	}

	.title h3{
     	font-size:1.5em;
      	color:#6e40c4;
      	text-shadow:0 0 4px deepskyblue;
    }
	.btn_area a{
      	text-align:center;
      	padding:10px;
      	width:100px;
      }

</style>
</head>
<body>
   <c:set var="cp" value="${pageContext.request.contextPath }"/>
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
          
   <div id="wrap">
   <form id="boardForm" method="post" name="boardForm" action="${cp}/board/BoardWriteOk.bo" enctype="multipart/form-data">
   <table class="title">
      <tr align="center" valign="middle">
            <td><h3>공지사항 추가</h3></td>
         </tr>
         </table>
         <table border="1" class="type03">
            <tr height="30px">
               <th align="center" width="150px">제 목</th>
               <td>
                  <input type="text" name="boardtitle" size="50" maxlength="50" placeholder="제목을 입력하세요">
               </td>
            </tr>
            <tr height="30px">
               <th align="center" width="150px">작성자</th>
               <td>
                  <input type="text" name="userid" size="50" maxlength="50" value="${loginUser.userid}" readonly>
               </td>
            </tr>
            <tr height="300px">
               <th align="center" width="150px">내 용</th>
               <td>
                  <textarea name="boardcontents" style="width:700px;height:290px; resize:none"></textarea>
               </td>
            </tr>
         </table>
         <br>
      
      <table class="btn_area">
         <tr align="right" valign="middle">
            <td>
               <a href="javascript:sendit()" style="border-radius:5px;color: #fff;background-color: #6e40c4;border-color: #6e40c4;font-size:15px;">등록</a>&nbsp;&nbsp;
               <a href="${cp}/board/BoardList.bo?page=${param.page}&keyword=${param.keyword}" style="border-radius:5px;color: #fff;background-color:#6e40c4;border-color:#6e40c4;font-size:15px;">목록</a>
            </td>
         </tr>
      </table>
      </tbody>
   </table>
   </form>
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<script>
   //$(제이쿼리선택자).change(함수) : 해당 선택자의 요소가 변화가 일어난다면 넘겨주는 함수 호출
   $("[type='file']").change(function(e){
      //e : 파일이 업로드된 상황 자체를 담고있는 객체
      //e.target : 업로드를 한 input[type='file'] 객체(태그객체)
      //e.target.files : 파일태그에 업로드를 한 파일 객체들의 배열
      //e.target.files[0] : 업로드가 된 파일객체
      let file = e.target.files[0];
      
      //$("#file1name")
      if(file == undefined){
         $("#"+e.target.id+"name").text("선택된 파일 없음");
         $("."+e.target.id+"_cont .thumbnail").remove();
      }
      else{
         $("#"+e.target.id+"name").text(file.name);
      }
      
      let ext = file.name.split(".").pop();
      if(ext == 'jpeg' || ext == 'jpg' || ext == 'png' || ext == 'gif'){
         let reader = new FileReader();
         
         reader.onload = function(ie){
            let img = document.createElement('img');//<img>
            img.setAttribute('src',ie.target.result)//<img src="???/apple.png">
            img.setAttribute('class','thumbnail');//<img src="???/apple.png" class="thumbnail">
            //".file1_cont"
            document.querySelector("."+e.target.id+"_cont").appendChild(img);
         }
         
         reader.readAsDataURL(file);
      }
      
   })
   
   function upload(name){
      //$("#file1")
      $("#"+name).click();
   }
   function cancelFile(name){
      if($.browser.msie){
         $("input[name="+name+"]").replaceWith( $("input[name="+name+"]").clone(true) );
      }
      else{
         //input[name=file1]
         $("input[name="+name+"]").val("");
      }
      //#file1name
      $("#"+name+"name").text("선택된 파일 없음");
      $("."+name+"_cont .thumbnail").remove();
   }
   function sendit(){
      const boardForm = document.boardForm;
      const boardtitle = boardForm.boardtitle;
      if(boardtitle.value == ''){
         alert("제목을 입력하세요!");
         boardtitle.focus();
         return false;
      }
      const boardcontents = boardForm.boardcontents;
      if(boardcontents.value == ''){
         alert("내용을 입력하세요!");
         boardcontents.focus();
         return false;
      }
      boardForm.submit();
   }
</script>
</html>

