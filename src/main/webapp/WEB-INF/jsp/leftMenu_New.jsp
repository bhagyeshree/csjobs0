<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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




</head>
<body>
	<nav id="pageslide-left" class="pageslide inner">
		<div class="navbar-content">
			<!-- start: SIDEBAR -->
			<div class="main-navigation left-wrapper transition-left">


				<!-- start: MAIN NAVIGATION MENU -->
				<ul class="main-navigation-menu">
					<li><a href="index.html"><i class="fa fa-home"></i> <span
							class="title"> Dashboard </span><span
							class="label label-default pull-right ">LABEL</span> </a></li>
					<li><a href="<c:url value='/create_job.html' />"><i class="fa fa-desktop"></i>
							<span class="title">Create New Job</span> </a>
						
							
							



				</ul>
				<!-- end: MAIN NAVIGATION MENU -->
			</div>
			<!-- end: SIDEBAR -->
		</div>
		
	</nav>


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
	<script src="<c:url value="/resources/jobtheme/assets/plugins/bootbox/bootbox.min.js"/>"></script>
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
	<script src="<c:url value="/resources/jobtheme/assets/plugins/toastr/toastr.js"/>"></script>
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
	<script src="<c:url value="/resources/jobtheme/assets/js/subview-examples.js"/>"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/autosize/jquery.autosize.min.js"/>"></script>
	<script src="<c:url value="/resources/jobtheme/assets/plugins/select2/select2.min.js"/>"></script>
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
	<script src="<c:url value="/resources/jobtheme/assets/plugins/ckeditor/ckeditor.js"/>"></script>
	<script
		src="<c:url value="/resources/jobtheme/assets/plugins/ckeditor/adapters/jquery.js"/>"></script>
	<script src="<c:url value="/resources/jobtheme/assets/js/form-elements.js"/>"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CORE JAVASCRIPTS  -->
	<script src="<c:url value="/resources/jobtheme/assets/js/main.js"/>"></script>
	<!-- end: CORE JAVASCRIPTS  -->
	<script>
			jQuery(document).ready(function() {
				Main.init();
				SVExamples.init();
				FormElements.init();
			});
		</script>

</body>
</html>