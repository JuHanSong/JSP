<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String id = request.getParameter("id");
 	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
    %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href ="out.css">
</head>
<body>
	로그인 처리 결과 <br>
	<hr color="red">
	받은 id : <%= id %><br><!-- 변수값 프린트 -->
	받은 pw : <%= pw %><br>
	받은 name : <%= name %><br>
	받은 tel : <%= tel %><br>
	
	
	
</body>
</html>