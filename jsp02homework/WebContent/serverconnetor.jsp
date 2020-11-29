<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String tel = request.getParameter("tel");
	String hobby = request.getParameter("hobby");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	out.print("1.커넥터 설정성공<br>");
	
	String url = "jdbc:mysql://localhost:3366/test";
	String user = "root";
	String password = "12341234";

 	Connection con = DriverManager.getConnection(url, user, password);
 	out.print("2. DB서버와 연결에 성공 <br>");
 	
 	String sql = "insert into information values(?,?,?,?,?,?)";
 	PreparedStatement ps = con.prepareStatement(sql);
 	ps.setString(1, id);
 	ps.setString(2, pw);
 	ps.setString(3, name);
 	ps.setString(4, gender);
 	ps.setString(5, tel);
 	ps.setString(6, hobby);
 	out.print("3 sql문 만들기 성공<br>");
 	
 	ps.executeUpdate();
 	out.print("4. sql문 전송성공<br>");
%>