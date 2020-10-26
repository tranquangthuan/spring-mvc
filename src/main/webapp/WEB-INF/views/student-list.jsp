<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<body>

	<spring:message code="Language" text="default text- Language" />
	<form method="GET" action="search">
		<input type="text" name="searchText" /> &nbsp; <input type="submit"
			value="Search" />
	</form>
</body>
</html>
