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
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/app/user/assets/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/app/user/assets/js/jquery-barcode.js"></script>

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
	#list_wrap h1{
		text-align: center !important;
		font-size:1.5em;
		color:#6e40c4;
		text-shadow:0 0 4px deepskyblue;
	}
	#list_wrap{
		margin-top: 60px !important;
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
	button{
		display:inline-block;
		background-color:#6e40c4;
		color: #FFF;
		width:80px;
		margin-top: -3px;
		height:25px;
		text-align: center;
		vertical-align: middle;
		line-height: 25px;
	}
	input[type=submit]{
		border: 0px;
		display:inline-block;
		background-color:#6e40c4;
		color: #FFF;
		width:80px;
		margin-top: -3px;
		height:25px;
		text-align: center;
		vertical-align: middle;
		line-height: 10px;
	}
	#ticket_wrap{
		justify-content: center;
		align-items: center;
		text-align: center;
		
	}
	#ticket_wrap hr{
		width: 80%;
		border: solid 3px #6e40c4;
	}
	
	#ticket_wrap img{
		width: 30%;
	}

	#ticket_wrap b{
		font-size: 3rem;
		font-weight: 800;
	}
	
	#ticket_wrap span{
		font-size: 2rem;
		font-weight: 650;
		margin-bottom: 100px;
	}
	
	@media print {
 		header, footer, .no-print { display:none }
	}
	
	#barcode{
		width: 100%;
		height: 100px;
		padding: 0 auto;
		margin: 0 auto;
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
	
	<form method="post" name="barcodeform" action="${pageContext.request.contextPath}/user/TicketCancelOk.us?seatid=${ticket.seatid}" onsubmit="calcul()">
		<input type="hidden" name="ticketingid" value="${ticket.ticketingid}"/>
		<input type="hidden" name="userphone" value="${loginUser.userphone}"/>
		<input type="hidden" name="username" value="${loginUser.username}"/>
		<input type="hidden" name="movietitle" value="${ticket.movietitle}"/>
		<input type="hidden" name="cinemaid" value="${ticket.cinemaid}"/>
		<input type="hidden" name="ticketingdate" value="${ticket.ticketingdate}"/>
		<input type="hidden" name="ticketingprice" value="${ticket.ticketingprice}"/>
		<input type="hidden" name="impuid" value="0"/>
		<input type="hidden" name="starttime" value="${starttime}"/>
		<input type="hidden" name="cnt" value="0"/>
	</form>
	
	<div style="margin:0 auto; width:100%;" id="list_wrap">
		<div id="ticket_wrap">
			<h1 class="no-print">디지털 영화표</h1>
			<img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="MEGAHANZO" />
			<hr>
				<b>${ticket.movietitle}</b><br>
				<span>${ticket.cinemaid}관</span>
				<p>예매일자: ${ticket.ticketingdate}</p>
				<h3>상영시간: ${starttime} ~ ${endtime}</h3>
			<div id="barcode"></div>
			<hr>
			<button class="no-print" onclick="location.href='${pageContext.request.contextPath}/user/UserTicketingList.us';">목록</button>
			<button class="no-print" onclick="goprint();">인쇄하기</button>		
			<button class="no-print" onclick="sendticket();">티켓문자받기</button>
			<button class="no-print" onclick="location.href='${pageContext.request.contextPath}/user/TicketCancelOk.us?ticketingid=${ticket.ticketingid}&movietitle=${ticket.movietitle}&seatid=${ticket.seatid}&cnt='+calcul();">예매취소</button>
			<span id="result" style="display:block;"></span>		
		</div>
	</div>

</body>
<script>
	function calcul(){
		document.barcodeform.cnt.value = parseInt(document.barcodeform.ticketingprice.value / 10000,10);
		return parseInt(document.barcodeform.ticketingprice.value / 10000,10);
	}


	function sendticket(){
		const userphone = document.barcodeform.userphone;
		const username = document.barcodeform.username;
		const movietitle = document.barcodeform.movietitle;
		const cinemaid = document.barcodeform.cinemaid;
		const ticketingdate = document.barcodeform.ticketingdate;
		const starttime = document.barcodeform.starttime;
		const result = document.getElementById("result");
		const xhr = new XMLHttpRequest();
		
		xhr.open("GET","${pageContext.request.contextPath}/user/TicketSendOk.us?userphone="+userphone.value+"&movietitle="+movietitle.value+"&cinemaid="+cinemaid.value
				+"&ticketingdate="+ticketingdate.value+"&starttime="+starttime.value+"&username="+username.value,true);
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					let txt = xhr.responseText;
					txt = txt.trim();
					
					if(txt == "X"){
						result.innerHTML = "티켓정보가 발송되지 않았습니다!";
					}
					else{
						result.innerHTML = "티켓정보 발송에 성공하였습니다!";
					}
				}
			}	
		}
		xhr.send();
	}
	function goprint(){
		var div;
		var initBody;
	 	window.onbeforeprint = function(){
	 	 	initBody = document.body.innerHTML;
	  		document.body.innerHTML =  document.getElementById('list_wrap').innerHTML;
	 	};
	 	window.onafterprint = function(){
	  		document.body.innerHTML = initBody;
	 	};
	 	window.print();
		return false;
	}
	
	
	const ticketingid = document.barcodeform.ticketingid.value;
	console.log(ticketingid);
	$("#barcode").barcode(ticketingid, "datamatrix",{showHRI:false,bgColor:"white"});


</script>
</html>