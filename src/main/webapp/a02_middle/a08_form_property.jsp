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
# form 속성.
1. method
	요청값에 대한 전달 방식
	get : default 요청방식으로 url주소와 함께 전달.
	post : 요청 몸체에 요청값이 전달
2. action
	요청값을 전달할 페이지를 지정한다.
	default로 현재 페이지로 요청을 전달한다.	
3. request.setCharacterEncoding("utf-8")
	요청값은 한글을 식별못하기에 encoding하여 처리하여야 한다.
	이때, 필요로 하는 설정을 말한다. 
	-- jstl로는 <fmt:requestEncoding value="UTF-8" /> 로 설정이 된다.
	
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>제목</h3>
	<form action="a09_receive.jsp" method="post"> <%-- form method의 default는 get방식 --%>
		물건명<input type="text" name="pname"/><br>
		<input type="submit"/>
	</form>
	<h4><%=request.getParameter("pname")%></h4>
</body>
</html>