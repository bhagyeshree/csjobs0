<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CS Jobs - Login</title>

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
	<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
		<div class="box-login">
			<h2>CS Jobs (Exam Edition)</h2>
			<form action="login.html" method="post" class="form-login" >
				<fieldset>
				<div style="text-align: center;color:red;font-size:20px;">	${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>
					<div class="form-group">
						<table class="table">
							<tr>
								<th>Email:</th>
								<td><input type="text" name="email" /></td>
							</tr>
							<tr>
								<th>Password:</th>
								<td><input type="password" name="password" /></td>
							</tr>
							<tr>
								<th><br /></th>
								<td><input type="submit" name="login" value="Login" class="btn btn-success" /></td>
							   <input type = "hidden" name="_csrf" value="${_csrf.token}"/>
							</tr>
						</table>
					</div>
				</fieldset>
			</form>
			
			Not a registered User <a href="<c:url value='/register.html' />"> Register Here.</a>
			
		</div>
	</div>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jQuery/jquery-2.1.1.min.js"/>"></script>
	<!--<![endif]-->
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap/js/bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/blockUI/jquery.blockUI.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/iCheck/jquery.icheck.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/moment/min/moment.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootbox/bootbox.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery.scrollTo/jquery.scrollTo.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/ScrollToFixed/jquery-scrolltofixed-min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery.appear/jquery.appear.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery-cookie/jquery.cookie.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/velocity/jquery.velocity.min.js"/>"></script>
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery-mockjax/jquery.mockjax.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/toastr/toastr.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-modal/js/bootstrap-modal.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/fullcalendar/fullcalendar/fullcalendar.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-switch/dist/js/bootstrap-switch.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-select/bootstrap-select.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery-validation/dist/jquery.validate.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/DataTables/media/js/jquery.dataTables.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/DataTables/media/js/DT_bootstrap.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/truncate/jquery.truncate.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/summernote/dist/summernote.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-daterangepicker/daterangepicker.js"/>"></script>
	<script src="<c:url value="/resources/jobtheme/assets/js/subview.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/js/subview-examples.js"/>"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/autosize/jquery.autosize.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/select2/select2.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery.maskedinput/src/jquery.maskedinput.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery-maskmoney/jquery.maskMoney.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-colorpicker/js/commits.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jQuery-Tags-Input/jquery.tagsinput.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/ckeditor/ckeditor.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/ckeditor/adapters/jquery.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/js/form-elements.js"/>"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CORE JAVASCRIPTS  -->
	<script src="<c:url value="/resources/jobtheme/assets/js/main.js"/>"></script>
	<!-- end: CORE JAVASCRIPTS  -->
	
</body>
</html>
