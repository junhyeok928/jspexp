<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a05_th_member.vo.Member"
    import="jspexp.a05_th_member.A01_Dao"  %>
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
		$("#regBtn").click(function(){
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
			// ajax를 통해서 서버에 등록된 아이디가 없는 것을 확인했을 때만,
			// 회원등록을 할 수 있게끔 유효성
			if($("#ckId").val()!="Y"){
				alert("회원 아이디 등록 여부를 check하셔야 합니다!");
				return;
			}
			if(confirm("등록하시겠습니까?")){
				$("form").submit();
			}
		});
		// 1. 이벤트 결정. 
		$("#ckIdBtn").click(function(){
			var id = $("[name=id]").val();
			alert(id)
			// ajax 처리 통해서 check해서 지금 등록된 id가 아닐때
			// 2. 페이지와 요청값 설정.
			$.ajax({
				url:"${path}/checkId.do",
				data:"id="+id,
				type:"get",
				success:function(data){
					alert("받은값:"+data);
					// 데이터(등록된 ID)가 없을 때만 "Y" 처리..
					$("#ckId").val(data);
					// if 유효성 check 후,
					// $("[name=id]").attr("readonly") 속성 추가..
				}
			})
			
		});
	});
</script>
</head>
<body>
	<h3>회원가입</h3>
	<form method="post">
		<input type="hidden" id ="ckId">
	<table>
		<tr>
		<th>아이디</th>
		<td>
			<input type="text" name="id"/><input type="button" id= "ckIdBtn" value="등록여부">
		</td>
		</tr> <%-- 현재 id의 등록 여부 확인 --%>
		<tr><th>패스워드</th><td><input type="password" name="pass"/></td></tr>
		<tr><th>패스워드확인</th><td><input type="password" name="passCfm"/></td></tr>
		<tr><th>이름</th><td><input type="text" name="name"/></td></tr>
		<tr><th>권한</th><td>
							<select name="auth">
								<option>관리자</option>
								<option>일반사용자</option>
								<option>방문자</option>
							</select>
						</td></tr>
		<tr><th>포인트</th><td><input type="text" name="point"/></td></tr>
		<tr><td colspan="2"><input type="button" id="regBtn" value="등록"/></td></tr>
	</table>
	</form>
</body>
<%
	String id= request.getParameter("id"); 
	String pass= request.getParameter("pass"); 
	String name= request.getParameter("name"); 
	String auth= request.getParameter("auth"); 
	String pointS= request.getParameter("point");
	if(id!=null){
		Member ins = new Member(id, pass, name, auth, Integer.parseInt(pointS) );
		A01_Dao dao = new A01_Dao();
		dao.insertMember(ins);
%>
	<script type="text/javascript">
		alert("등록 성공\n로그인 페이지 이동!");
		location.href="a01_login.jsp";
	</script>
<%		
	}

%>
</html>