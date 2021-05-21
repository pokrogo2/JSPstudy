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
		const btn1=$('#btn1');
		btn1.on('click',function(){
			location.href='/06_MVC/date.do';
		})
		const btn2=$('#btn2');
		btn2.on('click',function(){
			location.href='/06_MVC/time.do';
		})
	})
</script>

</head>
<body>

<input type="button" value= "현재날짜를 알려다오" id="btn1"><br>
<input type="button" value= "현재시간을 알려다오" id="btn2">

</body>
</html>