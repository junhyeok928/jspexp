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
	<h3>useBean 연습</h3>
	<jsp:useBean id="d01" class="jspexp.z01_vo.Dept" scope="page"/>
	<jsp:useBean id="e01" class="jspexp.z01_vo.Emp" scope="session"/>
	<%
	d01.setDname("경기도 인천");
	e01.setEname("마동철");
	%>
	<table>
		<tr><th>부서명</th><td>${d01.dname}</td></tr>
		<tr><th>사원명</th><td>${e01.ename}</td></tr>
	</table>
	<h4 onclick="location.href='a22_showBean.jsp'">세션범위 확인하기..</h4>
</body>
</html>