<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메가한조</title>
    <!-- css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/user/assets/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/user/assets/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/user/assets/css/swiper.css" />
	 <!-- 웹 폰트 -->
    <link
      href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
      rel="stylesheet"
    />

</head>
<style>
	*{margin: 0;padding: 0;box-sizing: border-box}
	body{background-color: #f7f7f7;}
	ul>li{list-style: none}
	a{color: #6e40c4;}
	.clearfix::after{content: "";display: block;clear: both;}
	#form1{width: 460px;margin: 0 auto; }
	ul.join_box{border: 1px solid #ddd;background-color: #fff;}
	.checkBox,.checkBox>ul{position: relative;}
	.checkBox>ul>li{float: left;}
	.checkBox>ul>li:first-child{width: 85%;padding: 15px;font-weight: 600;}
	.checkBox>ul>li:nth-child(2){position: absolute;top: 50%;right: 30px;margin-top: -12px;}
	.checkBox textarea{width: 96%;height: 90px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none;}
	.footBtwrap{margin-top: 15px; margin-bottom: 50px;}
	.footBtwrap>li{float: left;width: 50%;height: 60px;}
	.footBtwrap>li>button{display: block; width: 100%;height: 100%; font-size: 20px;text-align: center;line-height: 60px;}
	.blind {position: absolute; overflow: hidden; clip: rect(0 0 0 0); margin: -1px; width: 1px; height: 1px;}
	#wrap {min-width: 250px;}
	#wrap {width: 100%;}
	div {display: block;}
	.header h1 em {padding-right: 0;}
	.header h1 em {padding: 11px 11px 8px 0px;}
	.header h1 em { padding: 8px 8px 3px 0px; display: inline-block; }
	em, address { font-style: normal;}
	.header h1 {text-align: center; float: none; }
	.header h1 em img {width: 240px;}
	.step-member {overflow: hidden; position: relative; padding: 0;}
	* {box-sizing: border-box;}
	div {display: block;}
	.step-member ol {overflow: hidden;}
	ol, ul {list-style-type: none; margin: 0; padding: 0;}
	* {box-sizing: border-box;}
	ol {display: block; list-style-type: decimal; margin-block-start: 1em;margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px; padding-inline-start: 40px;}
	.step-member ol li .step1 {display: inline-block; position: relative; z-index: 2;  margin: 0; padding: 0 0 15px 0;font-size: .9333em;letter-spacing: 0;color: #6e40c4;text-decoration: underline;}
	.step-member ol li .step2 {display: inline-block; position: relative; z-index: 2; margin: 0; padding: 0 0 15px 0; font-size: .9333em; letter-spacing: 0;}
	.step-member ol li .step3 {display: inline-block; position: relative; z-index: 2; margin: 0; padding: 0 0 15px 0; font-size: .9333em; letter-spacing: 0;}
	.step-member ol li {list-style-type: none; float: left; margin-left:20px;}
	.fpmgBt1{background-color: #f7f7f7;color:#888; border-color:#6e40c4; color: purple; width: 230px; height:50px; font-size:18px;} 
 	.fpmgBt2{background-color:#6e40c4; color:#fff; border-color:#6e40c4; width: 230px; height:50px; font-size:18px;}
</style>
<body>

	<div id="wrap">
      <div class="container">
        <div class="row">
          <div class="header clearfix">
            <h1>
              <a href="${pageContext.request.contextPath}/">
              	<span class="blind">MOVIE</span>
                <em><img src="${pageContext.request.contextPath}/app/user/assets/img/logo.png" alt="MEGAHANZO" /></em>
              </a>
            </h1>
            
          </div>
        </div>
      </div>

	<div id="" role="banner">
		<h1>
			<a href='${cp}' class="m_logo">
			</a>
		</h1>
	</div>
	
	<form action="http://localhost:9090/app/user/joinview.jsp" method="post" name="form1" id="form1" onsubmit="return checkmandatory();">
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
            <ul class="join_box">
                <li class="checkBox check01">
                    <ul class="clearfix">
                        <li>이용약관, 개인정보 수집 및 이용,
                            위치정보 이용약관(선택), 프로모션 안내
                            메일 수신(선택)에 모두 동의합니다.</li>
                        <li class="checkAllBtn">
                            <input type="checkbox" name="all" value='selectall'id="chk" onclick='selectAll(this)'/>
                        </li>
                    </ul>
                </li>
                <li class="checkBox check02">
                    <ul class="clearfix">
                        <li>이용약관 동의<a>(필수)</a></li>
                        <li class="checkBtn">
                            <input type="checkbox" name="c1" value='1'/> 
                        </li>
                    </ul>
                    <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>개인정보 수집 및 이용에 대한 안내<a>(필수)</a></li>
                        <li class="checkBtn">
                            <input type="checkbox" name="c2" value='2'/>
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>위치정보 이용약관 동의<a>(선택)</a></li>
                        <li class="checkBtn">
                            <input type="checkbox" name="c3" value='3'/>
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check04">
                    <ul class="clearfix">
                        <li>이벤트 등 프로모션 알림 메일 수신<a>(선택)</a></li>
                        <li class="checkBtn">
                            <input type="checkbox" name="ch4" value='4'/>
                        </li>
                    </ul>
 
                </li>
            </ul>
            <ul class="footBtwrap clearfix">
                <li>
                <input class="fpmgBt1" type="button" onclick="location.href='http://localhost:9090/lo';" value="비동의"></li>
                <li><input class="fpmgBt2" placeholder="동의" type="submit" value="동의" style=""></li>
            </ul>
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
    
<script>
       function selectAll(selectAll)  {
    	   const checkboxes 
    	      = document.querySelectorAll('input[type="checkbox"]');
    	   
    	   checkboxes.forEach((checkbox) => {
    	     checkbox.checked = selectAll.checked
    	   })
    	 }
       
       function checkmandatory(){
	       	const form1 = document.form1;
    	   	const c1 = form1.c1;
      		const c2 = form1.c2;
    	   	if(c1.checked && c2.checked){
    	   		
    	   		return true;
    	   	}
    	   	else{
    	   		alert('필수 사항에 동의해 주세요. ')
    	   		return false;
    	   	}
       }
       

       
       </script>
</body>
<script>let cp = "${pageContext.request.contextPath}"</script>
<script src="${cp}/app/user/user.js"></script>
</html>