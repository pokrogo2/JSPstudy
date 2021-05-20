<%@page import="java.util.Optional"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--JSP기본객체
    	JSP가 미리 만들어 놓은 객체이다.(built in)
    	별도의 생성 과정 없이 사용한다.
    	종류
    	request
    	response
    	out
    	page
    	pageContext
    	session
    	application 웹 프로젝트
    
     --%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="http://localhost:9090/02_JSP/ex03/Ex01_receive.jsp?name=브레드">Ex01_receive로 보내기</a>
	<a href="/02_JSP/ex03/Ex01_receive.jsp?age=50">Ex01_receive로 보내기</a>
	<a href="Ex01_receive.jsp?name=브레드&age=50">Ex01_receive로 보내기</a>
</body>
</html>