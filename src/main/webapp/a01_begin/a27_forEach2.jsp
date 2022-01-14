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
# forEach의 배열/동적배열 처리.
1. 기본 형식
	<c:forEach var="단위데이터변수" items="${배열형데이터}" varStatus="sts">
		${단위데이터변수}
	</c:forEach>  
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<%
	String []fruits = {"사과","바나나","딸기"};
	pageContext.setAttribute("fruits", fruits);

%>

<body>
	<h3>forEach2</h3>
	<%-- 
	varStatus 속성들
	1. 변수명.count : 1 부터 시작하는 변수를 처리
	2. 변수명.index : 0 부터 시작하는 변수 처리
	3. 변수명.first : boolean값으로 첫번째 값인지 여부
	4. 변수명.last : boolean값으로 마지막 값인지 여부 
	 --%>
	<table>
		<tr><th>번호</th><th>과일명</th></tr>
		<c:forEach var="fruit" items="${fruits}" varStatus="sts">
			<tr><td>${sts.count}</td><td>${fruit}</td></tr>
		</c:forEach>
	</table>
	<%--
	ex) 컴퓨터 부품 3가지를 배열로 session scope로 선언하고, forEach구문을 통해서 리스트 하세요.
	 --%>
	<%
	String[] parts = {"메인보드","CPU","RAM","HDD","ODD"};
	session.setAttribute("comParts",parts);
	%>
	<table>
		<tr><th>순서</th><th>부품명</th></tr>
		<c:forEach var="part" items="${comParts}" varStatus="sts">
			<%-- 행단위로 첫번째와 마지막 행일 때, 배경색상으로 노랑색 처리 --%>
			<tr style="background:${sts.first||sts.last?'yellow':''}"><td >
					${sts.count}</td><td>${part}</td></tr>
		</c:forEach>
	</table>	
</body>
</html>