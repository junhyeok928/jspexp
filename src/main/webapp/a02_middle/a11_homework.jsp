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
		
	});
</script>
</head>
<body>
   <%
   	  // 같은 이름의 name을 배열로 받을 수 있음..
      String[] sname = request.getParameterValues("sname");
      String[] score = request.getParameterValues("score");
      /*
      # 요청값이 null일 때에 대한 처리
      	- 화면 초기에 요청데이터가 없을 때에 대한 처리를 if(변수!=null ) 해주어야 한다.
      	- 입력값에 대한 유효성 check는 js로 처리한다.
      # 숫자형 데이터의 변환 처리 Integer.parseInt(요청키);
      */
      if(score!=null){
    	  // 합산 총계 처리..
	      int sum=0;
	      for(String ss : score){
	            sum += Integer.parseInt(ss);
	      }
	   %>
	   <%if(sname!=null){
	      for(String g:sname){ %>   
	   
	   <h3><%=g %></h3>
	   
	   <%}} %>
	   <h2>총점 : <%=sum %></h2>
   <%}else{%>
	    <h2>입력된 데이터가 없습니다.!!</h2>   		
   <%}%>

</body>
</html>