<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="bikoo" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<h3>JSTL core 태그예제 - if, choose, when, otherwise</h3>
<bikoo:set var="country" value="${'Korea'}" />
<bikoo:if test="${country != null}">
국가명: <bikoo:out value="${country}" />
	<br>
</bikoo:if>

<bikoo:choose>
	<bikoo:when test="${country == 'Korea'}">
		<p>
			<bikoo:out value="${country}"/>
			의 겨울은 춥다.
	</bikoo:when>
	<bikoo:when test="${country=='Canada'}">
		<p>
			<bikoo:out value="${country}"/>
			의 겨울은 너무 춥다.

	</bikoo:when>
	<bikoo:otherwise>
		<p>그외의 나라들의 겨울은 알 수 없다.
	</bikoo:otherwise>
</bikoo:choose>