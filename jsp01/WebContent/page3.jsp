<%@page import="java.net.http.HttpRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--
    1. 클라이언트가 입력한 id/ pw 를 받아주어야함.
    2. 로그인 조건문 처리
    3. 로그인 결과를 클라인언트에게 알려주어야함.  
     -->
    <%
   /* 자바코드 들어가는 부분 */
   // HttpRequest request - new HttpRequest();
 	String id = request.getParameter("id");
 	String pw = request.getParameter("pw");
	
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
	
	
</body>
</html>