<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup</title>

<!-- <script type="text/javascript"> -->
<!--      function setCookie(name, value, expiredays) { -->
<!--          var date = new Date(); -->
<!--          date.setDate(date.getDate() + expiredays); -->
<!--          document.cookie = escape(name) + "=" + escape(value) + "; expires=" + date.toUTCString(); -->
<!--      } -->

<!--      function closePopup() { -->
<!--          if (document.getElementById("check").value) { -->
<!--              setCookie("popupYN", "N", 1); -->
<!--              self.close(); -->
<!--          } -->
<!--      } -->
<!-- </script> -->

<script type="text/JavaScript">

  function setCookie( name, value, expiredays ) {
    var todayDate = new Date();
    todayDate.setDate( todayDate.getDate() + expiredays );
    document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
  }
  function closeWin() {
    if ( document.checkClose.event.checked )
    setCookie("pop_cook", "no" , 1);  // 쿠키이름_cook 은 위의 index와 같은 이름으로 변경
  }
</script>

<style >
	footer {
  /* footer를 aside위에 올리기 위해 사용(부유객체) */
  position: absolute;
  height: 50px;
  width: 100%;
  padding: 0;
  line-height: 60px;
  color: #8a8c8f;
  border-top: 1px solid #dee5e7;
  background-color: #f2f2f2;
}
	html, body {
    height: 92%
}
	#wrap 
{
    min-height: 100%;
    position: relative;
    padding-bottom: 60px;
    
}

footer {
    bottom: 0;
}
html,body{
	margin: 0px;
}
	
	#body-content{
	margin: 0px;
	}
	#body-header{
	margin: 8px;
	}
	
	
</style>
</head>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<body onunload="closeWin()">
<!-- 		<div id="body-header"> -->
<!--   			<p>4월 25일 후로 영화관 취식 가능합</p> -->
<!-- 		</div> -->
		<div id="wrap">
			<div id="body-content">
				<img src="${pageContext.request.contextPath}/app/user/assets/img/popup5.jpg"  height= "400px" width="100%">
		</div>

<footer class="footer">
  <form name="checkClose" style="padding:0px; margin:0px;">
  <div style="float:left; background-color:#6e40c4; color:#ffffff; padding-left:10px;"><input type="checkbox" name="event" onclick="check_window();" />
  	하루동안 이 창 띄우지 않음</div>
  </form>
  <div style=" background-color:#6e40c4; color:#ffffff; padding-right:10px;" align="right"><a href="javascript:self.close();">창 닫기</a> </div>
</footer>
			</div>


</body>
<script>let cp = "${pageContext.request.contextPath}";</script>
<!-- <body> -->

<!-- 	 <input type="checkbox" id="check" onclick="closePopup();"> -->
<!--     <br /> -->
<!--     <h3> <b>영화 관람시 마스크를 꼭 착용해 주세요</b> </h3> -->

<!-- </body> -->
</html>