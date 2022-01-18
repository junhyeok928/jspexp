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
	ex) A06_ControllerAjax.java
			/ajaxMvc03.do
		 물건명:[   ]
		 가격:[   ]
		 갯수:[  ]
		 [구매]
		 
		 구매한물건 : @@@@  총비용 :@@@
		 	
		 	
		 	
	 --%>
//
	$(document).ready(function(){
		$("#btn").click(function(){
			var pname = $("[name=pname]").val();
			var price = $("[name=price]").val();
			var cnt = $("[name=cnt]").val();
			$.ajax({
				url:"${path}/ajaxMvc03.do",
				data:"pname="+pname+"&price="+price+"&cnt="+cnt,
				type:"get",
				dataType:"json", // 넘겨오는 데이터 유형
				success:function(data){
					var prod = data;
					// out.print("{\"pname\":\""+pname+"\",\"tot\":"+tot+"}");
					$("span").eq(0).text(prod.pname);
					$("span").eq(1).text(prod.tot);
				}
				
			});
		});
	});
</script>
</head>
<body>

	<h3>jquery Ajax</h3>
	<table>
		<tr><th>물건명</th><td><input type="text" name="pname"/></td></tr>
		<tr><th>가격</th><td><input type="text" name="price"/></td></tr>
		<tr><th>갯수</th><td><input type="text" name="cnt"/></td></tr>
		<tr><td colspan="2"><input type="button" id="btn" value="구매"/></td></tr>
	</table>
	<h4>구매한 물건:<span></span>, 총비용:<span>0</span></h4>
</body>
</html>