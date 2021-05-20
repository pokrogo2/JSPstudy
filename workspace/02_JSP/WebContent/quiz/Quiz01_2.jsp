<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String site=request.getParameter("site");
	%>
	
	<script>
		location.href='<%=site%>';
	
	
	</script>
	
	<%--플이 2 --%>
	
	
	<%
	
	response.sendRedirect(site); //클라에게 전달 다시이동
	//참고
	// forward는 서버 내부경로로 이동하기 때메 전체url처리 x
	
	//request.getRequestDispatcher(site).forward(request,response);
	
	%>