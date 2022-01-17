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
# 반복문 처리시 활용
$.each(배열,function(index, 배열안단위구성요소){});
--%>
//
	$(document).ready(function(){
		var arry=["사과","바나나","딸기"];
		$.each(arry,function(idx,fruit){
			// var fruit = arry[idx];
			console.log(id+":"+fruit);		
		});
		var objArry=[
			{name:"사과",price:3000,cnt=2},
			{name:"바나나",price:4000,cnt=3},
			{name:"딸기",price:12000,cnt=2},
			]
		$.each(objectArry,function(idx, fruit){
			// var fruit = objArry[idx]
			console.log(idx+":"+fruit.name+":"+fruit.price+":"+fruit.cnt);
			// console.log(fruit);
		});
	});
</script>
</head>
<body>
	<h3>제목</h3>
	<table>
		<tr><th>타이틀</th></tr>
		<tr><td>내용</td></tr>
	</table>
</body>
</html>