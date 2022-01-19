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
# 회원등록과 로그인 페이지
1. 업무 플로우 순서
	# 일반 사용자
	1) 로그인 화면
	2) 회원등록 페이지
	3) 회원상세화면 및 수정/삭제
	# 관리자 페이지
	1) 회원리스트
	2) 회원의 등록/수정/삭제
		- 등록 : 회사기반 사원등록 시스템.
		
2. 처리순서
	1) database 설계 : 테이블 구성
	2) 사용할 sql 정리
	3) 위 sql에 맞게 처리한 VO 구성
	4) DAO 만들기
		- 등록
		- 로그인
		- 리스트
		- 수정
		- 삭제
	5) 화면 구성 페이지 만들기
		- 로그인
		- 회원등록
		- 회원리스트
		- 회원 상세
	6) DB 연동 처리..
	
# 진행 방식
1. a04_member 패키지와 폴더에 본인이 작성하는 코드를 다 저장.
	수업 진행하는 패키지와 폴더는 a05_th_member
2. 완료가 된 조/개인은 a04_member 폴더 기준으로 회원등록부터 진행

# 진행순서
1. 개발 순서 형태로 진행해보겠습니다
	요구사항정의서 : 
		로그인 : 아이디와 패스워드를 통해서 로그인을 할 수 있다.
		회원은 아이디, 패스워드, 이름, 권한, 포인트 정보 가지고 있고, 이 내용을 등록하여야 한다.
	DB 설계서
		회원등록 기준으로 table member
	화면 설계서
		아이디 패스워드가 입력되고 로그인 처리되는 화면
	front단 화면 구현
		로그인 화면 구현 (jsp)
	backend단 화면 구현
		Dao 작성
		로그인 처리요청값 러리
		Dao 기능 메서드 호출.
	
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<h3>제목</h3>
	<table>
		<tr><th>타이틀</th></tr>
		<tr><td>내용</td></tr>
	</table>
</body>
</html>