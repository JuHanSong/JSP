<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String company = request.getParameter("company");
	String tel = request.getParameter("tel");
	
	String gender = request.getParameter("gender");
	String text = request.getParameter("text");
	String[] hobby = request.getParameterValues("hobby");
	String result = "";
	
	for(String h : hobby){
		result = result + h + " ";
	}
	

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
	<h3>서버에서 받은 값 확인.</h3>
	<hr color = "green">
	
	받은 아이디 : <%= id %><br>
	받은 패스워드 : <%= pw %><br>
	받은 이름 : <%= name %><br>
	받은 전화번호 : <%= company %><br>
	받은 성별 :<%= gender%><br>
	받은 취미 : <%= hobby %><br>
	받은 하고싶은말 : <%=text %><br>
	</body>
</html>