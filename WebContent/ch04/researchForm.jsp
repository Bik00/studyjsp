<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device=width,initial-scale=1.0"/>

<h2>설문 조사</h2>
<form method="post" action="research.jsp">
	<dl>
		<dd>
			<label for="name">이름:</label>
			<input id="name" name="name" type="text" autofocus required>
		</dd>
		<dd><feldset>
			성별:
			<input id="gender" name="gender" type="radio" value="male" checked>
			<label for="gender">남자</label>
			<input id="gender" name="gender" type="radio" value="female">
			<label for="gender">여자</label>
		</feldset></dd>
		
		<dd>
			<label for="season">좋아하는 계절<br></label>
			<input id="season" name="season" type="checkbox" value="0">봄
			<input id="season" name="season" type="checkbox" value="1">여름
			<input id="season" name="season" type="checkbox" value="2">가을
			<input id="season" name="season" type="checkbox" value="3">겨울<br>
		</dd>

		<dd>
			<input type="submit" value="전송">
		</dd>
	</dl>
</form>