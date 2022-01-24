<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jspexp.a05_th_member.vo.Member"%>
<%
Member m = (Member) session.getAttribute("mem");
if (m == null) { // 로그인된 session이 없으면 로그인페이지로 이동 처리하게 처리한다.
%>
<script>
	alert("로그인이 필요합니다.");
	location.href = "a01_login.jsp";
</script>
<%
}
%>