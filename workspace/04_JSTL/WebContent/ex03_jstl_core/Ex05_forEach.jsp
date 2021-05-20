<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	for(int i = 0; i<10; i++){
		out.println(i+"<br>");
	}
%>
<c:forEach var="i" begin="0" end="9" step="1">
	${i }<br>
</c:forEach>

<%
	String [] hobbies = {"낚시","운동","등산"};
	pageContext.setAttribute("hobbies",hobbies);

%>
<c:forEach var="hobby" items="${hobbies}">
	${hobby }<br>

</c:forEach>
<c:forEach var ="hobby" items="${hobbies}" varStatus="k">
	<%-- varStatus가 변수느낌 --%>
	${hobby }의 인덱스 : ${k.index}
</c:forEach>
<%-- arrayList로 사용 --%>
<%
	List<String> list = new ArrayList<>();
	list.add("떡");
	list.add("튀");
	list.add("순");
	pageContext.setAttribute("list", list);
%>
<c:forEach var ="food" items="${list }" varStatus="p">
	${food } 의 인덱스 : ${p.index }<br>

</c:forEach>
</body>
</html>