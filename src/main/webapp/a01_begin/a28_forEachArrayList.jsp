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
# ArrayList형태에 대한 데이터처리. forEach
1. ArrayList<VO>는 동적배열로 단위데이터가 객체이다.
2. 단위 데이터가 객체이므로 property 개념으로 속성을 활용할 수 있다.
	<c:forEach var="emp" items="${emplist}" >
		${emp.empno} ${emp.ename}
	각, 단위 객체 emp 안에 있는 property getEmpno()를 가져와서 
	화면에 출력 처리가 가능하다.
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<%
	// new A01_Dao().empListPre("", "") : 객체 생성과 동시에 기능메서드 활용
	//request.setAttribute("emplist", new A01_Dao().empListPre("", ""));
%>
	<jsp:useBean id="emplist" class="jspexp.a03_database.A01_Dao"/>
<body>
	<h3>사원정보2</h3>
	<form>
		<table>
			<tr><th>사원명</th><td><input type="text" name="ename" value="${param.ename}"/></td></tr>
			<tr><th>직책명</th><td><input type="text" name="job" value="${param.job}"/></td></tr>
			<tr><td colspan="2"> <input type="submit" value="조회"/></td></tr>
		</table>
	</form>
	<%-- ex) a29_forDeptList.jsp : DAO에서 deptList(String loc)활용해서 출력해주세요. --%>
	<table>
		<tr><th>사원번호</th><th>사원명</th><th>직책명</th><th>입사일</th>
			<th>급여</th><th>보너스</th><th>부서번호</th></tr>
		<c:forEach var="emp" items="${emplist.empListPre(param.ename,param.job)}">	
			<tr>
				<td>${emp.empno}</td>
				<td>${emp.ename}</td>
				<td>${emp.job}</td>
				<td>${emp.hiredate}</td>
				<td>${emp.sal}</td>
				<td>${emp.comm}</td>
				<td>${emp.deptno}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>