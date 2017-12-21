<%-- 
    Document   : newjsp
    Created on : Dec 12, 2017, 9:23:19 AM
    Author     : sunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Creative - Bootstrap Admin Template</title>

    <!-- Bootstrap CSS -->    
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="${pageContext.request.contextPath}/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" />    
    <!-- full calendar css-->
    <link href="${pageContext.request.contextPath}/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="${pageContext.request.contextPath}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css" type="text/css">
	<link href="${pageContext.request.contextPath}/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fullcalendar.css">
	<link href="${pageContext.request.contextPath}/css/widgets.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/xcharts.min.css" rel=" stylesheet">	
	<link href="${pageContext.request.contextPath}/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->

    </head>        
    <body>

  <section id="container" class="">
     
      
      <%@include file="Sidebar.jsp" %>
      

      <section id="main-content">
          <section class="wrapper">            
         
		  
		  
			
              
				
		

                    

		
	

          </section>
      </section>

  </section>

    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui-1.10.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="${pageContext.request.contextPath}/text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="${pageContext.request.contextPath}/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="${pageContext.request.contextPath}/assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath}/js/owl.carousel.js" ></script>
    <!-- jQuery full calendar -->
    <script src="${pageContext.request.contextPath}/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
	<script src="${pageContext.request.contextPath}/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="${pageContext.request.contextPath}/js/calendar-custom.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="${pageContext.request.contextPath}js/jquery.customSelect.min.js" ></script>
	<script src="${pageContext.request.contextPath}/assets/chart-master/Chart.js"></script>
   
    <!--custome script for all page-->
    <script src="${pageContext.request.contextPath}/js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="${pageContext.request.contextPath}/js/sparkline-chart.js"></script>
    <script src="${pageContext.request.contextPath}/js/easy-pie-chart.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="${pageContext.request.contextPath}/js/xcharts.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.autosize.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.placeholder.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/gdp-data.js"></script>	
	<script src="${pageContext.request.contextPath}/js/morris.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/sparklines.js"></script>	
	<script src="${pageContext.request.contextPath}/js/charts.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.slimscroll.min.js"></script>
  <script>


      $(function() {
        $(".knob").knob({
          'draw' : function () { 
            $(this.i).val(this.cv + '%')
          }
        })
      });

      $(document).ready(function() {
          $("#owl-slider").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });
	  
	
	$(function(){
	  $('#map').vectorMap({
	    map: 'world_mill_en',
	    series: {
	      regions: [{
	        values: gdpData,
	        scale: ['#000', '#000'],
	        normalizeFunction: 'polynomial'
	      }]
	    },
		backgroundColor: '#eef3f7',
	    onLabelShow: function(e, el, code){
	      el.html(el.html()+' (GDP - '+gdpData[code]+')');
	    }
	  });
	});



  </script>


    </body>
</html>
