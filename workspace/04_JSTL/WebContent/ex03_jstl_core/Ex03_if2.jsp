<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 

	if문
	1.<c:if test="조건식></c:if>
	else개념 x
	
	파라미터로 전다로디는 a b중 큰숫자출력
 --%>
 	${param.a - param.b gt 0  } <br>
 	<c:if test="${param.a- param.b gt 0 }">
 		<c:set var="max" value="${param.a }"></c:set>
 		
 	
 	
 	</c:if> 
 	<c:if test="${param.a - param.b lt 0  }">
 		<c:set var ="max" value="${param.b }"></c:set>
 	</c:if>
<%-- a 와 b중 10과 가까운 수를출력 --%>
<c:if test="${param.a -10  gt 0   }">
	<c:set var ="diff1" value="${param.a-10 }"/> 

</c:if>
<c:if test="${param.a -10  lt 0   }">
	<c:set var ="diff1" value="${10-param.a}"/> 

</c:if>

<c:if test="${param.b -10  gt 0   }">
	<c:set var ="diff2" value="${param.b-10}"/> 

</c:if>
<c:if test="${param.b -10  lt 0   }">
	<c:set var ="diff2" value="${10-param.b}"/> 

</c:if>
<c:if test="${diff1 - diff2 gt 0  }">
	<h3>10과 가까운 값은 ${param.b }</h3>

</c:if>
<c:if test="${diff1 - diff2 lt 0  }">
	<h3>10과 가까운 값은 ${param.a }</h3>

</c:if>
<c:if test="${diff1 eq diff2 }">
	<h3>${param.a}와${param.b }가 같다</h3>

</c:if>

</body>

</html>