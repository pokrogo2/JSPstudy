<%@page import="dao.MemberDAO"%>
<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//탈퇴할 회원번호
	long no = ((MemberDTO)session.getAttribute("loginDTO")).getNo();
	

	int result = MemberDAO.getInstance().deleteMember(no);
	
	if(result>0){
		session.invalidate();

		out.println("<script>");
		out.println("alert('탈퇴되었습니다. 이용해주셔서 감사합니다.')");
		out.println("location.href='/09_MODEL1/index.jsp'");
		out.println("</script>");
	}else{
		out.println("<script>");
		out.println("alert('탈퇴 취소')");
		out.println("history.back()");
		out.println("</script>");
	
	}






%>