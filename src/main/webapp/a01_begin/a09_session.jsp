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
# session 객체
1. 브라우저와 서버가 연결된 상황에서 데이터를 유지하는 객체..
	1) 같은 브라우저와 서버의 연결된 상황에서 처리할 수 있다.
2. 기본 session 설정
	저장 :session.setAttribute("키","값");
	저장된 값 가져오기:session.getAttribute("키");
3. session scope 아래의 4가지가 있다.
	1) page : 페이지 단위로만 설정가능
	2) request : 요청되는 페이지 까지 설정 유지
	3) session : 서버와 클라이언트 단위까지 설정유지
	4) application : 서버가 꺼지지 않는 이상 유지
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>세션처리</h3>
	<%
	session.setAttribute("sess01", "안녕하세요");
	%>
	<table>
		<tr><th>세션값 확인..</th></tr>
		<tr><td><%=session.getAttribute("sess01") %></td></tr>
	</table>
	<a href="a10_otherSession.jsp">페이지 이동</a>
</body>
</html>