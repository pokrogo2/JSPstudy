<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String strAge= request.getParameter("age");
	int age = Integer.parseInt(strAge);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(age>=19){ %>
 <h3>성인</h3>
 당신의 나이는 <%=age%>살 이므로 주류 구매가 가능합니다.
 <br>
 <a href="/02_JSP/quiz/Quiz02_1.jsp">처음으로 이동</a>
 <%}else{ %>
 <h3>미성년자</h3>
 당신의 나이는<%=age%>살 이므로 주류구매가 불가능합니다.
 <br>
  <a href="/02_JSP/quiz/Quiz02_1.jsp">처음으로 이동</a>
 <%} %>
</body>
</html>