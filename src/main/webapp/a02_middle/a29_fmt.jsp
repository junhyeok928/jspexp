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
# fmt:유형 jstl 태그
1. 데이터 유형을 변경하거나, 원하는 데이터를 처리할 때, 주로 활용된다.
2. 공통 설정 변경
	String path = request.getContextPath();
	==> <c:set var="path" value="${pageContext.request.contextPath}"/>
	request.setCharacterEncoding("utf-8")
	==> <fmt:requestEncoding value="utf-8"/>
3. 날짜 처리.
	1) 날짜 + 시간
	2) data type은 java.util.Date를 활용한다.
	3) 기본형식
		<fmt:formatDate type="date|time|both"
			dateStyle="full|short"
			timeStyle="full|short"
			pattern="yyyy/MM/dd kk:mm:ss.S"
			value="선언된 데이터"/>
4. 숫자 처리
	1) 숫자를 통화나 소숫점 이하, 지정된 형식으로 처리..
	2) type의 속성들
		currency : 통화단위
		percent : % 처리
	3) pattern : 00, 000, 000.000 등과 같이 특정한 출력 형식을
		처리할 수 있다.
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<%
	request.setAttribute("now", new Date());	// java.util.Date
	request.setAttribute("num01", 99999.75);	// 숫자 데이터
	
%>
<body>
	<h3>날짜 처리</h3>
	<h4>기본 출력:${now}</h4>
	<table>
		<tr><th>날짜 full형식</th><td><fmt:formatDate type="date" dateStyle="full" value="${now}"/></td></tr>
		<tr><td>내용</td></tr>
	</table>
</body>
</html>