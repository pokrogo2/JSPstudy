<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
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
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String filename="";
	filename=id+".txt";
	String realPath = request.getServletContext().getRealPath("quiz/"+filename);
	BufferedWriter bw = new BufferedWriter(new FileWriter(realPath));
	bw.write("아이디 : " +id);bw.newLine();
	bw.write("비번 : " +pw);bw.newLine();
	bw.write("이름 : " +name);bw.newLine();
	bw.flush();
	if(bw!=null){
		bw.close();
	}
	
%>
<h2>가입되었습니다.</h2>
<h3>가입내용</h3>
<br>
가입 아이디 : <%=id %> <br>
가입 비밀번호 : <%=pw %><br>
가입 성명 : <%=name %><br>
<form method="post">
	<input type="button" value="탈퇴" onclick="fn(this.form)">

</form>
<script>
	function fn(f){
		if(confirm('정말 탈퇴하시겠습니까'))
			f.action('/02_JSP/quiz/Quiz05_5');
			f.submit();
	}

</script>

</body>
</html>