<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" import="jspexp.z01_vo.*" import="jspexp.a03_database.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
<style>
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	
<%--
 
 
--%>
	//
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<%

	pageContext.setAttribute("pageVar", "페이지 내에서만 사용");

	request.setAttribute("reqVar", "forward처리 페이지까지 사용");

	session.setAttribute("sessVar", "같은 브라우져까지 사용");

	application.setAttribute("appVar", "서버 유지될때 까지 사용");

	request.getRequestDispatcher("a28_homework2.jsp").forward(request, response);
	%>
	<h3>과제</h3>
	<h4>page scope : <%=pageContext.getAttribute("pageVar") %></h4>
	<h4>request scope : <%=request.getAttribute("reqVar") %></h4>
	<h4>session scope : <%=session.getAttribute("sessVar") %></h4>
	<h4>application scope : <%=application.getAttribute("appVar") %></h4>
</body>
</html>