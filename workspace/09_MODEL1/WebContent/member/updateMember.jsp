<%@page import="dao.MemberDAO"%>
<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name =request.getParameter("name");
	String email =request.getParameter("email");


	MemberDTO dto = new MemberDTO();
	dto.setName(name);
	dto.setEmail(email);
	dto.setNo(((MemberDTO)session.getAttribute("loginDTO")).getNo());

	int result = MemberDAO.getInstance().updateMember(dto);
	if(result>0){
		MemberDTO loginDTO = (MemberDTO)session.getAttribute("loginDTO");
		loginDTO.setName(name);
		loginDTO.setEmail(email);
		
		out.println("<script>");
		out.println("alert('회원정보가 수정되었습니다.')");
		out.println("location.href='myPage.jsp'");
		out.println("</script>");
		
		
	}else{
		out.println("<script>");
		out.println("alert('회원정보가 수정되지않았습니다.')");
		out.println("location.href='myPage.jsp'");
		out.println("</script>");
	}


%>