<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
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
	//String contextPath = application.getContextPath();
	//String realPath = application.getRealPath("ex05/잔향.txt");
	String contextPath = request.getContextPath();
	String realPath = request.getServletContext().getRealPath("ex05/잔향.txt");

%>
<h3> 컨텍스트 패쓰 : <%=contextPath %></h3>
<h3> 실제 주소 : <%=realPath %></h3>
	<%
	
		//잔향.txt 파일의 내용을 읽어서 웹 브라우저 화면에 표시
		//테스ㅡㅌ 파일을 읽기 위해 문자기반 입력 스트림 생
		File file =new File(realPath);
		BufferedReader br = new BufferedReader(new FileReader(file));
		
		String gasa = "";
		while(true){
			String line= br.readLine();
			if(line==null){break;}
			gasa +=(line+"<br>");
		}
		
	
	
	%>
	<h1>잔향</h1>

</body>
</html>