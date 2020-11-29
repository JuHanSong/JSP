<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String money = request.getParameter("money");
	String choice = request.getParameter("choice");
	int price = Integer.parseInt(money);
	//choice 1:계좌이체 2. 신용카드 3. 휴대폰결제
	//계좌이체 10% 세일 / 신용카드 10프로 더 받음/ 휴대폰 원래
	double result = 0;
	if(choice.equals("1")){
		result = price * 0.9;
	}else if (choice.equals("2")){
		result = price * 1.1;
	}else{
		result = price;
	}
	int result2 = (int)result;
%>당신의 결제 금액 : <%=result2%> 원