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
2. ajax통해서 호출할 자원(controller, jsp지정)
	1) servlet의 경우는 mapping url 호출..
		url:"${path}/empAjax.do",
		==> controller 중에서 urlPatterns = {"/empAjax.do"}
		로 선언한 부분을 호출한다,
	2) 서버에 전달할 요청값에 대한 처리
		data:$("form").serialize(),
			: jquery에서 아래 query string 형식으로 자동으로 만들어 준다.
				form하위에 있는 모든 요소객체를 name="key" value="value"
		data:"key=value&key2=value"
			enmae=A&job=SA
		controller
			request.getParameter("ename")
			request.getParameter("job")
	3) url과 요청내용에서  받은 결과를 가져오기..
		dataType:"json",
		success:function(data){
			매개변수인 data를 통해서 받은 데이터
			[{"empno":7369,"ename":"SMITH","job":"CLERK","mgr":7902,"hiredate":"12월 17, 1980","sal":800.0,"comm":0.0,"deptno":20},{"empno":7499,"ename":"ALLEN","job":"SALESMAN","mgr":7698,"hiredate":"2월 20, 1981","sal":1600.0,"comm":300.0,"deptno":30},{"empno":7521,"ename":"WARD","job":"SALESMAN","mgr":7698,"hiredate":"2월 22, 1981","sal":1250.0,"comm":500.0,"deptno":30},{"empno":7566,"ename":"JONES","job":"MANAGER","mgr":7839,"hiredate":"4월 2, 1981","sal":2975.0,"comm":0.0,"deptno":20},{"empno":7654,"ename":"MARTIN","job":"SALESMAN","mgr":7698,"hiredate":"9월 28, 1981","sal":1250.0,"comm":1400.0,"deptno":30},{"empno":7698,"ename":"BLAKE","job":"MANAGER","mgr":7839,"hiredate":"5월 1, 1981","sal":2850.0,"comm":0.0,"deptno":30},{"empno":7782,"ename":"CLARK","job":"MANAGER","mgr":7839,"hiredate":"6월 9, 1981","sal":2450.0,"comm":0.0,"deptno":10},{"empno":7839,"ename":"KING","job":"PRESIDENT","mgr":0,"hiredate":"11월 17, 1981","sal":5000.0,"comm":0.0,"deptno":10},{"empno":7844,"ename":"TURNER","job":"SALESMAN","mgr":7698,"hiredate":"9월 8, 1981","sal":1500.0,"comm":0.0,"deptno":30},{"empno":7900,"ename":"JAMES","job":"CLERK","mgr":7698,"hiredate":"12월 3, 1981","sal":950.0,"comm":0.0,"deptno":30},{"empno":7902,"ename":"FORD","job":"ANALYST","mgr":7566,"hiredate":"12월 3, 1981","sal":3000.0,"comm":0.0,"deptno":20},{"empno":7934,"ename":"MILLER","job":"CLERK","mgr":7782,"hiredate":"1월 23, 1982","sal":1300.0,"comm":0.0,"deptno":10}]
 			dataType의 유형이 text : 문자열 그대로 받기 처리.
 				var dataStr = "{\"empno\":7499}";
 				
 			dataType의 유형이 json : 문자열을 객체로 변환해서 받는다.
 				var obj = {empno:7499};
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