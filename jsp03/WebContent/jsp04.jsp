<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function test() { //함수를 만들다 (함수를 정의/기능을 정의)
		console.log
		//id태스에 입력한 값을 가지고 온다.
		id = document.getElementById("id").value
		console.log("당신이 입력한 id는 " + id)
		idCount = id.length
		console.log("당신이 입력한 글자수는 " + idCount)
	}// 테스트 메서드 호출 버튼 1개당 메서드 1개를 사용.
	//	test() //함수를 사용(함수를 호출)
	function login() {
		//id - $("id").val : jquery
		id = document.getElementById("id").value
		pw = document.getElementById("pw").value
		
		if (id == "root" && pw == "1234") {
			//alert("로그인 Ok")
			location.href = "http://www.naver.com" // location 객체를 이용하면 주소를 입력해서 이동이 가능.
		} else {
			alert("로그인 Not!!!")
		}
	}
	function minus() {
			n1 = document.getElementById("n1").value
			n2 = document.getElementById("n2").value
			
			n11 = parseInt(n1)// 숫자 연산시는 String -> int로 변환해야 합니다.
			n22 = parseInt(n2)
			
			alert(n11 - n22)
	}
</script>
</head>
<body>
아이디 입력 : <input type = "text" id = "id"><br>
패스워드 입력 : <input type = "text" id = "pw"><br>
<button onclick="test()">글자수를 체크해보자!</button><br> <!-- 입력은 스트링  -->
<button onclick="login()">로그인 처리!</button><br>
<hr color="red">
숫자1 : <input type = "text" id = "n1"><br>
숫자2 : <input type = "text" id = "n2"><br>
<button onclick="minus()">빼보자!</button><br>
</body>
</html>