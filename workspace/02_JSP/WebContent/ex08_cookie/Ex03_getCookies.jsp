<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URL"%>
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
		//쿠키 읽기
		// 서버가 클라가 보관하고 있는 쿠키를 가져와 읽음
		//서버가 가져가므로 request요청
		
		//전체 쿠키읽음
		Cookie[] cookies = request.getCookies();
		//쿠키를하나씩읽음
		if(cookies!=null&&cookies.length!=0){
			for(Cookie cookie : cookies){
				out.println("쿠키이름 : " + cookie.getName()+"<br>");
				out.println("유효시간 : " + cookie.getMaxAge()+"<br>");
				out.println("쿠키 값 : " + URLDecoder.decode(cookie.getValue(),"utf-8")+"<br>");
			}
		}
	
	%>
</body>
</html>