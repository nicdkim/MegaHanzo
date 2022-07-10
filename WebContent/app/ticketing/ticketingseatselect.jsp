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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/ticketing/assets/css/reset.css" />
       <link rel="stylesheet" href="${pageContext.request.contextPath}/app/ticketing/assets/css/style.css" />
       <link rel="stylesheet" href="${pageContext.request.contextPath}/app/ticketing/assets/css/tistyle.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/ticketing/assets/css/swiper.css" />

    <!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/ticketing/assets/icons/favicon.ico" />
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
	<script src="${pageContext.request.contextPath}/app/movie/assets/js/jquery.min_1.12.4.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <!-- 웹 폰트 -->
    <link
      href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
      rel="stylesheet"
    />
    
    <!-- 결제 API -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>

  <style>
    	form{
    		justify-content: center;
    	}
		input[type=submit]{
			margin-top:30px;
			padding:10px 20px;
			width:100px;
			border:none;
			background-color:#6e40c4;
			border-radius:5px;
			color:#fff;
			font-weight:bold;
			font-size:18px;
		}
		input[type=button]{
			text-align: center;
			margin-top:30px;
			padding:10px 20px;
			width:100px;
			border:none;
			background-color:#6e40c4;
			border-radius:5px;
			color:#fff;
			font-weight:bold;
			font-size:18px;
		}
		
		body{
			height: 100vh;
			background-image: url('${pageContext.request.contextPath}/app/ticketing/assets/img/movie.jpg');
      	    background-repeat : no-repeat;
      	    background-size : cover;
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
	<c:if test="${loginUser.useradmin == 1}">
		<script>
			alert("접근권한이 없습니다!");
			location.replace("${pageContext.request.contextPath}/user/UserAdmin.us");
		</script>
	</c:if>
    <header id="header">
      <div class="container">
        <div class="row">
          <div class="header clearfix">
            <h1>
              <a href="${pageContext.request.contextPath}/">
                <em><img src="${pageContext.request.contextPath}/app/ticketing/assets/img/logo.png" alt="MEGAHANZO" /></em>
                <strong
                  ><img src="${pageContext.request.contextPath}/app/ticketing/assets/img/logo-sub.png" alt="LIFE THEATER"
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
   <form id="seatSelectForm" method="post" name="seatForm" action="${cp}/ticketing/TicketingOk.ti">
   		<input type="hidden" name="userid" value="${loginUser.userid}"/>
   		<input type="hidden" name="movietitle" value="${time.movietitle}"/>
   		<input type="hidden" name="cinemaid" value="${time.cinemaid}"/>
   		<input type="hidden" name="timeid" value="${time.timeid}"/>
   		<input type="hidden" name="ticketingid" value="0"/>
   		<input type="hidden" name="ticketingprice" value="0"/>
   		<input type="hidden" name="impuid" value="0"/>
	   	<input type="hidden" name="movietitle" value="${time.movietitle}"/>
   		<input type="hidden" id="seatlist" name="seatlist" value="helloworld" />
   		
   		<ul class="showcase">
	    	<li>
        		<div class="seat"></div>
        		<small>N/A</small>
      		</li>

      		<li>
        		<div class="seat selected"></div>
        		<small>선택하신 좌석</small>
      		</li>

      		<li>
        		<div class="seat occupied"></div>
        		<small>이미 예매된 좌석</small>
      		</li>
    	</ul>
   		
	   	<div class="seat-container">
     		<div class="screen"></div>
      		<c:forEach begin="0" end="9" step="1" var="i">
      			<div class="seat-row">
	    			<c:forEach begin="0" end="9" step="1" var="j">
	      				<div class="seat <c:if test='${seatList[i*10+j].seatoccupied == 1}'>occupied</c:if>" id="seat${i*10+j}" ></div>
    				</c:forEach>
    			</div>
   			</c:forEach>
   		</div>
   		
	   <div id="ok">
       <input type="button" value="이전단계" onclick="location.href='${pageContext.request.contextPath}/ticketing/TicketingTimeSelect.ti?movietitle=${time.movietitle}';">
       <input type="hidden" name="userphone" value="${loginUser.userphone}"/>
       <input type="hidden" name="addr" value="${loginUser.addr}"/>
       <input type="hidden" name="zipcode" value="${loginUser.zipcode}"/>
       <input type="hidden" name="username" value="${loginUser.username}"/>
       <input type="button" onclick="return payment_req(countselected());" value="예매하기">
       </div>
    </form>
  </body>
  <script>
  	let selected_count = 0;
	function countselected(){
		selected_count = 0;
		for(let i=0;i<100;i++){
	  		if($("#seat"+i).hasClass("selected") == true) {
	  			selected_count ++;
			}
		}
		document.seatForm.ticketingprice.value = selected_count * 10000;
		return selected_count;
	}
  </script>
  <script src="/app/ticketing/assets/js/script.js"></script>
  <script>
  	let seatlist = "";
  	
  	function registerticket(){
  		let count = 0;
  		for(let i=0;i<100;i++){
	  		if($("#seat"+i).hasClass("selected") == true) {
 				seatlist+='1';
  				count ++;
  			}
	  		else{
 				seatlist+='0';
	  		}
  		}
  		if(count == 0){
  			alert("좌석을 선택해주세요!");
  			return false;
  		}
  		else{
  			let result = window.confirm("정말 해당 좌석을 예매하시겠습니까?");
  			if(result){
  			  	document.getElementById("seatlist").value = seatlist;
  			  	return true;
  			}
  			else{
  				return false;
  			}
  		}
  	}
  	function payment_req(priceamount){
  		if(!registerticket()){
  			return false;
  		}
  		document.seatForm.ticketingid.value = 'merchant_' + new Date().getTime();
  		let ticketingid = document.seatForm.ticketingid.value;
  		let movietitle = document.seatForm.movietitle.value;
  		console.log(movietitle);
  		let IMP = window.IMP;
  		IMP.init('imp54742719');
  		IMP.request_pay({
  			pg: 'kakaopay',
  			pay_method: 'card',
  			merchant_uid : ticketingid,
  			name: movietitle + " 표 " + priceamount+"장",
  			amount: priceamount*10000,
  			customer_uid: document.seatForm.username.value + new Date().getTime(),
  			buyer_email: "",
  		   	buyer_name: document.seatForm.username.value,
  		   	buyer_tel: document.seatForm.userphone.value,
  		   	buyer_addr: document.seatForm.addr.value,
  		   	buyer_postcode: document.seatForm.zipcode.value,
  		}, function(rsp){
  			if(rsp.success){
  				document.seatForm.impuid.value = rsp.imp_uid;
  				alert("결제에 성공하였습니다!");
  			}
  			else{
  				alert("결제에 실패하였습니다!");
  				return false;
  			}
  			document.seatForm.submit();
  		});
  	}
  	
  </script>
</html>