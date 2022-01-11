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
<h3>form형태 데이터 처리</h3>
<%
String name=request.getParameter("name"); if(name!=null) name="";
// 요청데이터는 기본적으로 문자열 이기에, 요청값이 있을때, 숫자로 변환 메서드를 활용한다.
int kor,eng,math; kor=eng=math=0;	// 선언 및 초기화
String korS=request.getParameter("kor");if(korS!=null) kor= Integer.parseInt(korS);
String engS=request.getParameter("eng");if(engS!=null) eng= Integer.parseInt(engS);
String mathS=request.getParameter("math");if(mathS!=null) math= Integer.parseInt(mathS);
int tot = kor+eng+math;
int avg = tot/3;
%>
	<form>
	<table>
		<tr><th>학생명</th><td><input type="text" name="name"></td></tr>
		<tr><th>국어</th><td><input type="text" name="kor" value="<%=kor%>"></td></tr>
		<tr><th>영어</th><td><input type="text" name="eng" value="<%=eng%>"></td></tr>
		<tr><th>수학</th><td><input type="text" name="math" value="<%=math%>"></td></tr>
		<tr><td colspan="2"><input type="submit" value="입력"></td></tr>
	</table></form>
		<h4>총점:<%=tot %></h4>
		<h4>평균:<%=avg %></h4>
		
</body>
</html>