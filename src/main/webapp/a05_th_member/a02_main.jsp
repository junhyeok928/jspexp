<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a05_th_member.vo.Member"
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
	$(document).ready(function(){
		$("#logoutBtn").click(function(){
			if(confirm("로그아웃하시겠습니까?")){
				location.href="a01_login.jsp";
			}
		});
	});
</script>
</head>
<body>
	<%
	// 저장된 session 값가져오기..
	Member m = (Member)session.getAttribute("mem");
	%>
	<%if(m!=null){ %><%-- session 값이 있을 때, 즉, 로그인 성공 후, 이 쪽 페이지로 온 경우 --%>
		<h3 align="right"><%=m.getName() %>님 로그인 중</h3>
		<h4 align="right">point:<%=m.getPoint() %></h4>
		<p align="right"><input type="button" id="logoutBtn" value="로그아웃"/></p>
	<%}else{%> <%-- 로그인을 하지 않고, 이쪽 페이지가 호출된 경우. --%>
		<script type="text/javascript">
			alert("로그인 하셔야 합니다!");
			location.href="a01_login.jsp";
		</script>
	<%}%>
</body>
</html>