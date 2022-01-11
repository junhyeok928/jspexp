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
<%
// import 처리 
// 1. dao 객체 생성.
	A01_Dao dao = new A01_Dao();
	String ename = request.getParameter("ename"); if(ename==null) ename="";
	String job = request.getParameter("job"); if(job==null) job="";
%>
	<h3>사원 정보 리스트</h3>
	<form method="post">
	<table>
		<tr><th>사원명</th><td><input type="text" name="ename" value="<%=ename%>"/></td></tr>
		<tr><th>직책명</th><td><input type="text" name="job" value="<%=job%>"/></td></tr>
		<tr><td colspan="2"><input type="submit" value="검색"/></td></tr>
	</table>	
	</form>
	
	<table>
		<tr><th>부서번호</th><th>사원번호</th><th>사원명</th><th>직책명</th><th>급여</th></tr>
		<%for(Emp e:dao.empListPre(ename,job)){ %>
		<tr><td><%=e.getDeptno()%></td>
			<td><%=e.getEmpno()%></td>
			<td><%=e.getEname()%></td>
			<td><%=e.getJob()%></td>
			<td><%=e.getSal()%></td></tr>
		<%}%>
	</table>
</body>
</html>