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
	<h3>useBean scop범위</h3>
	<%--p01(범위-page) prd(범위-session) --%>
	<table>
		<tr><th>사람의 이름(page)</th><td>${p01.name}</td></tr>
		<%-- p01.getName()을 el의 property 형식으로 처리 --%>
		<tr><th>물건명(session) </th><td>${prd.name}</td></tr>
		<%-- prd.getName()을 el의 property 형식으로 처리 --%>
	<%--
	a21_useBean.jsp 를 통해서 useBean으로 page범위로 객체 Dept선언하고 할당-script/출력-el로
							useBean으로 session범위로 객체 Emp선언하고 할당-script/출력-el로
	a22_showBean.jsp를 통해서 부서명과 사원명을 el로 출력하세요.
	~						
	 --%>	
	</table>
</body>
</html>