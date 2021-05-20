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
	<c:set var="average" value="${(param.kor + param.eng + param.mat) div 3 }"/>
	<%-- if로 학점계싼 --%>
	<c:if test="${average -90 ge 0 }">
		<c:set var ="grade" value="A"/>
	
	</c:if>
	<c:if test="${average - 90 < 0 and average - 80 ge 0 }">
		
		<c:set var ="grade" value="B"/>
	</c:if>
	<c:if test="${average - 80 < 0 and average - 70 ge 0 }">
		
		<c:set var ="grade" value="c"/>
	</c:if>
	<c:if test="${average - 70 < 0 and average - 60 ge 0 }">
		
		<c:set var ="grade" value="D"/>
	</c:if>
	<c:if test="${average - 60 le 0 }">
		
		<c:set var ="grade" value="F"/>
	</c:if>
	<c:choose>
		<c:when test="${average-90 ge 0 }">
			<c:set var="grade" value="A"/>
			</c:when>
			<c:when test="${average-80 ge 0 }">
			<c:set var="grade" value="B"/>
			</c:when>
			<c:when test="${average-70 ge 0 }">
			<c:set var="grade" value="C"/>
			</c:when>
			<c:when test="${average-60 ge 0 }">
			<c:set var="grade" value="D"/>
			</c:when>
			<c:otherwise>
			<%--else의 역할 --%>
			
			</c:otherwise>
			
			<%-- choose태그의 서브인 when은 esle의 개념을 가지고있음. --%>
	</c:choose>
	${grade}
	
</body>
</html>