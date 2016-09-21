<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>


<%
String product2= request.getParameter("product2");

session.setAttribute("product2", product2);
	
%>


	<form method="post" action="scene4.jsp">
		<dl>
			<dd><feldset>
				<legend><h3>다음 둘 중에서 마음에 드는 것으로 하나만 선택해서 사야해!</h3><br></legend>		
				<input id="product3" name="product3" type="checkbox" value="0">
				<label for="product3">돼지고기</label>
				<input id="product3" name="product3" type="checkbox" value="1">
				<label for="product3">닭고기</label>
				<input id="product3" name="product3" type="checkbox" value="2">
				<label for="product3">소고기</label>
				<input id="product3" name="product3" type="checkbox" value="3">
				<label for="product3">오리고기</label>
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
