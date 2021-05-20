<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 
    	taglibs의 라이브러리
    	1.지시어를 작성해야한다.
    	<%@ 지시어 %>
    	2.다음과 같이 작성하낟.
    		<%@ taglib uri="http://java.sum.com/jsp/jstl/core" prefix="c" %>
    	3.변수 선언, 분기문, 반복문 등을 태그로 지원
     --%>
     <%--core 라이브러리의 지시어 작성 --%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<%--
	String name ="브레드";
	int age = 50;
	pageContext.setAttribute("name",name);
	pageContext.setAttribute("age",age);


--%>
<%--
	변수 선언방법

	set 직전의 자바 작업을 아래태그로 대신
 --%>
 	<c:set var="name" value="브레드" scope="page" />
 	<c:set var="age" value="50" /><!-- scope생략시 pageContext에저장 -->
	이름 : ${name}<br>
	나이 : ${age}<br>
	<%--
		String phone = "010-1111-1111";
		String address = "서울시 마포구 서강로";
		request.setAttribute("phone",phone);
		request.setAttribute("address",address);
	
	--%>
	<c:set var="phone" value="010-1111-1111" scope="request"/>
	<c:set var="address" value="서울시 마포구 서강로" scope="request"/>
	연락처 :${phone }<br>
	연락처 :${address }<br>
	<%-- request 값을 유지하고 이동 == forward --%>
	<%--
		request.getRequestDispatcher("Ex01_set2.jsp").forward(request,response);
		
--%>
<jsp:forward page="Ex01_set2.jsp">

	<jsp:param value="브레드" name="name"/>
	<jsp:param value="50" name="age"/>
	
</jsp:forward>
<%-- jsp 액션태그는 추가 parameter를 보낼수 있음 --%>
</body>
</html>