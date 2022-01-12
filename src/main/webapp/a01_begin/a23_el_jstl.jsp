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
# 표현 언어(Expression Language)
1. jsp에서 사용 가능한 새로운 스크립트 언어를 말한다.
2. 데이터가 없을 때, nullpointerexpception 등의 예외가 발생하지 않고,
	프로그램 코드를 보다 효과적으로 처리해주는 언어이다.
3. 사용
	1) session scope(useBean활용)에 의해 만들어진 변수와 객체를 ${변수명}, ${참조.프로퍼티}
		형태로 사용한다.
	2) 기본객체에서 지원하는 처리도 할 수 있다.
		- 요청값 처리 
			${param.요청키} ${paramValues.요청키}
		- 비교 연산식 처리
			${empty 변수명} : 해당 변수명이 null이 아니고, ""(공백)도 아닐 때,
					boolean 체크
			${not 비교연산식} : 해당 비교연산식의 not(!) 논리 연산자 처리.

 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>el의 활용</h3>
<%
	// session scope에서 page 범위로 데이터를 설정하는 기본 객체
	pageContext.setAttribute("name", "홍길동");
	pageContext.setAttribute("num01", 25);
	pageContext.setAttribute("num02", 5);
	// ex) 물건명, 가격, 갯수를 변수로 선언하여, 아래에 총계까지 처리된 내용을 출력하세요
	request.setAttribute("pname", "사과");
	request.setAttribute("price", 3000);
	request.setAttribute("cnt", 5);
	Person p01 = new Person("김형식",25,"방배동");
	request.setAttribute("p01", p01);
	// p01이라는 이름으로 객체를 할당.
	// 객체는 p01.프로퍼티명으로 호출이 가능함..
	// ex) 운동선수(야구)의 이름과 소속팀, 올해성적으로 속성으로 VO를 만들고,
	//    request객체에 할당하고, 출력하세요..
//	request.setAttribute("player", new Player("키움","이정후",0.360));
	
%>	
	<table>
		<tr><th>변수의 선언</th></tr>
		<tr><td>소속팀:${player.tname}</td></tr>
		<tr><td>이름:${player.name}</td></tr>
		<tr><td>올해성적:${player.record}</td></tr>
		<tr><td>이름:${p01.name}</td></tr>
		<tr><td>나이:${p01.age}</td></tr>
		<tr><td>사는곳:${p01.loc}</td></tr>
		
		<tr><td>${name} ${num01} + ${num02} = ${num01+num02}</td></tr>
		<tr><td>물건명:${pname}</td></tr>
		<tr><td>가격:${price}</td></tr>
		<tr><td>갯수:${cnt}</td></tr>
		<tr><td>총계:${price*cnt}</td></tr>
		<tr><td>50000이상인지?:${price*cnt>50000}</td></tr>
		<tr><td>name변수가 있는지?:${not empty name}</td></tr>
		<tr><td>call변수가 있는지?:${not empty call}</td></tr>
		
	</table>
</body>
</html>