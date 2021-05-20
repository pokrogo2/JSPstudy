<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 속성으로 저장되면 아래랑 같이 표현 setAttribute일경우 --%>
${param.name }<br> <%--파라미터로 받았으니까 다르게해야함 --%>
${param.age }<br> <%--파라미터로 받았으니까 다르게해야함 --%>
${param.gender }<br> <%--파라미터로 받았으니까 다르게해야함 --%>
${paramValues.hobbies[0] } <%--파라미터로 받았으니까 다르게해야함 --%>
${paramValues.hobbies[1] } <%--파라미터로 받았으니까 다르게해야함 --%>
${paramValues.hobbies[2] }<br> <%--파라미터로 받았으니까 다르게해야함 --%>
${paramValues.tel[0] }-
${paramValues.tel[1] }-
${paramValues.tel[2] }<br>
</body>
</html>