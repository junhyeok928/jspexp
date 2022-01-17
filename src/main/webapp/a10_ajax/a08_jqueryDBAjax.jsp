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
			//alert("ajax DB데이터 가져오기");
			ajaxFunc("");
		});
		$("[name=ename],[name=job]").on("keyup",function(){
			// $("form").serialize() : form하위에 있는 모든 요소객체들을 서버에 요청값으로
			// 	자동으로 변환 처리해주는 jquery 기능 메서드 이다.(한글 encoding 처리..)
			//$("h3").text($("form").serialize() );
			console.log( $("form").serialize() );
			// ajaxFunc( $("form").serialize() );
			$.ajax({
				// A09_ControllerDB.java
				url:"${path}/empAjax.do",
				dataType:"json",
				data:$("form").serialize(),
				success:function(data){
					var empList = data;
					console.log(data);
					var listTxt = "";
					// $.each(배열, function(index, 단위데이터){})
					$.each(empList,function(idx, emp){
						console.log(idx+":"+emp)
						listTxt+="<tr><td>"+emp.empno+"</td><td>"+emp.ename+"</td>"+
							"<td>"+emp.job+"</td><td>"+emp.sal+"</td>"+
							"<td>"+emp.comm+"</td><td>"+emp.deptno+"</td></tr>";
					});
					//$("h3").append(", 건수:"+empList.length);
					$("#show").html(listTxt);
				}
			});					
			
		});
		
	});
	function ajaxFunc(qStr){
		$.ajax({
			url:"${path}/empAjax.do",
			dataType:"json",
			data:qStr,
			success:function(data){
				var empList = data;
				console.log(data);
				var listTxt = "";
				// $.each(배열, function(index, 단위데이터){})
				$.each(empList,function(idx, emp){
					console.log(idx+":"+emp)
					listTxt+="<tr><td>"+emp.empno+"</td><td>"+emp.ename+"</td>"+
						"<td>"+emp.job+"</td><td>"+emp.sal+"</td>"+
						"<td>"+emp.comm+"</td><td>"+emp.deptno+"</td></tr>";
				});
				$("h3").append(", 건수:"+empList.length);
				$("#show").html(listTxt);
			}
		});		
	}
	
	
	// ex) a09_jqueryDB.jsp(클릭시,  부서정보 ajax리스트),
	//         A10_Controller.java (부서정보 DB 처리 )
	//     ~12:35 풀이
</script>
</head>
<body>
	<h3>DB ajax 처리(Emp)</h3>
	<form>
	<table>
		<tr><th>사원명</th><td><input type="text" name="ename"/></td></tr>
		<tr><th>직책</th><td><input type="text" name="job"/></td></tr>
		<tr><td colspan="2"><input type="button" id="schBtn" value="조회"/></td></tr>
	</table>
	</form>
	<table>
		<thead>
			<tr><th>사원번호</th><th>사원명</th><th>직책명</th><th>급여</th>
				<th>보너스</th><th>부서번호</th></tr>
		</thead>
		<tbody id="show"></tbody>
	</table>
</body>
</html>