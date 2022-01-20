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
 
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>세션 스코프(세션 페이지)</h3>
	<table>
		<tr><th>페이지 범위</th><td><%=pageContext.getAttribute("pageVar") %></td></tr>
		<tr><th>요청범위</th><td><%=request.getAttribute("reqVar") %></td></tr>
		<tr><th>세션범위</th><td><%=session.getAttribute("sessVar") %></td></tr>
		<tr><th>어플리케이션범위</th><td><%=application.getAttribute("appVar") %></td></tr>
	</table>
</body>
</html>