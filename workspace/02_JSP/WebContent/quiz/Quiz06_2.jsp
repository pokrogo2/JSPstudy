<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	Cookie cookie1 =new Cookie("id",URLEncoder.encode(id,"utf-8"));
	cookie1.setMaxAge(60*60);
	Cookie cookie2 =new Cookie("pw",URLEncoder.encode(pw,"utf-8"));
	cookie2.setMaxAge(60*60);
	Cookie cookie3 =new Cookie("name",URLEncoder.encode(name,"utf-8"));
	cookie3.setMaxAge(60*60);
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
	%>

<h3>연락처를 입력하세요.</h3>
<form action="/02_JSP/quiz/Quiz06_3.jsp">
	주소 : <input type="text" name="address">
	전화번호 : <input type="text" name="tel">
	이메일 : <input type="text" name="email">
	
	<button>확인</button>


</form>
</body>
</html>