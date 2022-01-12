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
# 저장된 쿠키값을 서버로 전송해서 서버 화면에 쿠키값을 확인하기..
 
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
<%
// 1. request객체를 통해서 브라우저에 있는 쿠키값 전송
// 2. 서버프로그램을 Cookie[]로 객체로 확인..
Cookie[] cookies = request.getCookies();

%>
	<h3>브라우저에서 온 쿠키값</h3>
	<table>
	
		<tr><th>쿠키의 키</th><th>쿠키의 값</th></tr>
		<%
		for(Cookie ck:cookies){
		%>
		<%-- 쿠키의 이름과 쿠키의 값 출력 --%>
		<tr><td><%=ck.getName()%></td><td><%=ck.getValue()%></td></tr>
		<%
		} 
		%>
	</table>
</body>
</html>