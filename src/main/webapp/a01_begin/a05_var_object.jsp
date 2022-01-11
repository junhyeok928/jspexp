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
# java의 코드 처리
1. 변수 처리
2. 객체 처리
	1) 배열 선언
	2) 클래스 선언
		class VO로 선언 후, field 선언
		상단 import 호출
		객체 생성과 활용
3. 반복문/조건문 처리
4. 동적배열과 반복문 처리
5. DB 데이터 처리 - 데이터 가져오기
6. DB 데이터 처리 - 요청값에 의한 데이터 가져오기
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>java 코드 처리</h3>
	<%
	String fruits[]={"사과","바나나","딸기"};
	ArrayList<Integer> prices = new ArrayList<Integer>();
	prices.add(3000);	
	// Wrapper 클래스의 boxing 개념에 의해서 처리된다.
	// Integer i = 25;
	
	prices.add(4000);
	prices.add(5000);
	Person p01 = new Person("홍길동",25,"서울");
	%>
	<table>
		<tr><th>과일배열 사용</th><td><%=fruits[0] %></td></tr>
		<tr><th>동적배열 사용</th><td><%=prices.get(1)%></td></tr>
		<tr><th>이름</th><td><%=p01.getName()%></td></tr>
		<tr><th>나이</th><td><%=p01.getAge()%></td></tr>
		<tr><th>사는곳</th><td><%=p01.getLoc()%></td></tr>
	</table>
	<table>
		<col width="50%">
		<tr><th>제품명</th></tr>

	<%
	List<String> ellist = new ArrayList<String>();
	ellist.add("컴퓨터");
	ellist.add("스마트폰");
	ellist.add("TV");
	for(String str : ellist){
	%>
		<tr><td><%=str %></td></tr>
	<% } %>
	</table>
	<%
	Music m = new Music("사랑은 늘 도망가","임영웅");
	ArrayList<Music> mlist = new ArrayList<Music>();
	mlist.add(m);
	mlist.add(new Music("취중고백","김민석"));
	mlist.add(new Music("회전목마","sokodomo"));
	%>
	<table>
		<col width="20%"><col width="40%"><col width="40%">
		<tr><th>번호</th><th>제목</th><th>가수</th></tr>
		<%for(int idx=0; idx<mlist.size();idx++){
			Music m01 = mlist.get(idx);
			%>
		<tr>
			<td><%=idx+1 %></td>
			<td><%=m01.getTitle() %></td>
			<td><%=m01.getSinger() %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>