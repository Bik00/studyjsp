<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="bikoo" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<h3>Header 정보:</h3>
<bikoo:set var="data" value="${['가', '나', '다', '라', '마', '바', '사']}" />
<bikoo:forEach var="i" items="${data}" begin="3" end="5">
	<p>param: <bikoo:out value="${i}" />
</bikoo:forEach>