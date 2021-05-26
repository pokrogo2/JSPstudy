<%@page import="dto.PageVO"%>
<%@page import="dao.BoardDAO"%>
<%@page import="dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		.container {
			width: 650px;
			margin: 100px auto;
		}
		table {
			width: 100%;
			border-collapse: collapse;
		}
		td {
			padding: 5px;
			border-top: 1px solid gray;
			border-bottom: 1px solid gray;
			text-align: center;
		}
		td:nth-of-type(1) { width: 100px; }
		td:nth-of-type(2) { width: 250px; }
		td:nth-of-type(3) { width: 100px; }
		td:nth-of-type(4) { width: 100px; }
		td:nth-of-type(5) { width: 100px; }
	</style>
</head>
<body>

	<div class="container">
		<a href="insertPage.jsp">새 글 작성하기</a><br>
		<a href="/09_MODEL1/index.jsp">인덱스로 가기</a>
		<br><hr><br>
		<%
			// session에 올라간 boardDTO 제거
			if (session.getAttribute("boardDTO") != null) {
				session.removeAttribute("boardDTO");
			}
			
			/* Paging 처리 */
			// 1. PageVO 객체 생성
			PageVO pageVO = new PageVO();
		
			// 2. 전체 레코드의 개수 구하기
			int totalRecord = BoardDAO.getInstance().getTotalRecord();
			pageVO.setTotalRecord(totalRecord);
		
			// 3. 전체 페이지의 개수 구하기
			pageVO.setTotalPage();
			
			// 4. 파라미터 처리
			//    1) page가 안 넘어오면 page = 1로 처리
			//    2) page가 넘어오면 넘어온 page로 처리
			String strPage = request.getParameter("page");
			if (strPage != null) {
				pageVO.setPage(Integer.parseInt(strPage));
			}
		
			List<BoardDTO> list = BoardDAO.getInstance().selectAll();
			pageContext.setAttribute("list", list);
		%>
		<table>
			<thead>
				<tr>
					<td>게시글번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>작성일</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.idx}</td>
						<td><a href="view.jsp?idx=${dto.idx}">${dto.title}</a></td>
						<td>${dto.author}</td>
						<td>${dto.hit}</td>
						<td>${dto.postdate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>