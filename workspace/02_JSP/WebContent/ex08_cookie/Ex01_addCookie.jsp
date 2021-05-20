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
		//쿠키는 서버가 만든다
		//쿠키만들기
		Cookie cookie = new Cookie("name","브레드"); //쿠키이름,값
		//쿠키의 유효시간 정하기
		//언제까지 쿠키를 보관할것인가
		cookie.setMaxAge(60*60*24*15); // 15일=60초*60분*24시간*15일
		//3.쿠키를 클라에게 전달해서 저장	
		//서버->클라 :응답(response)
		response.addCookie(cookie);
	%>
<%-- 쿠키 경로
	설정
	쿠키 및 기타 사이트 데이터
	모든 쿠키 및 사이트 데이터 보기
	검색창에 localhost 검색
	
	쿠키 이름,유효시간,값확인
	1.이름확인
	이름 : cookie.getName()
	유효시간: cookie.getMaxAge()
	값 : cookie.getValue()

 --%>
 <h3>쿠키 확인</h3>
 쿠키 이름 : <%=cookie.getName() %><br>
 유효 시간 : <%=cookie.getMaxAge() %><br>
 값 : <%=cookie.getValue() %>
</body>
</html>