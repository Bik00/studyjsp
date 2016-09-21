<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device=width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	if((id.equals("normalUser")&&pass.equals("1234"))||(id.equals("hardWorker")&&pass.equals("abcd"))) {
		session.setAttribute("id",id);
		response.sendRedirect("settingForm.jsp");
	}
	else
	response.sendRedirect("loginForm.jsp");
%>