<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function fn(f){
		f.action='/02_JSP/ex03/Ex03_receive.jsp';
		f.submit();
	}
</script>
</head>
<body>
	<form name="send_form">
		<input type="text"name="name" placeholder="이름">
		<input type="text"name="age" placeholder="나이">
		<input type="button" value="Ex03_receive.jsp로 보내기" onclick="fn(this.form)">
		
	
	</form>
</body>
</html>