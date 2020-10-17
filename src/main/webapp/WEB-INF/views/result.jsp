<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Spring MVC Form Handling</title>
</head>
<body>
	<spring:message code="Language" text="default text- Language" />
	<h2>Submitted Student Information</h2>
	<table>
		<tr>
			<td>Name</td>
			<td>${name}</td>
		</tr>
		<tr>
			<td>Age</td>
			<td>${age}</td>
		</tr>
		<tr>
			<td>ID</td>
			<td>${id}</td>
		</tr>
	</table>

	<a href="home">Home</a>
</body>
</html>