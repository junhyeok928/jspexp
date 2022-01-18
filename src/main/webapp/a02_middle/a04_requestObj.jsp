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
	<h3>다중 물건 구매 처리</h3>
	<%
	String pnames[]= request.getParameterValues("pname");
	if(pnames!=null){
		for(int idx=0;idx<pnames.length;idx++){
	%>
	<h4><%=idx+1%>) <%=pnames[idx]%></h4>
	<%	}
	
	}%>
	
	<form>
	<table>
		<tr><th>물건명</th><td><input type="text" name="pname"/></td></tr>
		<tr><th>물건명</th><td><input type="text" name="pname"/></td></tr>
		<tr><th>물건명</th><td><input type="text" name="pname"/></td></tr>
		<tr><th>물건명</th><td><input type="text" name="pname"/></td></tr>
		<tr><th>물건명</th><td><input type="text" name="pname"/></td></tr>
		<tr><td colspan="2"><input type="submit" value="구매"/></td></tr>
	</table>
	</form>
</body>
</html>