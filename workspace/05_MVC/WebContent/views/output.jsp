<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> 요청한 날짜는 ${today }입니다.</h3>
<h3> 요청한 시간는 ${now }입니다.</h3>
<c:forEach var="ball" items="${lotto }">
	${ball }

</c:forEach>

<h3>요청한 구구단</h3>
${gugudan }<br>
</body>
</html>