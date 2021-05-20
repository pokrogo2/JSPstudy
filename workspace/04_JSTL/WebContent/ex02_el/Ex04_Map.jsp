<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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
	Map<String,Object> map = new HashMap<>();
	map.put("name","브레드");
	map.put("age",50);

	pageContext.setAttribute("map",map);

%>
<%-- map 은 bean 처럼 사용할 수 있다. --%>

</body>
</html>