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
	request.setAttribute("name", "브레드");
	request.setAttribute("age", 50);
	
	//request를 유지한 상태로 이동 forward
	request.getRequestDispatcher("Ex03_request2.jsp").forward(request, response);


%>

</body>
</html>