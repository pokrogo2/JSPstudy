<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 자바 변수는 자바 스크립트에서 사용할 수 있다. --%>
	<%-- 자바 스크립트 변수는 자바에서  x --%>
	<%int a= 10; %>
	<script>
	
		alert(<%=a%>); //스크립트 내부 표현식 사용 가능
		
	</script>
	<%--자바스크립트변수는 외부사용불가 --%>
</body>
</html>