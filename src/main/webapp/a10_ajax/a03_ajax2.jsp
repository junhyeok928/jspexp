<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"
    import="jspexp.a03_database.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">
<style>

</style>
<script type="text/javascript" 
  src="${path}/a00_com/jquery-3.6.0.js"></script>
<script type="text/javascript">
<%--
# xhr.readyState 
1. 비동기 통신을 하면서 서버와의 관계에 상태를 처리해주는 코드
	1) 0 : 객체를 만듦
	   1/2 : 데이터를 만들 준비 상태
	   3 : 서버에서 데이터를 일부 받기 시작
	   4 : 서버에서 데이터를 모두 받음
# xhr.status
1. 서버에 요청한 결과값을 받는 코드(response 코드)
	200 : 정상 범위
	404 : 페이지가 없음.
	500~ : 서버 내부 오류..	   
 
--%>
//
	$(document).ready(function(){
		$("h3").click(function(){
			var xhr = new XMLHttpRequest();
			xhr.open("get","${path}/ajaxMvc01.do",true);
			xhr.send();
			xhr.onreadystatechange=function(){
				// 비동기적인 방식은 전송 후, 이벤트를 통해서 올 때까지 다른 작업을
				// 할 수 있도록 선언해 놓고 처리한다.
				//xhr.responseText;	
				console.log("readyState:"+xhr.readyState);
				console.log("status:"+xhr.status);
				if(xhr.readyState==4 && xhr.status==200){
					alert(xhr.responseText);
					console.log(typeof(xhr.responseText));
					$("h4").text(xhr.responseText);
					// JSON.parse():문자열을 객체로 변환 처리하는 메서드
					var p01 = JSON.parse(xhr.responseText)
					$("td").eq(0).text(p01.name);
					$("td").eq(1).text(p01.age);
					$("td").eq(2).text(p01.loc);
				}
			};
		});
	});	// ex) A05_Controller.java /ajaxMvc02.do   {"pname":"사과","price":3000,"cnt":5}
	    //     a04_ajax3.jsp
</script>
</head>
<body>
	<h3>동기처리(호출)</h3>
	<h4></h4>
	<table>
		<tr><th>이름</th><td>내용</td></tr>
		<tr><th>나이</th><td>내용</td></tr>
		<tr><th>사는곳</th><td>내용</td></tr>
	</table>
</body>
</html>