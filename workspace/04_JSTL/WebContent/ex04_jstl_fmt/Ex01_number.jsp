<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="n" value="123456789.12456789"></c:set>
<h3>쉼표 처리(,)<fmt:formatNumber value="${n}" groupingUsed="true"></fmt:formatNumber></h3>
<h3>쉼표 처리(,)<fmt:formatNumber value="${n}" pattern="#,##0"></fmt:formatNumber></h3>
<h3>쉼표 처리(,)<fmt:formatNumber value="${n}" pattern="#,##0.00"></fmt:formatNumber></h3>
<h3>쉼표 없음<fmt:formatNumber value="${n}" pattern="0"></fmt:formatNumber></h3>
<h3>쉼표 없음<fmt:formatNumber value="${n}" pattern="0.0"></fmt:formatNumber></h3>
<h3>쉼표 없음<fmt:formatNumber value="${n}" pattern="0.00"></fmt:formatNumber></h3>
<h3>퍼센트(백분율) <fmt:formatNumber value="${n}" type="percent"></fmt:formatNumber></h3>

<h3>통화(원화) <fmt:formatNumber value="${n }" type="currency"/></h3>
<h3>통화($) <fmt:formatNumber value="${n }" type="currency" currencySymbol="$"/></h3>
</body>
</html>