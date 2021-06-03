<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<style>
	.link{
		color:blue;
		font-size : 8px;
		text-decoration : none;
	}
	.link:hover{
		cursor:pointer;
	}

.insert_reply{
	display:none;
}
</style>
<script>
	$(document).ready(function(){
		//클릭하면 아래 insert reply 클래스가 toggle
		//<tr> <td> < a class="link"> </td> </tr> <tr class=insert_reply>
		const links = $('.link');
		$.each(links,function(i,link){
			$(link).click(function(){
				$(this).parent().parent().next().toggleClass('insert_reply');//$(this)==$(link)
	
			})
		})
	})
</script>
</head>
<body>
 <a href="/11_MYBATIS/insertPage.do">새글작성</a>
 <br><br><br>
 <form action="/11_MYBATIS/findList.do" method="post">
 <select name="column">
 	<option value="TITLE">내용</option>
 	<option value="AUTHOR">작성자</option>
 	<option value="BOTH">내용+작성자</option>
 
 </select>
 <input type="text" name="query"><button>검색</button>
 </form>
 전체 게시글 : ${totalRecord}<br>
 <table border="1">
 	<thead>
 		<tr>
 			<td>순번</td>
 			<td>제목</td>
 			<td>작성자</td>
 			<td>최종수정일</td>
 			<td>조회수</td>
 		</tr>
 	</thead>
 	<tbody>
 		<c:if test="${empty list }">
 			<tr>
 			<td colspan ="5">작성글이 없습니다</td>
 			</tr>
 		
 		
 		
 		</c:if>
 		<c:if test="${not empty list }">
 			<c:forEach var="dto" items="${list }" varStatus="k">
 				<tr>
 					<td>${seq-k.index }</td>
 					<td><c:if test="${dto.depth ==1}">
 					&nbsp;&nbsp;[re]
 					</c:if>
 					${dto.title}
 					<c:if test="${dto.depth==0 }">
 					<a class="link">답글</a>
 					</c:if>
 					<a href="/11_MYBATIS/delete.do">삭제</a>
 					
 					</td>
 					
 					<td>${dto.author }</td>
 					<td>${dto.lastmodified }</td>
 					<td>${dto.hit }</td>
 				</tr>
 				<tr class = "insert_reply">
 				<form  action="/11_MYBATIS/insertReply.do" method ="post">
 					<td><input type="text" name="author" placeholder="작성자"></td>
 					<td><input type="text" name="title" placeholder="제목"></td>
 					<td><input type="text" name="content" placeholder="내용"></td>
 					<td><button>작성</button></td>
 					<td><input type="button" value="취소" >
 					</td>
 						<input type="hidden" name="groupno" value="${dto.groupno }">
 					</form>
 				</tr>
 			</c:forEach>
 		</c:if>
 	
 	</tbody>
 	<tfoot>
 		<tr>
 			<td colspan="5">${paging }</td>
 		
 		</tr>
 	</tfoot>
 </table>

</body>
</html>