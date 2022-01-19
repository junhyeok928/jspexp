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
 
 [1단계:확인] 7. 등록할 학생의 이름과 국어성적  5개를 리스트하여 등록시, 다른 페이지에 등록할 이름과 성적 총점을 출력되게 하세요
--%>
//
	$(document).ready(function(){
		/*
		$("form").on("submit",function(){
			alert("전송전");
			if(true){
				return;
			}
		});
		*/
		$("#regBtn").click(function(){
			/*
			# 숫자형 데이터 유효성 check
			1. isNaN("") : 숫자형 데이터인지 여부를 확인해주는 함수  Is not a number? 숫자형이 아닐때 true
			2. 서버에 보내기전에 사전에 check해서 전송한다.		
			
			*/
			
			
			$("[name=score]").each(function(idx, ele){
				// isNaN() : 숫자형이 아닐 때, true
				if( isNaN( $(ele).val() )){
					alert("숫자형 데이터를 입력하세요");
				}
				console.log($(ele).val()+":"+isNaN( $(ele).val() ) );
			});
			
			
			if(confirm("등록하시겠습니까?")){
				$("form").submit();
			}
			
		});
	});
</script>
</head>
<body>
	<h3>성적등록</h3>
	<form method="post" action="a11_homework.jsp">
	   	<table>
	   	  <tr><th>이름</th><th>국어점수</th></tr>
	      <tr><th><input type="text" name="sname"></th><th><input type="text" name="score"></th></tr>
	      <tr><th><input type="text" name="sname"></th><th><input type="text" name="score"></th></tr>
	      <tr><th><input type="text" name="sname"></th><th><input type="text" name="score"></th></tr>
	      <tr><th><input type="text" name="sname"></th><th><input type="text" name="score"></th></tr>
	      <tr><th><input type="text" name="sname"></th><th><input type="text" name="score"></th></tr>
	      <tr><td colspan="2"><input type="button" id="regBtn" value="성적등록"></td></tr>
		</table>
	</form>
</body>
</html>