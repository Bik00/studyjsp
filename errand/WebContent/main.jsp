<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8");%>

<form method="post" action="scene1.jsp">

<h3><%=session.getAttribute("name")%>!<br><br>
오늘은 어머니 심부름 좀 해주겠니?<br><br>
몇가지 장을 봐야 하니<br><br>
잘 기억해
</h3>
<input type="submit" value="다음">
</form>
<% if(session.getAttribute("gender").equals("boy")) { %>
<img src="./boy.png">
<% } else {%>
<img src="./girl.png">
<%}%>