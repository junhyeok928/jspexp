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
# 외부 모듈화 처리
1. jsp는 여러가지 형식으로 외부페이지를 포함되어 처리할 수 있다.
2. 외부페이지 모듈화 처리 방법
	1) frame(js/html)
		css, html, js 단위 데이터 넘겨주거나 설정할 수 있음
		DOM객체(js) 범위로 화면을 처리할 수 있다.
	2) include 액션 태그 설정(jsp)
		- 다른 class 파일 만들어서 따로 관리되는 객체를
			호출하는 부분으로 
		- 데이터 전송은 요청값을 처리하는 형식으로 전송하거나 변경하여야 한다.
	3) directive로 페이지 포함
		- 포함된 페이지를 포함해서 전체적으로 컴파일 되기에
			같은 페이지에서 선언하는 것과 동일하게 변수나 객체를 공유하여 사용할 수 있다.
 
--%>
	//
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<h3>iframe으로 외부 페이지 처리</h3>
	<iframe width="200" height="200" src="a12_top.jsp"></iframe>
	<h3>include action 태그 활용</h3>
	<div style="background-color: pink">
		<jsp:include page="a12_top.jsp">
			<jsp:param value="요청값전송" name="param01" />
		</jsp:include>
	</div>
	<h3>directive를 통해 include 활용</h3>
	<div style="background-color: green">
		<%@ include file="a12_top.jsp"%>
	</div>
</body>
</html>