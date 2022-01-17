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
		/*
		ex) 단계별 jquery Ajax 처리.
		1. h3 클릭시, A07_Controller.java를 호출하여 System.out.println("호출된") 출력
		$.ajax({}); 로 처리..
		2.  prodname=사과  를 요청값으로 넘기고, controller에서 출력하세요..
		3. 입력한 데이터 요청값 전달하기... 
			물건명:[   ] 가격:[  ] 갯수 [   ]  입력한데로 controller에 전송해서 출력..
		*/
		$("h3").click(function(){
			// <input type="text" name="pname" />
			var pname= $("[name=pname]").val();  
			var price= $("[name=price]").val();  
			var cnt= $("[name=cnt]").val();  
			// ex) 서버에서 전달되어 온 데이터  {"pname":"컴퓨터"} 를 전송받아서 alert으로 출력하세요.
			
			$.ajax({
				url:"${path}/mvcAjax04",
				data:"prodname="+pname+"&price="+price+"&cnt="+cnt,
				dataType:"json",
				success:function(data){
					alert(data);
					var prod = data;
					alert(prod.pname); // 객체의 속성을 출력
					
				}
			});
		});
		// h4를 클릭시, A08_Controller.java(/mvcAjax05), jquery ajax 호출
		// 컨트롤러 호출이라고 출력
		$("h4").click(function(){
			var name = $("[name=name]").val();
			$.ajax({
				url:"${path}/mvcAjax05",
				data:"name="+name
			});
		});
		$("h5").click(function(){
			var stname = $("[name=stname]").val();
			var kor = $("[name=kor]").val();
			var eng = $("[name=eng]").val();
			var math = $("[name=math]").val();
			$.ajax({
				url:"${path}/mvcAjax05",
				data:"stname="+stname+"&kor="+kor+"&eng="+eng+"&math="+math,
				success:function(data){
					var prod = data;
					alert(prod.pname); // 객체 
				}
				
			});
		});
	});
</script>
</head>
<body>
	<h5>요청값 서버에 전달(학생정보)클릭</h5>
	<%--h5를 클릭시 입력요소객체 이름[name=stname], 국어, 영어, 수학  전송/ mvcAjax05에 전송 및 출력 --%>
	<table>
		<tr><th>이름</th><td><input type="text" name="stname"/></td></tr>
		<tr><th>국어</th><td><input type="text" name="kor"/></td></tr>
		<tr><th>영어</th><td><input type="text" name="eng"/></td></tr>
		<tr><th>수학</th><td><input type="text" name="math"/></td></tr>
	
	</table>
	<h3>물건정보 ajax</h3>
	물건명:<input type="text" name="pname" size="3"/><br>
	가격:<input type="text" name="price" size="3"/><br>
	갯수:<input type="text" name="cnt" size="3"/><br>
	
	<h4>ajax 콜(mvcAjax05)</h4>
	이름:<input type="text" name="name" />
	<table>
		<tr><th></th></tr>
		<tr><td>내용</td></tr>
	</table>
</body>
</html>