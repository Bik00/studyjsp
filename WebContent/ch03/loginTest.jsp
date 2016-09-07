<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8");%>

 <h2>과연... 결과는?!</h2>
 
 <%--입력한 값을 얻어내서 처리 --%>
<% //userid와 password의 값을 얻어냄
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	String str1 = "로그인 성공!";
	String str2  ="아이디와 패스워드를 확인해주세요~";

	//if문을 사용해서 결과를 출력해보자.
%>
<%
	if (userid.equals("jsp") && password.equals("jjsspp")) {//두개의 문자열이 같은가를 비교
	%>
		 <%=str1%>
	<% 
	}else { 
		%>
		<%=str2%>
		<% } %>

