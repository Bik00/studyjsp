<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>

<body>
<%
	int age = Integer.parseInt(request.getParameter("age"));
	String name = request.getParameter("name");
	if(age<20) {
%>

<script type = "text/javascript">
	alert("20세 미만은 입장 불가");
	history.go(-1);
</script>

<% } else {
	request.setAttribute("name", name);
	RequestDispatcher dispatcher = request.getRequestDispatcher("forwardResult.jsp");
	dispatcher.forward(request,response);
	}
%>


</body>