<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("name", "브레드");
	request.setAttribute("age", 50);
	//request를 그대로 전달하는 forward
	request.getRequestDispatcher("/ex06/Ex02_request2.jsp").forward(request,response);//경로
%>