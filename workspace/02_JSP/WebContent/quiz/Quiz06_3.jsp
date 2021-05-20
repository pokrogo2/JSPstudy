<%@page import="java.net.URLEncoder"%>
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
 	request.setCharacterEncoding("utf-8");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	
	Cookie cookie1 =new Cookie("address",URLEncoder.encode(address,"utf-8"));
	cookie1.setMaxAge(60*60);
	Cookie cookie2 =new Cookie("tel",URLEncoder.encode(tel,"utf-8"));
	cookie2.setMaxAge(60*60);
	Cookie cookie3 =new Cookie("email",URLEncoder.encode(email,"utf-8"));
	cookie3.setMaxAge(60*60);
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);

%>
<form action="/02_JSP/quiz/Quiz06_4.jsp">
	<h3>추가정보 입력</h3>
	생년월일 <input type="text" size="4" name="year">년<input type="text" size="4" name="month">월<input type="text" size="4" name="day">일<br>
	
	결혼여부 <input type="radio" id="n" name="yn" value="미혼"><label for="n">미혼</label> <input type="radio" id="y" name="yn"value="기혼"><label for="y" >기혼</label>
	<br>
	직업 <select name="sel">
		<option value="개발자">개발자</option>
		<option value="a">a</option>
		<option value="b">b</option>
		<option value="c">c</option>
		</select>

	
	<button>확인</button>
	</form>

</body>
</html>