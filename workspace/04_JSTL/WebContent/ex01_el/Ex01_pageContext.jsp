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
		int a =7;
		int b =2;
		
		pageContext.setAttribute("a",a);
		pageContext.setAttribute("b",b);
	%>
	${a}<br> <%-- 속성의 이름을 el로 표현한다. --%>
	${b}<br>
	
	<h3>표현식 vs 표현 언어</h3>
	<%--표현식은 java연산이다 --%>
	<%=a %>+<%=b %>=<%=a+b %><br>
	<%=a %>-<%=b %>=<%=a-b %><br>
	<%=a %>*<%=b %>=<%=a*b %><br>
	<%=a %>/<%=b %>=<%=a/b %><br>
	<%=a %>%<%=b %>=<%=a%b %><br>
	<hr>
	<%-- 표현 언어는 자신의 연산을 가지고 있다. --%>
	${a} + ${b} =${a+b}<br>
	${a} - ${b} =${a-b}<br>
	${a} * ${b} =${a*b}<br>
	${a} / ${b} =${a/b}<br>
	${a} / ${b} =${a div b}<br>
	${a} % ${b} =${a % b}<br>
	${a} % ${b} =${a mod b}<br>
</body>
</html>