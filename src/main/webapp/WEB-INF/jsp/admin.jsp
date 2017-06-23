<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CS Jobs - Admin</title>

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
<!-- end: CORE CSS -->


<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/fancybox/source/jquery.fancybox.css?v=2.1.5"/>" type="text/css"
	media="screen" />
<script src="<c:url value="/resources/jobtheme/fancybox/jquery-1.10.2.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/jobtheme/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"/>"></script>



</head>
<body>
	<div class="container">
		<div class="panel panel-white">
			<div class="row">

				<div class="panel-heading"></div>

				<div class="panel-body">
					<center>
						

						<p>
							You are logged in as <em>${authenticatedUser.firstName}
								${authenticatedUser.lastName}</em>.
						


						<h3>Admin Home</h3>

						<a href="<c:url value='/create_job.html' />"><input type="button"
					name="Create Job" value="Create Job" class="btn btn-success" /></a><br>
						<br>

						<table class="table table-striped">
							<thead>
								<tr>
									<th>Job Title</th>
									<th>Publish date:</th>
									<th>Close date:</th>
									<th>Operations</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${openJobs}" var="job">

									<tr>

										<td><a
											href="<c:url value='/job/view.html?id=${job.id}' />">${job.title}</a></td>
										<td><fmt:formatDate value="${job.publishDate}"
												pattern="M/d/yyyy" /></td>
										<td><fmt:formatDate value="${job.closeDate}"
												pattern="M/d/yyyy" /></td>
										<td><a href="<c:url value='/edit.html?jobId=${job.id}' />" >Edit</a></td>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</center>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
