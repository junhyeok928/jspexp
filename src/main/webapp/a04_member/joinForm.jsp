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
function joinCheck() {
	var form = document.join;

	if (form.memberId.value == "") {
		alert("아이디를 입력해야 합니다");
		form.memberId.focus();
		return false;
	}
	if (form.memberPass.value == "") {
		alert("패스워드를 입력해야 합니다");
		form.memberPass.focus();
		return false;
	}
	if (form.memberName.value == "") {
		alert("이름를 입력해야 합니다");
		form.memberName.focus();
		return false;
	}
}
</script>
</head>
<body>
	<h3>회원가입</h3>
	<form action="joinPro.jsp" method="post" name="join" onSubmit="return joinCheck()">
	<table>
		<tr><th>아이디</th><td><input type="text" name="memberId"/></td></tr>
		<tr><th>패스워드</th><td><input type="password" name="memberPass"/></td></tr>
		<tr><th>이름</th><td><input type="text" name="memberName"/></td></tr>
		<tr><th>권한</th><td><select name="memberAuth">
		<option>관리자</option>
		<option>일반사용자</option>
		<option>방문자</option>
		</select></td></tr>
		<tr><th>포인트</th><td><input type="text" name="memberPoint"/></td></tr>
		<tr><td colspan="2"><input type="submit" value="회원가입"/></td>
	</table>
	</form>
</body>
</html>