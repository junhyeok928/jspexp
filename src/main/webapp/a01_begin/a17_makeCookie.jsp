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
	<%
	String ckname= request.getParameter("ckname");
	String ckvalue= request.getParameter("ckvalue");
	if(ckname!=null&&ckvalue!=null){ // 요청값이 있을 때, 쿠키값 생성.
		response.addCookie(new Cookie(ckname,ckvalue));
	%>
		<script>
			alert("쿠키 생성 및 추가!!");
		</script>
	<%
	}
	%>
	<h3>쿠키값 설정하기(영문으로만)..</h3>
	<form>
	<table>
		<tr><th>쿠키이름</th><td><input type="text" name="ckname"/></td></tr>
		<tr><th>쿠키값</th><td><input type="text" name="ckvalue"/></td></tr>
		<tr><td colspan="2"><input type="submit" value="쿠키설정"/></td></tr>
	</table>
	</form>
	<h3 onclick="location.href='a18_showCookie.jsp'">저장되어 있는 쿠키값 확인하러 가기</h3>
</body>
</html>