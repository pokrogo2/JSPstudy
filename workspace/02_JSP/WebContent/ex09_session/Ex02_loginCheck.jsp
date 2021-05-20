<%@page import="ex09_session.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id =request.getParameter("id");
	String pw =request.getParameter("pw");
	MemberDTO dto = new MemberDTO();
	dto.setId(id);
	dto.setPw(pw);
	dto.setName("브레드");

	//db를갔다왔다는 가정
	//idpw가 같으면 성공으로 가정
	boolean isMember = id.equals(pw);
	if(isMember){
		session.setAttribute("loginDTO",dto);
	}
	//로그인 화면으로 돌아가기
	response.sendRedirect("/02_JSP/ex09_session/Ex02_login.jsp");
%>