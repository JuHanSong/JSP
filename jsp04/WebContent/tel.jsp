<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String tel = request.getParameter("tel");
	// Input Ex(tel): 010 - 1111 - 2222	

	//방법 : 알고리즘
	//010, 011, 019, ~ : 특정한 값(3글자)을 부여하고 
	//나머지 2글자는 램덤하게 생성. 
	// 인증번호 : 3글자+2글자
	
	String pre = tel.substring(0,3);//String의 일부분을 추출 (index 0~2 (010))
	String total = "";
	if(pre.equals("010")){
		total = "111";
	}else if (pre.equals("011")){
		total = "222";
	}else{
		total ="333";
	}
	
	Random r = new Random();
	int post = r.nextInt(90) + 10;//0~89 -> 10 ~99까지 출력(무조건 두자리 출력)

	total = total + post;

%>인증받은 번호는 : <%= total %>