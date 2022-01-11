<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" import="jspexp.z01_vo.*" import="jspexp.a03_database.*" errorPage="a14_errorPage.jsp"%>
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
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
<%--
# 웹화면에서 예외 처리.
1. 현재 페이지 처리시 에러가 발생하는 에러를 처리해주는 페이지로
	이동 처리를 하게 해주는 것이 기본 웹페이지 에러 처리 내용이다.
2. 에러 처리
	1) error가 발생했을때, 처리한 페이지를 만든다. 
	2) page 지시자에서 error 페이지를 지정한다.
	
--%>
	
<%String s = null;
%>
	//
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<h3>제목:<%=s.toString() %></h3>
	<table>
		<tr>
			<th>타이틀</th>
		</tr>
		<tr>
			<td>내용</td>
		</tr>
	</table>
</body>
</html>