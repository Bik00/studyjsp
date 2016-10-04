<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<title>jQuery 셀렉터와 메소드를 사용한 엘리먼트의 내용 변경</title>
<script src="../js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("#b1").click(function() { //button1 엘리먼트를 클릭하면 자동 실행
			$("#b2").text($("p").text()); //두번째 버튼을 레이블 변경
		});
		
		$("#b2").click(function() { //button2 엘리먼트를 클릭하면 자동 실행
			//이미지 표시
			$("#display").html("<img src='happy.jpg' border='0'/>");
		});
	});
</script>
</head>
<body>

<p>이미지 표시</p>
	<button id="b1">버튼 레이블 변경</button>
	<div id="display"></div>
	<button id="b2">버튼</button>
</body>
</html>