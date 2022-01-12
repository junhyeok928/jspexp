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
# database와 함께 모듈 처리
1. 요구사항정의서 확인
	- DB 처리부분 확인 - 테이블 erd, 물리 설계, 테이블 생성
	- 화면 처리 부분 확인 - front단 화면 구현(화면 설계서)
	- java단 처리 부분 정리 -dao, vo
2. DB 처리
	- 테이블 생성
	- sql 작성
3. 화면 설계서 내용 확인 front 기본 화면 구성
	-jsp. html
4. java단 처리
	- sql을 통해 출력할 단위 VO, 입력할 단위 VO 변수
	- dao 작성
5. jsp단 처리
	- dao 객체 생성
	- 화면 요청값 처리(null값에 대한 처리)
	- 화면 출력 - DB에 불러온 내용 처리
 
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