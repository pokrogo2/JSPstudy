<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 파일 업로드
		1. cos.jar 라이브러리 추가
			1)servlets.com에서 다운가능
			2)web-inf/lib디렉토리에 추가
		2. 기존 request대신 MultipartReques 클래스를 이용한 객체 사용
		3. 업로드가 가능한 <form> 태그 속성을 사용한다.
			<form method="post" enctype="multipart/form-data">
		4.파일이 업로드 될 디렉토리를웹 컴포넌트들의 루트 디렉토리인 webContent
		   디렉토리 하위에 만든다.(archive)디렉토리명자유
 --%>
 
 	<h3>파일첨부하는 폼</h3>
	<form action="/02_JSP/ex10_file/Ex02_upload.jsp" method="post" enctype="multipart/form-data">
	업로더<input type="text" name="uploader"><br>
	<input type="file" name="filename">
	<button>파일 첨부하기</button>
	
	
	
	
	</form>
</body>
</html>