<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8");%>

<%
String name= request.getParameter("name");
String gender = request.getParameter("gender");

session.setAttribute("name", name);
session.setAttribute("gender", gender);

response.sendRedirect("main.jsp");
	
%>