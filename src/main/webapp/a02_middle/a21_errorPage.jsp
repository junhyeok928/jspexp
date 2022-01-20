<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"
    import="jspexp.a03_database.*"
    isErrorPage="true"
    %>
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
# 서버단위 에러 페이지 처리
1. 각 페이지 마다, 에러 페이지를 지정하는 방식의 번거로움을 
	줄이는 방법으로 web.xml에서 에러가 발생했을 때, 처리할 페이지를
	지정하여 효과적으로 에러에 대한 처리를 해주는 것을 말한다.
2. 처리순서
	1) 에러페이지(에러가 나왔을 때) 만들기
	2) web.xml에서 에러코드와 에러클래스를 지정 및 해당 에러가
		나왔을 때, 로딩될 페이지 지정.
	

--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>요청시 에러가 발생했습니다.(서버단위 설정)</h3>
	<table>
		<tr><th>에러타입</th><td><%=exception.getClass().getName() %></td></tr>
		<tr><th>에러메시지</th><td><%=exception.getMessage() %></td></tr>
		<tr><td colspan="2">에러를 해결 중입니다. 담당자와 통화가 가능합니다.</td></tr>
	</table>
</body>
</html>