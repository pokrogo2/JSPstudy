<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container{
		margin : 300px auto;
		width :300px;
		
	}
	.blind{
	display:none;}
</style>
</head>
<body>
	<%String id = null;
	Cookie[] cookies = request.getCookies();
	if(cookies!=null &&cookies.length!=0){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("id")){
				id=cookie.getValue();break;
				}
			}
	}%>
	<div class="container">
		<form action="/02_JSP/ex08_cookie/Ex06_idCheck.jsp" method="post">
			<label for="id" class ="blind">아이디</label>
			<input type="text" name="id" id="id" placeholder="아이디"><br>
			<label for="pw" class="blind">비밀번호</label>
			<input type="password" name="pw" id="pw"placeholder ="****"><br>
			<button>로그인</button>
			<input type="checkbox"name="chk"id="chk">
			<label for="chk">아이디 기억하기</label>
		</form>
	
	</div>
	<script>
		$(document).ready(function(){
			if('<%=id%>'!=null){
				$('#id').val('<%=id%>');
				$('#chk').attr('checked',true);
			}
		})
	</script>
</body>
</html>