<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<body>
	<h2>Hello World! Final</h2>
	<spring:message code="Language" text="default text- Language" />
	<ul>
		<li><a href="student">Student</a></li>
		<li><a href="redirect">Redirect</a></li>
		<li><a href="redirectFinal">Redirect Final Pages</a></li>
		<li><a href="redirectFinal2">Redirect Final 2 by method</a></li>
	</ul>
</body>
</html>
