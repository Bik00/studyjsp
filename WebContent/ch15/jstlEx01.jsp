<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="bikoo" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<h3>JSTL core 태그 예제 - set, out, remove</h3>
<p>browser 변수값 설정
<bikoo:set var="browser" value="${header['User-Agent']} }" /> <br>
<bikoo:out value="${browser }" /></p>

<p> browser 변수값 제거 후
<bikoo:remove var="browser" />
<bikoo:out value="${browser}" />