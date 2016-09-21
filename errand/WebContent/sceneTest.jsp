<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8");%>

<%

String QA1= request.getParameter("QA1");
session.setAttribute("QA1", QA1);

String QA2= request.getParameter("QA2");
session.setAttribute("QA2", QA2);

String QA3[]= request.getParameterValues("QA3");
session.setAttribute("QA3", QA3);



if(session.getAttribute("product").equals(session.getAttribute("QA1")) {
	session.setAttribute("id",id);
}

response.sendRedirect("sessionTestForm.jsp");
%>