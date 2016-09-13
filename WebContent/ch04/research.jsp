<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8");%>

<% 
String name= request.getParameter("name");
String gender = request.getParameter("gender");


if (gender.equals("male")) {
	gender = "남자";
	}
	else {
	gender = "여자";
	}

%>

<h2>설문조사 결과</h2>
이름 : <%=name%><br>
성별 : <%=gender %><br>
<%
String seasonArr[]= request.getParameterValues("season");
String seasonName[]= {"봄", "여름", "가을", "겨울"};

if (seasonArr ==null) {
	out.println("선택한 계절이 없습니다.");
}
else {
	out.println("당신이 선택한 계절은 ");
	for(String s:seasonArr)
	{
		out.println(seasonName[Integer.parseInt(s)]+" ");
	}
	out.println("입니다.");
	}
%>