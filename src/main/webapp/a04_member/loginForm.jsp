<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" import="jspexp.z01_vo.*" import="jspexp.a03_database.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인폼</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
<style>
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	function loginCheck() {
		var form = document.login;

		if (form.id.value == "") {
			alert("아이디를 입력해야 합니다");
			form.id.focus();
			return false;
		}
		if (form.pass.value == "") {
			alert("패스워드를 입력해야 합니다");
			form.pass.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<h3>로그인</h3>
	<form action="loginPro.jsp" method="post" name="login" onSubmit="return loginCheck()">
		<table>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="id" />
				</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td>
					<input type="password" name="pass" />
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>