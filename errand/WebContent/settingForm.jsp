<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8");%>

<body>
<h2>선택하세요~</h2>
<form method="post" action="setting.jsp">
	<dl>
		<dd>
			<label for="name">이름</label>
			<input id="name" name="name" type="text" placeholder="미니언!" autofocus required>
		</dd>
		<dd><feldset>
			캐릭터
			<input id="gender" name="gender" type="radio" value="boy">
			<label for="gender"><img src="./boy.png"></label>
			<input id="gender" name="gender" type="radio" value="girl">
			<label for="gender"><img src="./girl.png"></label>
		</feldset></dd>
		


		<dd>
			<br>
			<input type="submit" value="확인">
		</dd>
	</dl>
</form>


</body>