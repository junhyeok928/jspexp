<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" import="jspexp.z01_vo.*" import="jspexp.a03_database.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
<style>
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
<%--
# 요청객체(requset-HttpServletRequset의 참조 변수)
1. 요청범위에서 데이터를 저장할 수 있다.
	request.setAttribute("key", value)
	-- MVC 패턴에서 주로 모델데이터를 저장할 때, 사용된다.
2. 요청처리 데이터를 처리할 때, 사용된다.
	1) 요청값 url 전달 방식
		페이지?id=himan
		requset.getParameter("id") 형식으로 받아서 himan을 
		특정변수에 할당할 수 있다.
	2) form 형식 전달 방식
		- action="이동할페이지"
		- method get 방식/post 방식
		- 하위 요소객체에 name="요청key" value="요청값"
		- submit 버튼을 통해
			이동할페이지?요청key=요청값
			형식으로 전송할 수 있다.
--%>
	//
	$(document).ready(function() {

	});
</script>
</head>
<body>

	<%
	// http://localhost:7080/jspexp/a01_begin/a02_requestObj.jsp?id=himan
	
	String id = request.getParameter("id");
	// http://localhost:7080/jspexp/a01_begin/a02_requestObj.jsp?id=himaa&age=21&name=%ED%99%8D%EA%B8%B8%EB%8F%99&loc=%EC%B2%9C%EC%95%88
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String loc = request.getParameter("loc");
	%>
	<h3>request객체</h3>
	<table>
		<tr>
			<th colspan="4">request 요청값</th>
		</tr>
		<tr>
			<td><%=id %></td>
			<td><%=name %></td>
			<td><%=age %></td>
			<td><%=loc %></td>
		</tr>
	</table>
</body>
</html>