<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//클라이언트가 입력한 데이터를 받는 객체 : request
//이미 만들어놓은 객체는 : 내장된 객체.
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String tel = request.getParameter("tel");


//자바와 mySQL을 연결.
//JAVA DB Connectivity(JDBC프로그램밍)

//1. connector (driver)설정.
Class.forName("com.mysql.jdbc.Driver"); // 커넥터 라이브러리가 있는 경로를 설정. 
out.print("1. 커넥터 설정 성공<br>");

//2. mySQL서버를 연결.
String url = "jdbc:mysql://localhost:3366/shop"; // Java - DB를 mysql를 이용하여 localhost shop DB에 연결. 
String user ="root"; // DB 이름은 어디로
String password = "12341234"; // DB 비밀번호.

Connection con = DriverManager.getConnection(url, user, password); // Connettion 은 Java.sql로 설정.
out.print("2. DB연결 성공.<br>");

//3. sql문 만든다.()
String sql = "insert into member value(?,?,?,?)"; // sql 변수에 sql 명령어를 입력.

PreparedStatement ps = con.prepareStatement(sql); //java.sql.PreparedStatement 로 설정.
ps.setString(1, id);// ? 1번째에 id를 String 로 집어넣음.
ps.setString(2, pw);// ? 2번째에 id를 String 로 집어넣음.
ps.setString(3, name);// ? 3번째에 id를 String 로 집어넣음.
ps.setString(4, tel);// ? 4번째에 id를 String 로 집어넣음.
out.print("3. sql문 만들기 성공<br>");

//4. mysql서버에 sql문을 전송한다. 
ps.executeUpdate();
out.print("4. sql문 전송성공<br>");
%>

<!-- h1 : header제목용 태그, 1~6까지 있음. 1이 제일큼 -->
<h1>회원가입 완료.</h1>
<a href="회원.html">회원가입 페이지로</a>
