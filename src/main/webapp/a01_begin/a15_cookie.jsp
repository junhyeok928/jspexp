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
  src="${path}/a00_com/jquery-3.5.1.js"></script>
<script type="text/javascript">
<%--
# Cookie
1. 서버와 클라이언트 관계에 있어서 발생하는 데이터를 클라이언트(브라우저)에
	저장하는 객체를 말한다.
2. 처리단계 및 생성.
	1) client ==> server  : 브라우저를 통해 서버에 접속
							이 두 관계에서 발생하는 정보
							point를 증가/특정한 사용자 접속된 정보 등..
							물건을 구매전에 임시로 장바구니(카드)에 담은 정보
	2) server ==> client : 위 정보를 client에 전달하여 client에 정보를 저장.
 							response.addCookie(new Cookie(key, value));
 	3) client에서는 서버에서 받은 정보를 브라우저내 쿠키가 저장되는 곳에 저장을 한다.
 	4) client ==> server : 브라우저가 다시 서버에 저장된 정보를 전달하면서 처리할 때
 							 request.getCookie()로 요청객체의 기능메서드를 통해
 							 전달한다.
 	5) server에서는 받은 쿠키값을 활용하여 처리한다.
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>쿠키생성</h3>
	<%
	// 1. 쿠키는 일단, 서버에서 만들어진다.
	Cookie ck01 = new Cookie("name","himan");
	// 2. 만들어진 쿠키는 명령어에 의해 client에 보내어 진다.
	response.addCookie(ck01);
	
	%>
	<table>
		<tr><th>쿠키의 이름</th><td><%=ck01.getName()%></td></tr>
		<tr><th>쿠키의 값</th><td><%=ck01.getValue()%></td></tr>
	</table>
	<h3 onclick="location.href='a16_showCookie.jsp'">브라우저에 저장된 쿠키값 확인하러 가기</h3>
</body>
</html>
<%--ex) 아래의 페이지로 쿠키를 설정하고 값을 확인하세요.
	a17_makeCookie.jsp  himan/7777(키/값)
	a18_showCookie.jsp  쿠키값 확인.
 --%>



