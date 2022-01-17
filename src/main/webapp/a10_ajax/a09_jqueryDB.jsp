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
		$("#schBtn").click(function(){
			/* alert("ajax DB데이터 가져오기"); */
			$.ajax({
				url:"${path}/deptAjax.do",
				dataType:"json",
				success:function(data){

					var listTxt = "";
					//$.each(배열, function(index, 단위데이터{}))
					$.each(deptList,function(idx, dept){
						console.log(idx+":"+dept);
						listTxt+="<tr><td>"+dept.deptno+"</td><td>"+dept.dname+"</td>"+
							"<td>"+dept.loc+"</td></tr>";
					});
					$("#show").html(listTxt);
				}
			});
		});
		$("[name=loc]").keyup(function(){
			$.ajax({
				url:"${path}/deptAjax.do",
				data:"loc="+$("[name=loc]").val(),
				dataType:"json",
				success:function(dList){
					var listTxt = "";
					$.each(deptList,function(idx, dept){
						console.log(idx+":"+dept);
						listTxt+="<tr><td>"+dept.deptno+"</td><td>"+dept.dname+"</td>"+
							"<td>"+dept.loc+"</td></tr>";
					});
					$("#show").html(listTxt);
				}
			})
		})
	});
</script>
</head>
<body>
	<h3>DB ajax 처리(dept)</h3>
	<table>
		<tr><th>부서위치</th><td><input type="text" name="loc"/></td></tr>
		<tr><td colspan="2"><input type="button" id="schBtn" value="조회"/></td></tr>
	</table>
	<table>
		<thead>
			<tr><th>회사번호</th><th>회사이름</th><th>지역</th></tr>
		</thead>
		<tbody id="show"></tbody>
	</table>
</body>
</html>