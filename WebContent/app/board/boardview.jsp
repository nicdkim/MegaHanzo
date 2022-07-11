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
	    background-color: #01738b;
	    border-color: #01738b;
	}
	.pagination a:hover{
	    color: #fff;
	    background-color: #01738b;
	    border-color: #01738b;
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
	<c:set var="cp" value="${pageContext.request.contextPath }"/>
	<c:if test="${not empty param.u }">
		<c:if test="${param.u == 'f' }">
			<script>
				alert("게시글 수정 실패 ... 다음에 다시 시도해주세요.");
			</script>
		</c:if>
		<c:if test="${param.u == 't' }">
			<script>
				alert("게시글 수정 성공!");
			</script>
		</c:if>
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
		    
	<div id="wrap">

		<table class="title">
			<tr align="center" valign="middle">
				<td><p style="font-size:30px;">공지사항 상세보기</p></td>
			</tr>
		</table>
		<form>
			<table border="1" style="border-collapse: collapse; border-left: 2px solid #6e40c4;">
				<tr height="30px">
					<th align="center" width="150px" style="color: #6e40c4;">제 목</th>
					<td>
						<input name="boardtitle" size="50" maxlength="50"
						 readonly value="${board.boardtitle}">
					</td>
				</tr>
				<tr height="30px">
					<th align="center" width="150px" style="color: #6e40c4;">작성자</th>
					<td>
						<input name="userid" size="50" maxlength="50" readonly value="${board.userid}">
					</td>
				</tr>
				<tr>
					<th style="color: #6e40c4;">조회수</th>
					<td>
						${board.readcount }
					</td>
				</tr>
				<tr height="300px">
					<th align="center" width="150px" style="color: #6e40c4;">내 용</th>
					<td>
						<textarea name="boardcontents" style="width:700px;height:290px;
						resize:none" readonly>${board.boardcontents }</textarea>
					</td>
				</tr>
			</table>
			<table class="btn_area">
				<tr align="right" valign="middle">
					<td>
						<c:if test="${loginUser.useradmin == 1}"> 	<!--로그인 유저의 아이디가 'admin'일 때 수정, 삭제 버튼 표시가 안되서 관리자 1일때로 나타나게 변경 -->
							<a href="${cp}/board/BoardModify.bo?boardnum=${board.boardnum}&page=${param.page}&keyword=${param.keyword}" style="border-radius:3px;color: #fff;background-color: #6e40c4;border-color: #6e40c4; font-size:15px;">수정</a>&nbsp;&nbsp;
							<a href="${cp}/board/BoardRemove.bo?boardnum=${board.boardnum}" style="border-radius:3px;color: #fff;background-color: #6e40c4;border-color: #6e40c4; font-size:15px;">삭제</a>&nbsp;&nbsp;
						</c:if>
						<a href="${cp}/board/BoardList.bo?page=${param.page}&keyword=${param.keyword}" style="border-radius:3px;color: #fff;background-color: #6e40c4;border-color: #6e40c4; font-size:15px;">목록</a>
					</td>
				</tr>
			</table>
		</form>
		
		
		<div class="reply_line">
			<form name="replyForm" method="post" action="${cp}/board/ReplyWrite.bo">
				<input type="hidden" name="boardnum" value="${board.boardnum}">
				<input type="hidden" name="page" value="${param.page}">
				<table class="write_box">
					<tr>
						<td style="color: #6e40c4;">댓글</td>
						<td>
							<textarea name="replycontents" style="width:100%"></textarea>
							<a href="javascript:document.replyForm.submit()" style="border-radius:3px;color: #fff;background-color: #6e40c4;border-color: #6e40c4; font-size:15px;">등록</a>
						</td>
					</tr>
				</table>
			</form>
			<form name="updateForm" method="post" action="">
				<input type="hidden" name="boardnum" value="${board.boardnum}">
				<input type="hidden" name="page" value="${param.page}">
				<table class="update_box">
					<c:set var="i" value="0"/>
					<c:forEach items="${replies }" var="reply">
						<tr>
							<td style="color: #6e40c4;">${reply.userid}</td>
							<td>
								<textarea readonly name="reply${i}" id="reply${i}" class="replycontents" style="width:100%">${reply.replycontents }</textarea>
							</td>
							<td valign="middle" style="text-align: center">
								등록일 (${reply.regdate})
									<c:if test="${reply.updatechk == 'o' }">
										<br>(수정됨)
									</c:if>
								<c:if test="${reply.userid == loginUser.userid }">
									<div class="btns" style="width:80px; text-align:center; margin:0 auto;">
										<a href="javascript:updateReply(${i});" id="start${i}"style="border-radius:3px;color: #fff;background-color: #6e40c4;border-color: #6e40c4; font-size:15px;">수정</a>
										<a href="javascript:updateOk(${i},${reply.replynum})" style="display:none; color: #fff;border-radius:3px; background-color: #6e40c4;border-color: #6e40c4;; font-size:15px;" id="end${i}">수정완료</a>
										<a href="javascript:deleteReply(${reply.replynum})"style="border-radius:3px;color: #fff;background-color: #6e40c4;border-color: #6e40c4;; font-size:15px;">삭제</a>
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
	
	function deleteReply(replynum){
		updateForm.setAttribute("action","${cp}/board/ReplyRemove.bo?replynum="+replynum);
		updateForm.submit();
	}
	
	function updateReply(i){
		if(flag){
			//수정버튼
			let start = document.getElementById("start"+i);
			//수정완료버튼
			let end = document.getElementById("end"+i);
			//textarea
			let reply = document.getElementById("reply"+i);
			
			start.style.display = 'none';
			end.style.display = 'inline-block'
			reply.removeAttribute("readonly");
			
			flag = false;
		}
		else{
			alert("수정중인 댓글이 있습니다.");
		}
	}
	
	
	
	function updateOk(i,replynum){
		updateForm.setAttribute("action","${cp}/board/ReplyModify.bo?replynum="+replynum+"&i="+i);
		updateForm.submit();
	}
	
</script>
</html>
