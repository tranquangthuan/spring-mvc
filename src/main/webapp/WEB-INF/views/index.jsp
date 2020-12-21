<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<body>

	<h2>Hello World! ${message}</h2>
	<a href="?lang=en">English</a>|
	<a href="?lang=vi">Viet Nam</a>|

	<spring:message code="Language" text="default text- Language" />
	<ul>
		<li><a href="student">Student</a></li>
		<li><a href="student-list">Student List</a></li>
		<li><a href="redirect">Redirect</a></li>
		<li><a href="redirectFinal">Redirect Final Pages</a></li>
		<li><a href="redirectFinal2">Redirect Final 2 by method</a></li>
		<li><a href="studentAnnotation">Student Annotation VI</a></li>
		<li><a href="employees/all">List Employees</a></li>
		<li><a href="customer/list">Customer all</a></li>
		<li><a href="customer/showForm">Customer Show form</a></li>
	</ul>
</body>
</html>
