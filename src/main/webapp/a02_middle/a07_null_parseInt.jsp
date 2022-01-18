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
# 요청값의 null에 대한 처리
1. 일단 form객체를 통해 요청값을 처리하여 바로 화면에 나타내야 하는 경우
	초기에는 요청값이 없기에 처리해야 한다. 처리하지 않으면 nullpointerexception
	발생.
	String name = request.getParameter("name");
	if(name!=null){ // 요청값이 있을 때, 처리
	
	}
	if(name==null) name = ""; // 요청값이 없는 경우 기본값이 ""공백으로 처리.

# 요청값의 숫자형 데이터에 대한 처리.. 
1. Integer.parseInt() : 숫자형 문자열에 대한 숫자형 변환 처리.
	모든 요청값은 문자열이기에 숫자처리를 할려면 형변환이 필요로 한다.
	String num01S = request.getParameter("num01");
	int num01=0; // 숫자데이터 초기값을 설정해주고,
	// 요청값이 있을 때, 형변환 처리한다. 
	if(num01S!=null){
		num01 = Integer.parseInt(num01S);
	}

 
--%>
//
	$(document).ready(function(){
		
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