<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그아웃은 세션 정보삭제하면됨
	session.invalidate();
//삭제후 로그인페이지로 이동하며끝
	response.sendRedirect("/02_JSP/ex09_session/Ex02_login.jsp");

%>