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
<%! 
	int num01;
	public int productTotal(int price, int num){
	int total = price * num;
	return total;
	}
	class Person{
		String name;
		Person(String name){
			this.name = name;
		}
		String getName(){
			return name+"님!";
		}
	}
%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
<%
num01 = 30;
Person p1 = new Person("홍길동");
%>
	<h3>제목</h3>
	<table>
		<tr><th>함수호출</th><td><%=productTotal(2000,30) %></td></tr>
		
	</table>
</body>
</html>