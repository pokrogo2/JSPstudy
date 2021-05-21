<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="i" begin="${param.min }" end="${param.max }" step="1">
	<font size="${i }">
		폰트사이즈 : ${i}
	</font>
	<br>
</c:forEach>
<ul>
	<c:forEach var="chk" items="${paramValues.chk }" varStatus="k">
	<li>${k.count}번째 음식 :${chk}</li>
	</c:forEach>

</ul>
</body>
</html>