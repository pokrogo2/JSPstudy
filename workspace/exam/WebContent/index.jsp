<%@page import="exam.ApiSearchMovie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/exam/SearchMovie" method="post">
		검색 : <input type="text" id="search" name="search">
		<button>검색</button>
	
	</form>
	
</body>
</html>