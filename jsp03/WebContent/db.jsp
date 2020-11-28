<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //id가 전달될 예정.
   	String id = request.getParameter("id");
    String[] list = {"hong", "apple", "banana"};
	
    String result = "사용 가능한 id 입니다.";
    
    for(String x : list){
    	if(x.equals(id)){
    		result = "중복이 되어, 가입불가능한 id입니다.";
    		break;
    	}
    }
    
    %>
아이디 중복 체크 결과 : <%= result %>