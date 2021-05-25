<%@page import="dao.MemberDAO"%>
<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String pw = request.getParameter("pw");
	MemberDTO dto = new MemberDTO();
	dto.setPw(pw);
	dto.setNo(((MemberDTO)session.getAttribute("loginDTO")).getNo());
	
	int result = MemberDAO.getInstance().updatePw(dto);
	
	if(result>0){
		//성공했을때
		MemberDTO loginDTO = (MemberDTO)session.getAttribute("loginDTO");
		loginDTO.setPw(pw);
		out.println("<script>");
		out.println("alert('비밀번호가 수정되었습니다.')");
		out.println("location.href='myPage.jsp'");
		out.println("</script>");
		
	}else{
		out.println("<script>");
		out.println("alert('비밀번호가 수정되지않았습니다.')");
		out.println("history.back()");
		out.println("</script>");
	}
%>