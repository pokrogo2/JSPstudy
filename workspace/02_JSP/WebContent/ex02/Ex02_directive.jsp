<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    	1.페이지 지시어
    		1)<%@ page%>
    		2) 페이지 속성을 저장한다.
    		3) WAS가 page지시어를 해석,처리
    		4) 속성
				1)language 사용언어
				2) contentType문서타입
				3) pageEncoding인코딩
				4) import 자바의import
				5) session 세션사용 유무
				6) buffer출력 버퍼크기
				7) autFlush 출력 버퍼 자동비우기
				8) errorPage 에러 발생시 이동할 페이지
				9) isErrorPage에러 페이지 유무    
    	2.include지시어
    		1)현재 페이지에 다른페이지를 포함시킨다.
    		2)정적 페이지(변화가 없는 페이지)를 포함시킬때 사용
    		3)<%@ include file="파일"%>
    	3. taglib 지시어
    		1)jsp는 html태그와 추가로 확장태그를 사용한다.
    		2)확장 태그를 태그 라이브러리라고한다.
    		3)확장 태그로 변수처리 제어문 등 처리
    		4)
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd E요일 H:mm:ss");
		String  message =sdf.format(now);
	%>
	<h1><%=message %></h1>
</body>
</html>