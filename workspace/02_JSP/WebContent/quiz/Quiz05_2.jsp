<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="Quiz05_3.jsp">
-------------------------------------------<br>

1.회원 정보는 웹 사이트 운영을 위해서만 사용됩니다.<br>
2.원치않으면 정보제공을 하지않을 수 있습니다.<br>
3.다만 이 경우 정상적인 웹 사이트 이용이 제한됩니다. <br>

-------------------------------------------<br>
위 약관에 동의 하십니까?<br>
<input type="radio" id="y" name="yn" value="y"><label for="y">동의함</label>
<input type="radio" id="n" name="yn" value="n"><label for="n">동의안함</label><br>
<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
<input type="hidden" name="pw" value="<%= request.getParameter("pw") %>">
<input type="hidden" name="name" value="<%= request.getParameter("name") %>">
<button>회원가입</button>
</form>
</body>
</html>