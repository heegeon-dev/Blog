<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% session.invalidate(); 
		String host= request.getContextPath();%>
		
		<h1>로그아웃 중...</h1>
		
		<%Thread.sleep(2000);
		response.sendRedirect(host+"/home");
	%>
</body>
</html>