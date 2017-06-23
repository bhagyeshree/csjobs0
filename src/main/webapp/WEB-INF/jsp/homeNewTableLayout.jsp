
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  

<head>
   
    <title>ERP</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=request.getContextPath()%>/assets/font-awesome/<%=request.getContextPath()%>/css/font-awesome.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.carousel.css" type="text/css">
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="<%=request.getContextPath()%>/js/html5shiv.js"></script>
      <script src="<%=request.getContextPath()%>/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  <section id="container" >
    
      <header class="header white-bg">

			<tiles:insertAttribute  name="header" ignore="true" />
 </header>
      <aside>
      
		<div class="innertube"><tiles:insertAttribute  name="leftPanel"/></div>
	 </aside>
      <section id="main-content">
				<tiles:insertAttribute  name="content" ignore="true"/>
			 </section>
	</section>
 <!-- js placed at the end of the document so the pages load faster -->
    <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.scrollTo.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="<%=request.getContextPath()%>/js/owl.carousel.js" ></script>
    <script src="<%=request.getContextPath()%>/js/jquery.customSelect.min.js" ></script>
    <script src="<%=request.getContextPath()%>/js/respond.min.js" ></script>

    <!--common script for all pages-->
    <script src="<%=request.getContextPath()%>/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="<%=request.getContextPath()%>/js/sparkline-chart.js"></script>
    <script src="<%=request.getContextPath()%>/js/easy-pie-chart.js"></script>
    <script src="<%=request.getContextPath()%>/js/count.js"></script>

  <script>

      //owl carousel

      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true,
			  autoPlay:true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>


</html>













