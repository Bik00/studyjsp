<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
</head>
<body>
<%
	String age=request.getParameter("age");
	String name = (String)request.getAttribute("name");

%>

forward 방식으로 이동된 페이지 <br>
나이 : <%=age %> <br>
이름 : <%=name %>

</body>
</html>