<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>session 예제</h2>
<HR>
<%
//isNew() 메서드를 이용해 최초세션설정을 확인하고 있따.
	if(session.isNew()){
		out.println("<script> alert('세션이 해제되어 다시설정합니다.')</script>");
		session.setAttribute("login","김영근");
		}
%>
# <%= session.getAttribute("login") %> 님 환영 합니다.!!!!<br>
1. 세션 ID : <%= session.getId() %><br>
2. 세션 유지시간 : <%= session.getMaxInactiveInterval() %><br>

</div>
</body>
</html>