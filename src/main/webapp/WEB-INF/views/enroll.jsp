<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Enrollment Form</title>
<link href="<c:url value='/style/css/bootstrap.css' />" rel="stylesheet"></link>
<link href="<c:url value='/style/css/custom.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="form-container">
		<h1>Enrollment Form</h1>
		<form:form method="POST" modelAttribute="studentAnnotation"
			class="form-horizontal">
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="firstName"><spring:message
							code="FirstName" text="default text- FirstName" /></label>
					<div class="col-md-7">
						<form:input type="text" path="firstName" id="firstName"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="firstName" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="lastName"><spring:message
							code="LastName" text="default text- LastName" /></label>
					<div class="col-md-7">
						<form:input type="text" path="lastName" id="lastName"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="lastName" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="sex"><spring:message
							code="Sex" text="default text- Sex" /></label>
					<div class="col-md-7" class="form-control input-sm">
						<form:radiobutton path="sex" value="M" />
						Male
						<form:radiobutton path="sex" value="F" />
						Female
						<div class="has-error">
							<form:errors path="sex" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="dob">Date of
						birth</label>
					<div class="col-md-7">
						<form:input type="text" path="dob" id="dob"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="dob" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="email"><spring:message
							code="Email" text="default text- Email" /></label>
					<div class="col-md-7">
						<form:input type="text" path="email" id="email"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="email" class="help-inline" />
						</div>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="section">Section</label>
					<div class="col-md-7" class="form-control input-sm">
						<form:radiobuttons path="section" items="${sections}" />
						<div class="has-error">
							<form:errors path="section" class="help-inline" />
						</div>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="country"><spring:message
							code="Country" text="default text- Country" /></label>
					<div class="col-md-7">
						<form:select path="country" id="country"
							class="form-control input-sm">
							<form:option value="">Select Country</form:option>
							<form:options items="${countries}" />
						</form:select>
						<div class="has-error">
							<form:errors path="country" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="firstAttempt">First
						Attempt ?</label>
					<div class="col-md-1">
						<form:checkbox path="firstAttempt" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="firstAttempt" class="help-inline" />
						</div>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="subjects">Subjects</label>
					<div class="col-md-7">
						<form:select path="subjects" items="${subjects}" multiple="true"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="subjects" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-actions floatRight">
					<input type="submit" value="Register"
						class="btn btn-primary btn-sm">
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>