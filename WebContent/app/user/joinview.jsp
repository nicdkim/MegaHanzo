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
	html,body{
	 margin:0; 
 	 padding:0;
 	 width:100%; 
 	 height:100px;
	}
	body{
		background-color:rgb(245,246,247);
		flex: 1;
	}
	#wrap{
		display: flex;
	 	float: none; 
		margin-left: 520px;
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
	.step-member ol li .step1 {display: inline-block; position: relative; z-index: 2;  margin: 0; padding: 0 0 15px 0;font-size: .9333em;letter-spacing: 0;}
	.step-member ol li .step2 {display: inline-block; position: relative; z-index: 2; margin: 0; padding: 0 0 15px 0; font-size: .9333em; letter-spacing: 0;color: #6e40c4;text-decoration: underline;}
	.step-member ol li .step3 {display: inline-block; position: relative; z-index: 2; margin: 0; padding: 0 0 15px 0; font-size: .9333em; letter-spacing: 0;}
	.step-member ol li {list-style-type: none; float: left; margin-left:20px;}
	.step-member {overflow: hidden; position: relative; padding: 0; text-align: center; float: none; margin-left:420px; margin-top:20px }
	.header h1 em {padding-right: 0;}
	.header h1 em {padding: 11px 11px 8px 0px;}
	.header h1 em { padding: 8px 8px 3px 0px; display: inline-block; }
	.header h1 em img {width: 230px;}
	.header h1 {margin: auto 520px; float: none; }
	
</style>
</head>
<body>

  	<c:set var="cp" value="${pageContext.request.contextPath}"/>
      <div class="container">
        <div class="row">
          <div class="header clearfix">
            <h1>
              <a href="${pageContext.request.contextPath}/">
                <em><img src="${pageContext.request.contextPath}/app/user/assets/img/logo.png" alt="MEGAHANZO" /></em>
              </a>
            </h1>
				</div>
            <div class="step-member" title="step1 약관동의, step2 정보입력, step3 가입완료 단계 중 step1 약관동의 단계"><!--step1 본인인증, step2 약관동의, step3 정보입력, step4 가입완료 단계 중 step1 본인인증 단계-->
		<ol>
						<li>
							<p class="step1">
								<em>STEP1.</em> <span>약관동의<!--약관동의--></span>
							</p>
						</li>
						<li>
							<p class="step2">
								<em>STEP2.</em> <span>정보입력<!--정보입력--></span>
							</p>
						</li>
						<li>
							<p class="step3">
								<em>STEP3.</em> <span>가입완료<!--가입완료--></span>
							</p>
						</li>
					</ol>
          </div>
        </div>
      </div>
	<form id="wrap" name="joinForm" method="post" action="${cp}/user/UserJoinOk.us" onsubmit="return join();">
		<table>
			<tr>
				<td id="result" colspan="2"></td>
			</tr>			
			<tr>
				<th><label for="userid">아이디</label></th>
				<td><input type="text" name="userid" id="userid">
					<input type="button" value="중복검사" onclick="checkId();"></td>
			</tr>
			<tr>
				<th><label for="userpw">비밀번호</label></th>
				<td><input type="password" name="userpw" id="userpw"></td>
			</tr>
			<tr>
				<th><label for="userpw_re">비밀번호 확인</label></th>
				<td><input type="password" name="userpw_re" id="userpw_re"></td>
			</tr>
			<tr>
				<th><label for="username">이름</label></th>
				<td><input type="text" name="username" id="username"></td>
			</tr>
			<tr>
				<th><label for="userage">나이</label></th>
				<td><input type="text" name="userage" id="userage"></td>
			</tr>
			<tr>
				<th><label for="userphone">전화번호</label></th>
				<td><input type="text" name="userphone" id="userphone"><input type="button" value="코드받기" onclick="vcsend()"></td>
			</tr>
			<tr class="phonecheck">
				<th><label for="phonecheck">인증번호</label></th>
				<td><input type="text" name="phonecheck" id="phonecheck" placeholder="인증번호"><input type="button" onclick="" value="인증번호">
				</td>
			</tr>
			<tr class="zipcode_area">
				<th>우편번호</th>
				<td>
					<input readonly name="zipcode" type="text" id="sample6_postcode" placeholder="우편번호"><input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				</td>
			</tr>
			<tr class="addr_area">
				<th>주소</th>
				<td><input readonly name="addr" type="text" id="sample6_address" placeholder="주소"></td>
			</tr>
			<tr>
				<th>참고항목</th>
				<td><input readonly name="addretc" type="text" id="sample6_extraAddress" placeholder="참고항목"></td>
			</tr>
			<tr>
				<th>상세주소</th>
				<td><input name="addrdetail" type="text" id="sample6_detailAddress" placeholder="상세주소"></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="가입 완료">
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
              <h2><img src="${pageContext.request.contextPath}/app/user/assets/img/logo_footer.png" alt="megabox" /></h2>
              <ul>
                <li><a href="#">회사소개</a></li>
                <li><a href="#">채용정보</a></li>
                <li><a href="#">제휴/광고/부대사업 문의</a></li>
                <li><a href="#">이용약관</a></li>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">고객센터</a></li>
                <li><a href="#">윤리경영</a></li>
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
<script src="${cp}/app/user/user.js"></script>
</html>






