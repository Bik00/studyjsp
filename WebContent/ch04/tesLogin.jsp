
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8");%>

<%@ page import = "java.net.URLEncoder" %>

<%

String id= request.getParameter("id");
String password = request.getParameter("password");
String a = "bikoo";
String b = "1234";


if(id.equals(a) && password.equals(b)) {

		 response.sendRedirect("main.jsp?id="+URLEncoder.encode(id, "UTF-8"));
}
else
{
	response.sendRedirect("loginForm.jsp");
}

%>
