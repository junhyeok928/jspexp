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
# jquery를 통한 ajax 처리.
1. 보다 효과적인 옵션을 통해서 jquery를 통해서 비동기 통신으로 데이터를 처리할 수 있다.
2. 기본 형식 및 속성.
	$.ajax({속성:속성값,속성2:속성2값,....}); 
 	1) url : 요청 주소
 	2) data : 요청값 - 쿼리 스트링 id=himan&pass=777
 	3) dataType : 결과를 받은 데이터 유형.. json, xml, text
 	4) type : get/post
 	4) success: function(){} : 정상적으로 처리되었을 때, 결과 기능 메서드.
 	5) error: function(xhr, status, error){} : 에러가 처리 될 때 기능 메서드
--%>
//
	$(document).ready(function(){
		$("#btn").click(function(){
			var id = $("[name=id]").val();
			var pass = $("[name=pass]").val();
			$.ajax({
				url:"${path}/ajaxMvc02.do",
				data:"id="+id+"&pass="+pass,
				type:"get",
				dataType:"json",
				success:function(data){
					// dataType:"json"로 하는 순간 객체로 받아진다.
					var member = data
					$("#show td").eq(0).text(member.id);
					$("#show td").eq(1).text(member.pass);
					$("#show td").eq(2).text(member.result);
				}
			});
		});
	});
</script>
</head>
<body>
	<h3>jquery Ajax 처리..</h3>
	<table>
		<tr><th>아이디</th><td><input type="text" name="id"/></td></tr>
		<tr><th>패스워드</th><td><input type="text" name="pass"/></td></tr>
		<tr><td colspan="2"><input type="button" id="btn" value="로그인" /></td></tr>
	</table>
	<table id="show">
		<tr><th>아이디</th><td>내용</td></tr>
		<tr><th>패스워드</th><td>내용</td></tr>
		<tr><th>결과</th><td>내용</td></tr>
	</table>
</body>
</html>