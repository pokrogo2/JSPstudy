<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	request.setCharacterEncoding("utf-8");
	


%><jsp:include page ="../layout/header.jsp">
	<jsp:param value ="게시판" name="title"/>

</jsp:include>

<div class = "insert_form">
	<form method ="post" enctype="multipart/form-data">
		<p class = "title">작성자</p>
		<input  type="text" name="author" value="${loginDTO.id }" id="author" readonly><br>
		<p class="title">제목</p>
		<input type="text" id="title" name= "title" autofocus><br>
		<p class="title">첨부</p>
		<input type="file" id="filename" name ="filename">
		<p class ="content">내용</p>
		<textarea id="content" name="content"></textarea><br>
		
		
		<input type="button" value="저장하기" id="insert_btn">
		<input type="reset" value="작성초기화" id="reset_btn">
		<input type="button" value="목록보기" id="list_btn">
	</form>
	
</div>

<%@include file ="../layout/footer.jsp"%>