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
# forward 지시자 처리
1. action 태그 중에 server단에서 페이지를 이동할 때, 사용된다.
2. jsp의 script 코드로는 response.sendRedirect("페이지이동");
	과 동일한 코드이다.
	cf) 페이지 이동 처리
	# frontend단위로 서버에 페이지 이동 요청 처리
		form 요청값과 함께 전송 : submit를 통해서
		a href="이동페이지"
		location.href="이동페이지"
	# backend단위 : 서버 프로그램 자체 내에서 페이지를 이동해서 client에 이동된 페이지
		보이게 처리..
		response.sendRedirect("페이지이동");
		<jsp:forward/>
--%>
//
	$(document).ready(function(){
		
	});
	function gogo(){
		$("form").submit();
	}
</script>
</head>
	<%
	String goPage = request.getParameter("goPage");
	if(goPage!=null){
	%>
		<jsp:forward page="<%=goPage%>"/>	
		<!-- action 태그에 의해서 이동 처리 jstl이나 el 태그를 활용할 수 있다. -->
	<%	
		//response.sendRedirect(goPage);	// 서버단에서 페이지를 이동 처리..
	}
	%>
	<%-- ex) 쇼핑몰에서 선택한 페이지로 이동되게 하세요. 로그인/관리자페이지/의류/전자제품
	 --%>
<body>
	<h3>요청값의 결과로 페이지 이동</h3>
	<form>
	<table>
		<tr><td>
			<select name="goPage" onchange="gogo()">
				<option value="">이동할 페이지 선택</option>
				<option value="a13_admin.jsp">관리자</option>
				<option value="a14_normal.jsp">일반사용자</option>
				<option value="a15_quest.jsp">방문객</option>
			</select>
		</td></tr>
	</table>
	</form>
</body>
</html>