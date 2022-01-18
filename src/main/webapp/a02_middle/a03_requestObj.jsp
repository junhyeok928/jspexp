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
<script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	//
	$(document).ready(function() {

	});
</script>
</head>
<%--
	요청값은 query string으로 부터 생성이 된다.
	페이지명?요청키=요청값
	a03_requestObj.jsp?id=himan
	
	브라우저를 통해 특정 페이지에 요청키와 요청값을 query string 형식으로
	입력하면 request.getParameter("요청키") 형식으로 데이터를 가져올 수 있다.
 	# 요청값에 대한 단계별 이해
 	1. 페이지?요청키=요청값 이해
 	2. 페이지?요청키=요청값	서버에서 받는 코드
 		request.getParameter("id");
 	3. form 하위 객체를 통해서 서버에 전달방법
 		<form action="페이지">
 			<input name="요청키" value="요청값"
 			<input type="submit"/>
 	4. 여러가지 form 하위 객체에 형태에 따른 요청값 처리방법
 	
 	5. form의 속성 method="get/post" 방식의 차이..
 	
 	# request.getParameterValues("여러개요소객체")
 	1. ?id=himan&id=goodMan&id=higirl
 --%>
<%
String id = request.getParameter("id");
// 같은 이름의 요청값을 배열로 받을 수 있다.
String []ids = request.getParameterValues("id");
%>
<body>

	<h3>회원등록</h3>
	<h4>입력된 아이디: <%=id%></h4>
	<% if(ids!=null){
		for(String id2:ids){
	%>
		<h3>다중의 아이디:<%=id2 %></h3>
	<%	} 
	}%>
	<form>
		<table>
			<tr>
				<th>아이디1</th>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<th>아이디2</th>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<th>아이디3</th>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<th>아이디4</th>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
			<td colspan="2"><input type="submit" value="등록" />
			</tr>
		</table>
	</form>

	
</body>
</html>