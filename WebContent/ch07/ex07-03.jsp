<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<title>학습평가 ch07 - 3번 문제</title>
<style>
	#result {
		width : 200px;
		height : 200px;
		border : 5px double #6699FF;
	}
</style>
<script src="../js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("#b1").click(function() { //[결과] 버튼을 클릭하면자동 실행
			//요청 페이지에 전송할 데이터
			var query = {name: $("#who").val()};
			//process.jsp 페이지에 요청 데이터를 보낸 후 결과를 반환 받음
			$.ajax ({
				type : "POST", //전송방식
				url : "ex07-03Pro.jsp", //요청페이지
				data : query, //전송 데이터
				success : function(data) { //요청 페이지를 실행한 결과
					$("#result").html(data);
				}
			});
		});
	});

</script>
</head>
<body>
	<input type="text" id="who" name = "who" placeholder="김개동은 관리자~" required>
	<button id="b1">처리</button>
	<div id="result"></div>
</body>
</html>