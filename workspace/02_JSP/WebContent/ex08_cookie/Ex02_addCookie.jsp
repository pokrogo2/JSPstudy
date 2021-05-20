<%@page import="java.net.URLDecoder"%>
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
<%
	//쿠키에 주소저장
	// 쿠키이름 : address
	// 유효시간 7일
	//쿠키 값 : 서울 시 마포구 서강로
	//쿠키에 값 공백,콤마,괄호가 있으면 인코딩필요
	Cookie cookie= new Cookie("address",URLEncoder.encode("서울시 마포구 서강로","utf-8"));
	cookie.setMaxAge(60*60*24*7);
	response.addCookie(cookie);
	%>
	이름 : <%=cookie.getName() %><br>
	유효시간 : <%=cookie.getMaxAge()%><br>
	쿠키 값 : <%=URLDecoder.decode(cookie.getValue(),"utf-8")%><br><%--encoding된걸 decoding해서 꺼낸다.  --%>


</body>
</html>