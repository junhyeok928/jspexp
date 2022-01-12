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
# 요청객체(request-HttpServletRequest의 참조변수)
1. 요청범위에서 데이터를 저장할 수 있다.
	request.setAttribute("key",value)
	-- MVC 패턴에서 주로 모델데이터를 저장할 때, 사용된다.
2. 요청처리 데이터를 처리할 때, 사용된다.
	1) 요청값 url 전달 방식
		페이지?id=himan
	 	request.getParameter("id") 형식으로 받아서 himan을
		특정변수에 할당할 수 있다.	
	2) form 형식 전달 방식
		- action="이동할페이지"
		- method get방식/post방식
		- 하위 요소객체에 name="요청key" value="요청값"
		- submit 버튼을 통해
			이동할페이지?요청key=요청값 
			형식으로 전송할 수 있다.
		
		 
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<%
	// a02_requestObj.jsp?id=himan
	String id = request.getParameter("id");
	// ex) url 요청 처리로 name, age, loc를 설정하여
	//     요청값을 출력하는 처리를 하세요..
	/*
	02_requestObj.jsp?name=홍길동&age=25&loc=서울강남	
	*/
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String loc = request.getParameter("loc");
	%>
	<h3>request객체</h3>
	<table>
		<tr><th>id 요청값</th><td><%=id%></td></tr>
		<tr><th>이름</th><td><%=name%></td></tr>
		<tr><th>나이</th><td><%=age%></td></tr>
		<tr><th>사는곳</th><td><%=loc%></td></tr>
	</table>
</body>
</html>