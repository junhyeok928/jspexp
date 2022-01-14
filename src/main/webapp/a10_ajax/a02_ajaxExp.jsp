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
 
 
--%>
//
	$(document).ready(function(){
		$("h3").click(function(){
			var xhr = new XMLHttpRequest();
			xhr.open("get","z02_data.txt",false);
			xhr.send();
			alert(xhr.responseText);
			$("td").text(xhr.responseText);
		});
	});
</script>
</head>
<body>
	<h3>ajax 연습</h3>
	<table>
		<tr><th>데이터</th></tr>
		<tr><td>내용</td></tr>
	</table>
</body>
</html>