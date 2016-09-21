<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>

	<form method="post" action="scene2.jsp">

		<dl>
			<dd><feldset>
				<legend><h3>다음 둘 중에서 마음에 드는 것으로 하나만 선택해서 사야해!</h3><br></legend>		
				<input id="product1" name="product1" type="radio" value="dubu" checked>
				<label for="product1">두부</label>
				<input id="product1" name="product1" type="radio" value="soondubu">
				<label for="product1">순두부</label>
			</feldset></dd>
		</dl>
		<dl>
			<dd>
				<input type="submit" value="다음">
			</dd>
		</dl>
	</form>
	<% if(session.getAttribute("gender").equals("boy")) { %>
<img src="./boy.png">
<% } else {%>
<img src="./girl.png">
<%}%>
