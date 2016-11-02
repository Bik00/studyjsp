<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="bikoo" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<h3>Header 정보:</h3>
<bikoo:set var="country" value="${[1, 2, 3]}" />
<bikoo:forEach var="head" items="${country}">
	<p>param: <bikoo:out value="${head}" />
</bikoo:forEach>