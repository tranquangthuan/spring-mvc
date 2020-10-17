<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Enrollment Detail Confirmation</title>
<link href="<c:url value='/style/css/custom.css' />" rel="stylesheet"></link>
</head>
<body>
	<spring:message code="Language" text="default text- Language" />
	<div class="success">
		Confirmation message : ${success} <br> We have also sent you a
		confirmation mail to your email address : ${student.email}.
	</div>
</body>
</html>