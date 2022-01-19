<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" import="jspexp.z01_vo.*" import="jspexp.a03_database.*"
import="jspexp.a04_member.*"%>
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
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="jspexp.a04_member.memberVO" />
<jsp:setProperty property="*" name="member"/>  
<%
memberDAO dao = new memberDAO();
dao.insertMember(member);
response.sendRedirect("main.jsp");
%>
</body>
</html>