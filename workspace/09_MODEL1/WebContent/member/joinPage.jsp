<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
	const f =$('#f');
	f.on('submit',function(event){
		const id= $('#id');
		const pw= $('#pw');
		const pw2= $('#pw2');
		const name= $('#name');
		const email= $('#email');
		if(id.val()=='' || pw.val()=='' ||email.val() == ''){
			alert('필수정보를 입력 하세요.');
			event.preventDefault();
			return false;
		}else kf(pw.val() != pw2.val()){
			alert('비밀번호 입력 확인');
			event.preventDefault();
			return false;
		}
	
	})
	})

</script>
</head>
	<style>
		.container{
			width:500px;
			margin : 0  auto;
			
		
		}
</style>
<body>
	<div class="container">
		<header>
			<h1>가입하기</h1>
		</header>
		<section>
			<form id="f" method="post">
				<label for="id">아이디</label><br>
				<input type="text" name="id" id="id">
				<input type="button" value="중복체크" id="check_btn"?><br>
				<label for="pw">비밀번호</label><br>
				<input type="password" name="pw" id="pw"><br>
				<label for="pw2">비밀번호확인</label><br>
				<input type="password" name="pw2" id="pw2"><br>
				<label for="email">이메일</label><br>
				<input type="email" name="email" id="email"><br><br>
				<button>가입하기</button>
				<input type="reset" value="입력초기화">
				<input type="button" value="가입취소하기" id ="cancel_btn">
			
			</form>
		
			
		
		</section>
	
	</div>
</body>
</html>