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
<%--
	<%--
	ex) 장바구니에 담긴 물건
		[]  @@@  2000
		[]  @@@  3000
		[]  @@@  4000
		   [계산] ==> check가 된 것만 계산처리.
		   Integer.parseInt()로 문자열을 숫자로 변환해서 총계 계산
		   5조
	 --%>
 --%>
<body>
	<h3>장바구니 물건 계산</h3>
	<form>
	<table>
		<tr><th>선택</th><th>물건명</th><th>가격</th></tr>
		<tr><td><input type="checkbox" name="prices" value="2000"/></td>
			<td>사과</td>
			<td>2000</td></tr>
		<tr><td><input type="checkbox" name="prices" value="3000"/></td>
			<td>복숭아</td>
			<td>3000</td></tr>
		<tr><td><input type="checkbox" name="prices" value="4000"/></td>
			<td>바나나</td>
			<td>4000</td></tr>
		<tr><td colspan="3">
				<input type="submit" value="계산"/>
		</td></tr>	
	</table>
	</form>
	<%
	String pricesS[] = request.getParameterValues("prices");
	int tot=0;
	if(pricesS!=null){
		for(String priceS:pricesS){
			tot+=Integer.parseInt( priceS );
		}
	%>
		<h2>총계:<%=tot%></h2>	
	<%	
	}
	%>

	
	
</body>
</html>