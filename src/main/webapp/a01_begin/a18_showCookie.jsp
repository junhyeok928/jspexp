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
 
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>저장되어 있는 쿠키값 확인</h3>
	<table>
		<tr><th>쿠키키</th><th>쿠키값</th></tr>
		<%for(Cookie ck:request.getCookies()){%>
		<tr><td><%=ck.getName()%></td><td><%=ck.getValue()%></td></tr>
		<%} %>
	</table>
	<h3 onclick="location.href='a17_makeCookie.jsp'">쿠키 생성하러 가기</h3>
</body>
</html>