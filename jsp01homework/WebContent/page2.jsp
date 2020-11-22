<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%/* 해당 부분에다 코드를 java 코드를 입력 합니다. */
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
	<link rel = stylesheet type = text/css href = out.css>
	</head>
	<body>
	해당 페이지는 index.html 의 정보를 받아옵니다. <br>
	JSP 는 자바코드를 작성 할 수있습니다.<br>
	<br><br>
	<hr color = "red">
	
	ID : <%= id %><br> <!-- 위의 request에서 받아온 변수 값을 받아옵니다.  -->
	PW : <%= pw %><br><!-- %=는 값을 화면에 출력합니다.-->
	NAME : <%= name %><br>
	TEL : <%= tel %><br>
	
	<a href = "index.html"> 이전페이지 이동 </a>
	
	</body>
</html>