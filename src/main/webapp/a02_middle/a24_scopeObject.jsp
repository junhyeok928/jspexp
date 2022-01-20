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
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
<%--
# session scope에 따른 변수의 유지 범위
--%>
<%
	// 1. page scope : 변수를 설정한 현재 페이지에서만 사용하는 범위
	pageContext.setAttribute("pageVar", "홍길동(page)");
	// 2. request scope : 변수를 설정하여 RequestDispatcher 객체의 forward가 처리된 페이지 범위까지
	request.setAttribute("reqVar", "신길동(request)");
	// 3. session scope : 변수를 session범위로 설정하는데, 이범위는 서버와 클라이언트가
	//		접속된 범위 안에서 처리 할 때 사용한다.
	session.setAttribute("sessVar", "오길동(session)");
	// 4. application scope : 변수를 application 범위로 설정하는데, 이 범위 서버가 유지 될때,
	//		까지 사용할 수 있다.
	application.setAttribute("appVar", "하길동(application)");
	
	// requestDispatcher 객체는 request와 response를 포함시켜 해당 페이지로 이동한다.
	request.getRequestDispatcher("a25_requestPage.jsp").forward(request, response);
%>
	<h3>세션 스코프(현재페이지)</h3>
	<table>
		<tr><th>페이지 범위</th><td><%=pageContext.getAttribute("pageVar") %></td></tr>
		<tr><th>요청범위</th><td><%=request.getAttribute("reqVar") %></td></tr>
		<tr><th>세션범위</th><td><%=session.getAttribute("sessVar") %></td></tr>
		<tr><th>어플리케이션범위</th><td><%=application.getAttribute("appVar") %></td></tr>
	</table>
</body>
</html>