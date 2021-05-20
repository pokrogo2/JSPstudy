<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	jsp액션태그
	1.jsp에서 기본으로 사용
	2.태그명에 jsp가 prefix값으로 사용
--%>

<jsp:forward page="Ex02_3.jsp"><jsp:param value="50" name="age"/></jsp:forward>
