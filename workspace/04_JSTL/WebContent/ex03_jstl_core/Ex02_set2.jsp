<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${a }+${b }=${a+b }<br> 
	${a }-${b }=${a-b }<br> 
	${a }*${b }=${a*b }<br> 
	${a }/${b }=${a div b }<br> 
	${a }%${b }=${a mod b }<br> 
	${a } &gt; ${b} = ${a-b gt 0} <br> <%-- ${a>b} --%>
	${a } &ge; ${b } = ${a-b ge 0}<br><%-- ${a>=b} --%>
	${a } &lt; ${b} = ${a -b lt 0 }<br> <%--${a<b} --%>
	${a } &le; ${b} = ${a-b le 0 }<br> <%--${a<=b} --%>
	${a } == ${b } = ${a -b eq 0 } <br> <%-- ${a==b} --%>
	${a } != ${b } = ${a-b ne 0 } <br> <%-- ${a!=b} --%>
	${a} == null = ${empty a } <br> <%--null --%>
	a와 b 중 큰값${a - b gt 0?a:b};
	<%-- 문자열이 전달되면 사전 편찬순 비교
		숫자가 전달되면 숫자의 크기비교  
		문자열이 전달되는 경우를 대비해서 크기비교는 아래와 같이한다
		${a>b} => ${a-b>0}
		ab중 큰값 a-b gt 0 ? a: b
		
		
		--%>
</body>
</html>