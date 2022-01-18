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
 [1단계:확인] 7. 등록할 학생의 이름과 국어성적  5개를 리스트하여 등록시, 다른 페이지에 등록할 이름과 성적 총점을 출력되게 하세요
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>예제 7번</h3>	
	<form action="0118_ex7-1.jsp">
	<table>
		<tr><th>이름</th><th>국어성적</th></tr>
		<tr><td><input type="text" name="name"/></td><td><input type="text" name="kor"/></td></tr>
		<tr><td><input type="text" name="name"/></td><td><input type="text" name="kor"/></td></tr>
		<tr><td><input type="text" name="name"/></td><td><input type="text" name="kor"/></td></tr>
		<tr><td><input type="text" name="name"/></td><td><input type="text" name="kor"/></td></tr>
		<tr><td><input type="text" name="name"/></td><td><input type="text" name="kor"/></td></tr>


		<tr><td colspan="2"><input type="submit" value="등록"/></td></tr>
	</table>
	</form>
</body>
</html>