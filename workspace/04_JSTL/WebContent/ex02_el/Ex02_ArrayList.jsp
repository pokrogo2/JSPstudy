
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

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
	List<String> list = new ArrayList<>();
	list.add("브레드");
	list.add("초코");
	list.add("윌크");
	pageContext.setAttribute("list", list);
%>
<%--배열처럼사용 --%>
<h3>이름 1 : ${list[0] }</h3>
<h3>이름 2 : ${list[1] }</h3>
<h3>이름 3 : ${list[2] }</h3>
</body>
</html>