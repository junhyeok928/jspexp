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
# jstl을 활용한 반복문 처리.
1. 기본 형식
	<c:forEach var="변수명" begin="시작" end="마지막변수" step="증감단위>
		${변수명}
	</c:forEach> 
 	vs. for문
 	for(int 변수명=시작; 변수명<=마지막변수; 변수명+=증감단위){
 		변수명
 	}
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>반복문1(숫자카운트 처리)</h3>
	<table>
		<tr>
			<c:forEach var="cnt" begin="1" end="10" step="2">
				<td>${cnt}</td>
			</c:forEach>
		</tr>
	</table>
	<%-- ex) 10~30까지 3단위로 행으로 출력하세요.. --%>
	<table>
		<c:forEach var="cnt" begin="10" end="30" step="3">
		<tr>
			<td>${cnt}</td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>