<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CS Jobs - Registration</title>
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/bootstrap/css/bootstrap.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/font-awesome/css/font-awesome.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/iCheck/skins/all.css"/>" />

<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/animate.css/animate.min.css"/>" />
<!-- end: MAIN CSS -->

<!-- start: CORE CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/css/styles.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/css/styles-responsive.css"/>" />



<script type="text/javascript" src="fancybox/jquery-latest.min.js"></script>

<link rel="stylesheet"
	href="fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css"
	media="screen" />

</head>
<body>
	<div
		class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
		<div class="box-register">
		<h2>CS Jobs (Exam Edition)</h2>
			<form:form modelAttribute="user" class="form-register">
				<table class="table">
					<tr>
						<th>Email:</th>
						<td><form:input path="email" /> <b><form:errors
									path="email" /></b></td>
					</tr>
					<tr>
						<th>Password:</th>
						<td><form:password path="password" /> <b><form:errors
									path="password" /></b></td>
					</tr>
					<tr>
						<th>Password again:</th>
						<td><form:password path="password2" /> <b><form:errors
									path="password2" /></b></td>
					</tr>
					<tr>
						<th>Last Name:</th>
						<td><form:input path="lastName" /> <b><form:errors
									path="lastName" /></b></td>
					</tr>
					<tr>
						<th>First Name:</th>
						<td><form:input path="firstName" /> <b><form:errors
									path="firstName" /></b></td>
					</tr>
					<tr>
						<th>Phone:</th>
						<td><form:input path="phone" /> <b><form:errors
									path="phone" /></b></td>
					</tr>
					<tr>
						<th>Address:</th>
						<td><form:input path="address" /> <b><form:errors
									path="address" /></b></td>
					</tr>
					<tr>
						<td><br /></td>
						<td><input type="submit" name="register" value="register" class="btn btn-primary" /></td>
					</tr>
				</table>
			</form:form>
			
			Allready have an account,<a href="<c:url value='/login.html' />"> Login.</a>
			
		</div>
	</div>
</body>
</html>
