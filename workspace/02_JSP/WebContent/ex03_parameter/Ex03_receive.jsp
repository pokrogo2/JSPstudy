<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    String name= request.getParameter("name");
    if(name.isEmpty()){
    	name="기본이름";
    }
    String strAge=request.getParameter("age");
    int age =strAge.isEmpty() ? 0 : Integer.parseInt(strAge);
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
	alert('이름은<%=name %>이고 나이는 <%=age %> 이다.');
	</script>
</body>
</html>