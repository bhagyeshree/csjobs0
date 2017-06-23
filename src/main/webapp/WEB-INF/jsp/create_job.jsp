<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="header.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
input {
	float: left;
}

label {
	width: 40%;
	float: left;
}

.form-horizontal.tasi-form .form-group {
	border-bottom: none !important;
	margin-bottom: 15px;
	padding-bottom: 15px;
}
</style>

<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,200,100,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/bootstrap/css/bootstrap.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/font-awesome/css/font-awesome.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/iCheck/skins/all.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/perfect-scrollbar/src/perfect-scrollbar.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/animate.css/animate.min.css"/>" />
<!-- end: MAIN CSS -->
<!-- start: CSS REQUIRED FOR SUBVIEW CONTENTS -->
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/owl-carousel/owl-carousel/owl.theme.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/owl-carousel/owl-carousel/owl.transitions.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/summernote/dist/summernote.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/fullcalendar/fullcalendar/fullcalendar.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/toastr/toastr.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-select/bootstrap-select.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/DataTables/media/css/DT_bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css"/>" />
<!-- end: CSS REQUIRED FOR THIS SUBVIEW CONTENTS-->
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/weather-icons/css/weather-icons.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/plugins/nvd3/nv.d3.min.css"/>" />
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
<!-- start: CORE CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/css/styles.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/css/styles-responsive.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/css/plugins.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/css/themes/theme-default.css"/>"
	type="text/css" id="skin_color">
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/css/print.css"/>"
	type="text/css" media="print" />

</head>
<body>

		
	<div class="container">
		<div class="row">

			<div class="panel-heading"></div>
			<div class="col-sm-12">
				<!-- start: TEXT FIELDS PANEL -->
				<div class="panel-body">
					<div class="panel panel-white">
						<div class="form-group">

							<form:form modelAttribute="job">
								<table class="table">
									<tr>
										<th>Title:</th>
										<td><form:input path="title"
												class="form-control col-lg-12" /></td>
									</tr>
									<tr>
										<th>Description:</th>
										<td><form:input path="description" class="form-control" /></td>
									</tr>
									<tr>
										<th>Publish Date:</th>
										<td><form:input path="publishDate" class="form-control" /></td>
									</tr>
									<tr>
										<th>Close Date:</th>
										<td><form:input path="closeDate" class="form-control" /></td>
									</tr>

									<tr>
										<th>Committee Chair:</th>
										<td><form:select path="committeeChair"
												class="form-control">

												<c:forEach items="${authenticated }" var="authenticated">

													<form:option value="${authenticated.id }">${authenticated.firstName } ${authenticated.lastName }</form:option>
												</c:forEach>
											</form:select></td>
									</tr>

									<tr>
										<th>Committee Members:</th>
										<td><c:forEach items="${authenticated }"
												var="authenticated">
												<form:checkbox value="${authenticated.id }"
													path="committeeMembers" />${authenticated.firstName } ${authenticated.lastName }<br />
											</c:forEach></td>
									</tr>



									<tr>
										<td><br /></td>
										<td><input type="submit" name="Create" value="Create"
											class="btn btn-primary" /></td>
									</tr>
								</table>


							</form:form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>