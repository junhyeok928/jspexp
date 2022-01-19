<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" import="jspexp.z01_vo.*" import="jspexp.a03_database.*" import="jspexp.a04_member.*"%>
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
<script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
<%
request.setCharacterEncoding("euc-kr");
String id = request.getParameter("id");
String pw = request.getParameter("pass");

memberDAO dao = new memberDAO();
int check = dao.loginCheck(id, pw);
String msg = "";
String url = "";

if (check == 1) {
	session.setAttribute("sessionID", id);
	msg = "로그인 성공";
	url = "main.jsp";
} else {
	msg = "로그인실패";
	url = "loginForm.jsp";
}
response.sendRedirect(url);
%>
</head>
<body>
	<h3>로그인 유무</h3>
	<table>
		<tr>
			<th>로그인 성공유무</th>
			<th>아이디</th>
			<th>패스워드</th>

		</tr>
		<tr>
			<td><%=msg%></td>
			<td><%=id%></td>
			<td><%=pw%></td>

		</tr>
	</table>
</body>
</html>