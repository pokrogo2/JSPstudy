<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		a {
			text-decoration: none;
			color: black;
		}
		.container {
			width: 500px;
			margin: 0 auto;
			text-align: center;
			display: flex;
			justify-content: space-between;
		}
		.btn {
			width: 150px;
			height: 50px;
		}
		.btn > a {
			display: block;
			width: 100%;
			height:100;
		}
	</style>
</head>
<body>

	<h1 style="text-align: center;">회원 관리</h1>
	<div class="container">
		<div class="btn">
			<a href="/09_MODEL1/member/joinPage.jsp">회원가입</a>
		</div>
		<c:if test="${loginDTO eq null}">
		<div class="btn">
			<a href="/09_MODEL1/member/loginPage.jsp">로그인</a>
		</div>
		</c:if>
		<c:if test="${loginDTO ne null }">
			${loginDTO.name }님 반갑습니다<br>
			<a href="/09_MODEL1/member/logout.jsp">로그아웃</a>
			<a href="/09_MODEL1/member/myPage.jsp">개인정보보기</a>
		</c:if>
		
	</div>

</body>
</html>