<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


	request.setCharacterEncoding("utf-8");
	String filename=request.getParameter("filname");
	String realPath = request.getServletContext().getRealPath("quiz/"+filename);
	
	
	File file = new File(realPath);
	if(file.exists()){
		file.delete();
	}
%>