<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- jsp 4개의 영역 
    		1.데이터를 저장할 수있는 내장 객체 4개를 의미
    		2. 각 내장 객체는 데이터를 유지하는 생명주기가 다르다.
    		3.속성 데이터 저장
    		4. 종류
    			1)pageContext
    				-1 해당페이지에서 사용
    				-2 해당페이지 벗어나면 소멸
    			2)request
    				-1요청발생시 사용
    				-2응답후 소멸
    			3)session 
    				-1 웹브라우저에서 사용
    				-2닫으면 소멸
    			4)application
    				-1웹어플에서 사용
    				-2닫으면 소멸
    			5)데이터 저장 메소드
    				-1내장객체.setAttribute("속성명",데이터);
    				-2저장되는 모든 데이터의 타입이 object다.
    			6)데이터 반환 메소드
    				-1내장객체.getAttribute("속성명");
    				-2getAttribute()로 읽어 들인 속성은 캐스팅을 해야함
    			7)4개의 영역 데이터는 EL로사용		
    --%>
    <%
    //	pageContext에 데이터 저장하기
    
    
    	pageContext.setAttribute("name", "브레드");
    	pageContext.setAttribute("age", "50");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		이름 : <%=pageContext.getAttribute("name") %>	</h3>
		<h3>나이 : <%=pageContext.getAttribute("age") %>	</h3>
	
	<%
		//캐스팅
		String name = (String)pageContext.getAttribute("name");
		int age= (int)pageContext.getAttribute("age");%>
	<h3>이름의 길이 : <%=name.length() %></h3>
	<h3>내년 나이  : <%=age+1%></h3>
</body>
</html>