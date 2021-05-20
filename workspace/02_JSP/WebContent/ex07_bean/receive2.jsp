<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8") %>
<%-- person p = new Person();과 같음 --%>
<jsp:useBean id="p" class="ex07.Person"></jsp:useBean>
<%-- setter로 데이터 주입
	p.setName(request.getParameter("name"));
	p.setAge(request.getParameter("age"));
	

  * 모든 프로퍼티 id=p인 모든 필드값
 --%>
 <jsp:setProperty property="*" name="p"/>
 
 <h3>이름 : <%=p.getName() %></h3>
	<h3>나이 : <%=p.getAge() %></h3>
	 <h3>이름 : <jsp:getProperty property="name" name="p"></h3>
	<h3>나이 :<jsp:getProperty property="age" name="p"></h3>
</body>
</html>