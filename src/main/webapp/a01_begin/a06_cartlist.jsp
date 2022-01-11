<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" import="jspexp.z01_vo.*" import="jspexp.a03_database.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
<style>
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
<%--
 
 
--%>
	//
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<h3>카트 리스트</h3>
	<%
	ArrayList<Product> carList = new ArrayList<Product>();
	carList.add(new Product("사과", 2000, 5));
	carList.add(new Product("소고기", 12000, 3));
	carList.add(new Product("키위", 10000, 3));
	carList.add(new Product("과자", 3000, 2));
	carList.add(new Product("우유", 4500, 3));
	%>
	<table>
		<tr>
			<th>번호</th>
			<th>물건명</th>
			<th>가격</th>
			<th>갯수</th>
			<th>단위계</th>
		</tr>
		<%
		int tot = 0;
		for (int idx = 0; idx < carList.size(); idx++) {
			Product p = carList.get(idx);
			int sum = p.getPrice() * p.getCnt();
			tot+=sum;
		%>
		<tr>
			<td><%=idx + 1%></td>
			<td><%=p.getName()%></td>
			<td><%=p.getPrice()%></td>
			<td><%=p.getCnt()%></td>
			<td><%=sum %></td>
		</tr>
		<%
		}
		%>
		<tr>
			<td colspan="4">총계</td>
			<td><%=tot%></td>
		</tr>
	</table>
</body>
</html>