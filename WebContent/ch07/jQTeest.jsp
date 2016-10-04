<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<title>jQuery 테스트 페이지</title>
<style type="text/css">
	div#displayArea{
		width : 200px;
		height : 200px;
		border : 5px double #6699FF;
	}
	img {
	width : 200px;
	height : 200px;
	}
</style>
<script src="../js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("button").click(function() {
			$("#displayArea").html("<img src='balloon.jpg' border='0'/>");
		});
	});
</script>
</head>
<body>
	<div id="displayArea">이 곳의 내용이 변경</div>
	<button>표시</button>
</body>
</html>