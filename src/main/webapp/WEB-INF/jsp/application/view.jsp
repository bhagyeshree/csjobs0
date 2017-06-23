<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CS Jobs - Application</title>

<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,200,100,800'
	rel='stylesheet' type='text/css' />
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
	type="text/css" id="skin_color" />
<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/assets/css/print.css"/>"
	type="text/css" media="print" />
<!-- end: CORE CSS -->

</head>
<body>

	<div class="row">

		<div class="panel-heading"></div>
		<div class="col-sm-12">
			<!-- start: TEXT FIELDS PANEL -->
			<div class="panel-body">
				<div class="panel panel-white">
					<center>
						<h2>CS Jobs (Exam Edition)</h2>
						<h3>${application.job.title}</h3>

						<p>Applicant: ${application.applicant.firstName}
							${application.applicant.lastName}</p>
						<p>
							Submitted:
							<fmt:formatDate value="${application.submitDate}"
								pattern="M/d/yyyy" />
						</p>
						<p>Current Position: ${application.currentJobTitle} at
							${application.currentJobInstitution} since
							${application.currentJobYear}</p>

						<table class="table">
							<tr>
								<th>Degree</th>
								<th>School</th>
								<th>Year</th>
							</tr>
							<c:forEach items="${application.degrees}" var="degree">
								<tr>
									<td>${degree.name}</td>
									<td>${degree.school}</td>
									<td>${degree.year}</td>
								</tr>
							</c:forEach>
						</table>
					</center>
					<br />
					<center>
						
							<a
								href="<c:url value='/download.html?path=${application.cv.name }'/>"
								class="various"><span class="fileupload-new btn btn-danger"><i
									class="fa fa-download"></i>Download</span></a>Caricullam Vitae <a
								href="<c:url value='/download.html?path=${application.researchStatement.name }'/>"
								class="various"><span class="fileupload-new btn btn-danger"><i
									class="fa fa-download"></i>Download</span></a>Research Statement <a
								href="<c:url value='/download.html?path=${application.teachingStatement.name }'/>"
								class="various"><span class="fileupload-new btn btn-danger"><i
									class="fa fa-download"></i>Download</span></a> Teaching Statement
						
					</center>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
