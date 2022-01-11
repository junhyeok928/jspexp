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
// ex) 부서정보 리스트 출력..
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>부서정보리스트</h3>
	<%
	A01_Dao dao = new A01_Dao();
	%>
	<table>
		<tr><th>부서번호</th><th>부서명</th><th>부서위치</th></tr>
		<%for(Dept d: dao.deptList("")){ %>
		<tr><td><%=d.getDeptno()%></td>
			<td><%=d.getDname()%></td>
			<td><%=d.getLoc()%></td>
		</tr>
		<%}%>
	</table>
</body>
</html>