<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device=width,initial-scale=1.0"/>

<h2>로그인을 해봅시다!</h2>
<form method="post" action="loginTest.jsp">
	<dl>
		<dd>
			<label for="userid">이름</label>
			<input id="userid" name="userid" type="text"
				placeholder="아이디는 jsp로~" autofocus required>
		</dd>
		<dd>
			<label for="password">비밀번호</label>
			<input id="password" name="password" type="text">
		</dd>
		<dd>
			<input type="submit" value="확인">
		</dd>
	</dl>
</form>