<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String yn = request.getParameter("yn");
	
	if (yn.equals("y")) {
		// forward (request를 그대로 전달한다.)
		request.getRequestDispatcher("Quiz05_success.jsp").forward(request, response);
	} else {
		request.getRequestDispatcher("Quiz05_fail.jsp").forward(request, response);
	}
%>