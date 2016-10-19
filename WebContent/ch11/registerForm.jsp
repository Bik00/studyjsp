<%@ page language="java" contentType="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<!-- <link rel = "stylesheet" href="../css/style.css"/> -->
<script src="../js/jquery-3.1.1.min.js"></script>
<script src="register.js"></script>

<div id="regForm" class="box">
	<ul>
		<li><label for="id">아이디</label>
			<input id="id" name="id" type="email" size="20" maxlength="50" placeholder="example@kings.com" autofocus>
			<button id="checkId">ID중복확인</button>
		</li>
		<li><label for="passwd">비밀번호</label>
			<input id="passwd" name="passwd" type="password" size="20" maxlength="16" placeholder="6~16자 숫자/문자">
		</li>
		<li><label for="repass">비밀번호 재입력</label>
			<input id="repass" name="repass" type="password" size="20" maxlength="16" placeholder="6~16자 숫자/문자 재입력">
		</li>
		<li><label for="name">이름</label>
			<input id="name" name="name" type="text" size="20" maxlength="10" placeholder="홍길동">
		</li>
		<li><label for="address">주소</label>
			<input id="address" name="address" type="text" size="30" maxlength="50" placeholder="주소 입력">
		</li>
		<li><label for="tel">전화번호</label>
			<input id="tel" name="tel" type="tel" size="20" maxlength="20" placeholder="전화번호 입력">
		</li>
		<li class="label2"><button id="process">가입하기</button>
			<button id="cancel">취소</button>
		</li>
	</ul>
</div>