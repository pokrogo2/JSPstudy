<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:include page="../layout/header.jsp">
	<jsp:param value="회원가입" name="title" />
</jsp:include>

<link rel="stylesheet" href="../assets/css/layout.css">
<style>
	.login_form {
		width: 300px;
		margin: 0 auto;
	}
	#f input:not([type=button]) {
		padding: 5px;
		width: 100%;
		height: 50px;
	}
	#f button {
		width: 100%;
		height: 50px;
		line-height: 50px;
		background-color: orange;
		border: none;
		font-size: 18px;
	}
	#f button:hover {
		cursor: pointer;
	}
	.message {
		font-size: 12px;
		color: crimson;
	}
	.title {
		font-weight: 700;
		font-size: 14px;
	}
</style>
<script>
	$(document).ready(function(){
		
		const id = $('#id');
		const id_message = $('#id_message');
		function idCheck() {
			let result = false;
			if (id.val() == '') {
				id_message.text('아이디는 필수입니다.');
			} else {
				id_message.text('아이디 통과.');
				result = true;
			}
			return result;
		}
		id.blur(function(){
			idCheck();
		})
		
		const pw = $('#pw');
		const pw_message = $('#pw_message');
		function pwCheck(){
			let result = false;
			if (pw.val() == '') {
				pw_message.text('비밀번호는 필수입니다.');
			} else {
				pw_message.text('비밀번호 통과.');
				result = true;
			}
			return result;
		}
		pw.blur(function(){
			pwCheck();
		})
		
		const pw2 = $('#pw2');
		const pw2_message = $('#pw2_message');
		function pw2Check() {
			let result = false;
			if (pw2.val() == '') {
				pw2_message.text('비밀번호 확인은 필수입니다.');
			} else if (pw.val() != pw2.val()) {
				pw2_message.text('비밀번호를 확인하세요.');
			} else {
				pw2_message.text('비밀번호 확인 통과.');
				result = true;
			}
			return result;
		}
		pw2.blur(function(){
			pw2Check();
		})
		
		const email = $('#email');
		const email_message = $('#email_message');
		function emailCheck(){
			let result = false;
			if (email.val() == '') {
				email_message.text('이메일은 필수입니다.');
			} else {
				email_message.text('이메일 통과.');
				result = true;
			}
			return result;
		}
		email.blur(function(){
			emailCheck();
		})
		
		const f = $('#f');
		f.submit(function(event){
			if ( !idCheck() || !pwCheck() || !pw2Check() || !emailCheck() ) {
				alert('회원가입 정보를 확인하세요.');
				event.preventDefault();
				return false;
			}
		})
		
	})
    </script>
<div class ="login_form">
    <form method="post" action="join.m" id="f">
    	<span class ="title">아이디</span>
    	<input type="text" name="id" id="id" placeholder="ID"><br>
    	<span id ="id_message"class ="message" ></span><br>
    	<input type="button" value="중복확인" id="id_btn">
    	
    	<span class ="title">비밀번호</span>
    	<input type="password" name="pw" id="pw" placeholder="Password">
    	<span id ="pw_message"class ="message" ></span><br>
    	
    	
    	<span class ="title">비밀번호 확인</span>
    	<input type="password" id="pw2" placeholder="Password">
    	<span id ="pw2_message"class ="message" ></span><br>
    	
    	<span class ="title">이름</span>
    	<input type="text" name="name" id="name" placeholder="Name">
    	<span id ="name_message"class ="message" ></span><br>
    	
    	<span class ="title">이메일</span>
    	<input type="text" name="email" id="email" placeholder="E-mail@example.com">
    	<span id ="email_message"class ="message" ></span><br>
    	
    	
    	<button>회원가입</button>
    </form></div>
<%@ include file="../layout/footer.jsp"%>