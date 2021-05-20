<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--html주석 :소스보기에서 보임 -->
    <%--jsp주석 :소스보기에서안보임--%>
    <%--java server page
    	html문서 내부에서 자바코드사용가능
    	서블릿 기반의 언어
    	모든 jsp페이지는 서블릿으로 변환후 실행
    	abc.jsp-> abc_jsp.java ->abc_jsp.class ->run
    	jsp			servlet 	--%>
    	
    	
    	<%-- jsp의 스크립트 요소
    		1. <%@ 지시어 %>: directive
    		page 지시어, include지시어 , taglib지시어
    		2.<%!선언부%> :선언부(declaration)
    		전역변수 선언, 메소드 정의
    		3.<%=표현식 %> :표현식(expression)
    		결과값출력
    		4.<%스크립트릿%>:scriptlet
    		java코드
    	 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%//여기는 자바영역 %>
	<%
		int a= 10;%>
	<%if (a>0){ %>
	<h3><%=a %>는 양수입니다.</h3>
	<%}else{ %>
	<h3><%=a %>는 음수입니다</h3>
	<%} %>
	<% for(int i=0;i<9;i++){ %>
		<%=i %>
	<%} %>
	
	
	
	<%! public int getTotal(int n){
		int total =0;
		for(int i=1;i<n;i++){
		total+=i;
		}
		return total;
		}%>
		<h3>결과 : <%=getTotal(10) %></h3>
		<%!
			int square=1; //전역변수
		public void power(int n){
				for(int i=1;i<=n;i++){
					
					square *=i;
				}
			}
		%>
		<%power(5); %>
		<h3>결과 : <%=square %></h3>
	
</body>
</html>