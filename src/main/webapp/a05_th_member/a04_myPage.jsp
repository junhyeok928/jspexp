<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a05_th_member.vo.Member"
    import="jspexp.a05_th_member.A01_Dao"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<%-- 공동 session 처리 페이지 
	반드시 로그인 후, 인증이 되었을 때만 페이지를 사용하기 위해 공통된
	jsp페이지를 지정해서 처리..--%>
<%@ include file="a00_ckSession.jsp" %>
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
  
<%-- 모든 페이지에 공통으로 적용할 내용을 include 페이지 지시자를 통해서
	호출하여 사용할 수 있게 한다.
 --%>
<%
	String proc= request.getParameter("proc"); 
	String id= request.getParameter("id"); 
	String pass= request.getParameter("pass"); 
	String name= request.getParameter("name"); 
	String auth= request.getParameter("auth"); 
	String pointS= request.getParameter("point");
	if(proc!=null){
		A01_Dao dao = new A01_Dao();
		if(proc.equals("upt")){
			Member upt = new Member(id, pass, name, auth, Integer.parseInt(pointS) );
			dao.updateMember(upt);
			// 수정 후, 변경된 정보를 session 다시 넣어서 사용할 수 있게 처리..
			session.setAttribute("mem", dao.getMember(id));
		}
		if(proc.equals("del")){
			dao.deleteMember(id);
			//session.setAttribute("mem","");
			// 전체 session 삭제는 session.invalidate();
			//response.sendRedirect("a01_login.jsp");
		}
	}
%> 
<script type="text/javascript">
	var proc="<%=proc%>";
	if(proc=="upt"){
		alert("수정이 완료되었습니다!");
	}
	if(proc=="del"){
		alert("삭제가 완료되었습니다!\n로그인화면으로 이동합니다.");
		location.href="a01_login.jsp";
	}
	$(document).ready(function(){
		$("#uptBtn").click(function(){

			
			
			if($("[name=id]").val()==""){
				alert("아이디 입력이 필요합니다.!");
				$("[name=id]").focus();
				return;
			}
			if($("[name=pass]").val()==""){
				alert("패스워드 입력이 필요합니다.!");
				$("[name=pass]").focus();
				return;
			}			
			if($("[name=passCfm]").val()==""){
				alert("패스워드  확인 입력이 필요합니다.!");
				$("[name=passCfm]").focus();
				return;
			}			
			if($("[name=pass]").val() != $("[name=passCfm]").val()){
				alert("패스워드와 패스워드 확인이 동일하지 않습니다.")
				return;
			}
			if($("[name=name]").val()==""){
				alert("이름 입력이 필요합니다.!");
				$("[name=name]").focus();
				return;
			}
			if($("[name=point]").val()==""||isNaN($("[name=point]").val())){
				alert("포인트는 숫자형으로 입력하여야 합니다.");
				$("[name=point]").val("");
				$("[name=point]").focus();
				return;
			}
			if(confirm("수정하시겠습니까?")){
				$("[name=proc]").val("upt");				
				$("form").submit();
			}
		});
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				$("[name=proc]").val("del");				
				$("form").submit();
			}			
		});
	});
</script>
</head>
<body>
	<h3>회원정보(my page)</h3>
	<form method="post">
		<input type="hidden" name="proc"/>
		<%--
		# 기능 버튼이 수정/삭제버튼이 있고, 이것을 클릭시,
		각각 dao에 수정 기능메서드와 삭제기능메서드를 호출하여야 한다.
		이 때, 이것을 구분하기 위해서 hidden으로 요청값을 구분하여 전달한다.
		 --%>
	<table>
		<tr><th>아이디</th><%-- 현재 id의 등록 여부를 확인 --%>
			<td><input type="text" name="id" value="${mem.id}"/></td></tr>
		<tr><th>패스워드</th><td><input type="password" name="pass" value="${mem.pass}"/></td></tr>
		<tr><th>패스워드확인</th><td><input type="password" name="passCfm"/></td></tr>
		<tr><th>이름</th><td><input type="text" name="name"  value="${mem.name}"/></td></tr>
		<tr><th>권한</th><td>
							<select name="auth">
								<option>관리자</option>
								<option>일반사용자</option>
								<option>방문자</option>
							</select>
							<script>$("[name=auth]").val("${mem.auth}")</script>
						</td></tr>
		<tr><th>포인트</th><td><input type="text" name="point"   value="${mem.point}"/></td></tr>
		<tr><td colspan="2">
				<input type="button" id="uptBtn" value="수정"/>
				<input type="button" id="delBtn" value="삭제"/>
			</td></tr>
	</table>
	</form>
</body>

</html>