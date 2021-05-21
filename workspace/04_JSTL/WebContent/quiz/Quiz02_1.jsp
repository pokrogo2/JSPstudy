<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="Quiz02_2.jsp">
	<h3>일반 forEach연습 </h3><br>
	최소크기 : <input type="text" name="min"><br>
	최대크기 : <input type="text" name="max"><br>
	<br>
	<h3>향상 forEach 연습</h3>
	<br>
	<input type="checkbox" name="chk" value="불고기">불고기
	<input type="checkbox" name="chk" value="닭갈비">닭갈비
	<input type="checkbox" name="chk" value="순대국">순대국
	<input type="checkbox" name="chk" value="자장면">자장면
	<input type="checkbox" name="chk" value="해장국">해장국
	<br><br>
	<button>전송</button> &nbsp; <button>취소</button>
</form>

</body>
</html>