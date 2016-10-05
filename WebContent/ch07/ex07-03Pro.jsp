<%@ page language="java" contentType="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8"); %>

<%
	String resultStr = "쳐리 결과 :<br>";
	String who = request.getParameter("name");
	if (who.equals("김개동")) {
		resultStr += "관리자님 어서오세요";
	}
	else {
		resultStr += "회원님 어서오세요";
	}
	out.println(resultStr);
%>