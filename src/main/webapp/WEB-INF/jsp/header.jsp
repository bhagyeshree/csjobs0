<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CS Jobs</title>

<link
	href="<c:url value="/resources/jobtheme/css/bootstrap-reset.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/jobtheme/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/jobtheme/css/gallery.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/jobtheme/css/image-crop.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/jobtheme/css/invoice-print.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/jobtheme/css/jquery-ui.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/jobtheme/css/jquery.toastmessage-min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/jobtheme/css/owl.carousel.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/jobtheme/css/Style_msg.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/jobtheme/css/jquery.toastmessage-min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/jobtheme/css/jquery.toastmessage-min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/jobtheme/css/jquery.toastmessage-min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/jobtheme/css/jquery.toastmessage-min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/jobtheme/css/jquery.toastmessage-min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/jobtheme/css/jquery.toastmessage-min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/jobtheme/css/jquery.toastmessage-min.css" />"
	rel="stylesheet">



<link href="/resources/jobtheme/css/gallery.css">
<link href="/resources/jobtheme/css/image-crop.css">
<link href="/resources/jobtheme/css/invoice-print.css">

<link rel="stylesheet"
	href="<c:url value="/resources/jobtheme/fancybox/source/jquery.fancybox.css?v=2.1.5"/>"
	type="text/css" media="screen" />
<script
	src="<c:url value="/resources/jobtheme/fancybox/jquery-1.10.2.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/jobtheme/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"/>"></script>

<script>
	(function($) {
		$(document).ready(function() {

			$('.various').fancybox({
				maxWidth : 800,
				maxHeight : 800,

				width : '70%',
				height : '80%',
				autoSize : false,
				closeClick : false,
				openEffect : 'elastic',
				openSpeed : 600,

				closeEffect : 'elastic',
				closeSpeed : 600,

				fitToView : true,
				preload : true
			});

		});
	})(jQuery);
</script>



</head>
<body>
	<header class="topbar navbar navbar-inverse navbar-fixed-top inner">
		<!-- start: TOPBAR CONTAINER -->
		<div class="container">
			<div class="navbar-header">
				<a class="sb-toggle-left hidden-md hidden-lg" href="#main-navbar">
					<i class="fa fa-bars"></i>
				</a>
				<!-- start: LOGO -->
				<a class="navbar-brand" href="index.html"> CS Jobs (Exam
					Edition) </a>
				<!-- end: LOGO -->
			</div>
			<div class="topbar-tools">
				<!-- start: TOP NAVIGATION MENU -->
				<ul class="nav navbar-right">
					<!-- start: USER DROPDOWN -->
					<li class="dropdown current-user"><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle"
						data-close-others="true" href="#"> <span
							class="username hidden-xs">${authenticatedUser.firstName } ${authenticatedUser.lastName } </span> <i class="fa fa-caret-down "></i>
					</a>
						<ul class="dropdown-menu dropdown-dark"
							style="list-style-type: none">
							<li><a href="<c:url value='/profile.html'/>" class="various" data-fancybox-type="iframe"> My Profile
							</a></li>
							
							<li><a href="/csjobs-exam/logout.html"> Log Out </a></li>
						</ul></li>
					<!-- end: USER DROPDOWN -->

				</ul>
				<!-- end: TOP NAVIGATION MENU -->
			</div>
		</div>
		<!-- end: TOPBAR CONTAINER -->
	</header>

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
