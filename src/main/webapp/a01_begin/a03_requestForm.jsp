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
# form형태 요청처리
1. form의 속성
	1) action="요청할 페이지" : 해당 속성 설정하지 않을 시,
		현재페이지가 요청된다.
	2) method="post/get" : url에 요청값이 나타나지 않는 것이
		post방식이고, 설정하지 않을 시, get방식으로 처리된다.
2. form 하위 속성
	1) input/select/textarea 등 요소객체의 속성과 속성값을
		기준으로 요청 처리된다.
	2) 요청 처리의 핵심 속성
		name="요청키" value="요청값"
	3) 요청 이벤트 처리
		- input type="submit"로 된 버튼을 클릭하거나,
		- js로 이벤트 핸들러 메서드로
			$("form").submit() 기능 메서드를 통해서 처리할 수 있다.
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>form형태 데이터 처리</h3>
	<form>
	<table>
		<tr><th>물건명</th><td><input type="text" name="pname"/></td></tr>
		<tr><th>가격</th><td><input type="text" name="price"/></td></tr>
		<tr><th>갯수</th><td><input type="text" name="cnt"/></td></tr>
		<tr><td colspan="2"><input type="submit" value="구매"/></td></tr>
	</table>
	</form>
	<%
	String pname = request.getParameter("pname");
	String price = request.getParameter("price");
	String cnt = request.getParameter("cnt");
	if(pname!=null){ //요청값이 있을 때, 출력 처리.
	%>
		<h4>물건명:<%=pname %></h4>
		<h4>가격:<%=price %></h4>
		<h4>갯수:<%=cnt %></h4>
	<%}%>
	<%--ex) a04_requestFormExp.jsp를 만들고, 학생명, 국어, 영어, 수학 점수를 입력받아 출력하게 하세요
		~11:21 풀이합니다.
	
	 --%>
</body>
</html>