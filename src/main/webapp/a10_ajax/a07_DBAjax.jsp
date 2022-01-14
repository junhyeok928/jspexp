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
		/*
		ex) 단계별 jquery Ajax 처리.
		1. h3 클릭시, A07_Controller.java를 호출하여 System.out.println("호출된") 출력
			$.ajax({}); 로 처리..
		2. prodname = 사과 를 요청값으로 넘기고, controller 출력
		3. 입력한 요청값 호출하기
			물건명 : [	] 가격: [	] 갯수 입력할대로 출력
		*/
		$("h3").click(function(){
			var prodname = $("[name=prodname]").val();
			var price = $("[name=price]").val();
			var cnt = $("[name=cnt]").val();
			$.ajax({
				url:"${path}/mvcAjax04",
				data:"prodname="+prodname+"&price="+price+"&cnt="+cnt
			});
		});
		// h4를 클릭시, A08_Controller.java(/mvcAjax05), jquery ajax 호출
		// 컨트롤러 호출이라고 출력
		$("h4").click(function(){
			var name = $("[name=name]").val();
			$.ajax({
				url:"${path}/mvcAjax05",
				data:"name="+name
			});
		});
	});
</script>
</head>
<body>
	<h3>사원정보 ajax</h3>
	<h4>ajax 콜(mvcAjax05)</h4>
	물건명:<input type="text" name="prodname"><br>
	가격:<input type="text" name="price"><br>
	갯수:<input type="text" name="cnt">
	<table>
		<tr><th></th></tr>
		<tr><td>내용</td></tr>
	</table>
</body>
</html>