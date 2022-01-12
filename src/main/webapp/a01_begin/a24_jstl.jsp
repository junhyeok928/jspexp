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
# jstl(jsp standard tag library)
1. 널리 이용되는 커스텀 태그를 표준으로 만든 태그 라이브러리.
	java + html : 태그를 만들어 이 내용을 사용할 수 있는데,
	프로그램에서 자주사용되는 태그를 표준으로 만들어 사용함.
2. 환경 설정:
	lib @@.jar 포함
	상단에 <%@ taglib  prefix="태그접두어" uri="태그위치선언"/>
3. 핵심 커스텀 태그
	1) core : <c:XXX /> 변수명과 값의 선언, 조건문이나 반복문 선언 
	2) fmt : <fmt: XXX />  지역, 메시지 형태, 숫자 및 날짜 형식 선언.
		
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>jstl</h3>
	<%--
4. 활용
	1) 변수 설정	
		<c:set var="변수명" value="값" scope="session범위"/>
	 --%>
	 <c:set var="food01" value="짬뽕" scope="page"/>
	 <c:set var="num01" value="25"/>
	 <c:set var="num02" value="5"/>
	 <%-- scope를 생략하면 default로 page로 설정된다.
	 ex) jstl을 활용하여 컴퓨터의  사양, 제조사, 가격을 설정하고 출력하세요.
	  --%>
	 <c:set var="comPro" value="i9 4.2GHz"/>
	 <c:set var="comCompany" value="삼성전자" />
	 <c:set var="comPrice" value="1500000"/>  
	<table>
		<tr><th>jstl 변수 활용</th></tr>
		<tr><td>${food01}</td></tr>
		<tr><td>${num01} X ${num02} = ${num01*num02}</td></tr>
		<tr><td>컴퓨터 사양 : ${comPro}</td></tr>
		<tr><td>컴퓨터 제조사 : ${comCompany}</td></tr>
		<tr><td>컴퓨터 가격 : ${comPrice}원</td></tr>

	</table>
</body>
</html>