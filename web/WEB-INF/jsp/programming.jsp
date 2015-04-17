<%-- 
    Document   : programming
    Created on : Apr 13, 2015, 6:54:18 PM
    Author     : Bert
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Programming is my Passion</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<c:url value="/resources/css/mystyle02.css"/>" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
<!-- Custom Theme files -->
<link href="<c:url value="/resources/css/style.css"/>" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
<!----start-top-nav-script---->
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!----//End-top-nav-script---->
                <script src="<c:url value="/resources/js/jquery.easydropdown.js"/>"></script>
<!----- start-Share-instantly-slider---->
					 <!-- Prettify -->
                                         <link href="<c:url value="/resources/css/owl.carousel.css"/>" rel="stylesheet">
					    <script src="js/owl.carousel.js"></script>
					    <script>
						    $(document).ready(function() {
						      $("#owl-demo , #owl-demo1").owlCarousel({
						        items : 1,
						        lazyLoad : true,
						        autoPlay : true,
						      });
						    });
					    </script>
					    <script>
						    $(document).ready(function() {
						      $("#owl-demo3").owlCarousel({
						        items : 4,
						        lazyLoad : true,
						        autoPlay : true,
						        navigation: false,
						        pagination: false,
						      });
						    });
					    </script>
                                            <script type="text/javascript">
                                                function submitform()
                                                {
                                                  document.getElementById('logoutForm').submit();
                                                }
                                            </script>
					<!----- //End-Share-instantly-slider---->
                                        <script type="text/javascript" src="<c:url value="resources/js/hover_pack.js"/>"></script>
                                        <script src="<c:url value="/resources/js/highcharts.js"/>"></script>
</head>
<body>
 <!----start-header---->
		<div class="header">
			<div class="container">
		       <div class="clearfix"></div>
		      <div class="header_top">
				<div class="logo">
				 <a href="index.html"><span class="color1">Jasper</span></a>
				</div>
		  		<div class="menu">
                                    <a class="toggleMenu" href="#"><img src="<c:url value="/resources/images/nav_icon.png"/>" alt="" /> </a>
					<ul class="nav" id="nav">
					 <li><a href="index.htm">Home</a></li>
					  <li><a href="programming.htm">Programming</a></li>
					  <li><a href="dota.htm">Dota</a></li>
					  <li><a href="beers.htm">Beers</a></li>
                                          <li><a href="javascript: submitform()">Logout</a></li>
					</ul>
                                    <c:url var="logoutUrl" value="/logout"/>
                                    <form id="logoutForm" action="${logoutUrl}" method="post">
                                      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    </form>
                                    <script type="text/javascript" src="<c:url value="/resources/js/responsive-nav.js"/>"></script>
				</div>							
	  			<div class="clearfix"> </div>
			    <!----//End-top-nav---->
			 </div>
			</div>
		</div>
		<!----//End-header---->
		<div class="about_banner">
		  <div class="banner_container">
       	      <div class="wmuSlider example1">
			     <div class="wmuSliderWrapper">
				  <article style="position: absolute; width: 100%; opacity: 0;"> 
				       <div class="banner_left">
				   	    	<h1>Build Great Teams <span class="color1">G</span>elios<span class="color1">.</span></h1>
				   	    	<h2>Your site will always Look Sharp and utilize 100% of screen Estate of Every Device.</h2>
				   	    	<ul class="banner_btn">
							   <li class="grey"><a href="#" title="Portfolio" class="btn2 btn2-primary2" target="_self">Go Portfolio</a></li>
							   <li class="yellow"><a href="#" title="Services" class="btn3 btn3-primary3" target="_self">More Services</a></li>
		     				</ul>
				   	    </div>
					    <div class="clearfix"></div>
					</article>
				    <article style="position: relative; width: 100%; opacity: 1;"> 
					    <div class="clearfix"></div>
				   </article>
				 </div>        	      
      </div>
     </div>
    </div>
    <div class="container">
      <div class="about_grid1">
        <div class="col-md-6 about_grid1-left">
   			<h2>My Dream Office</h2>
   			<h3>and Team :)</h3>
   			 <!-- FlexSlider -->
              <section class="slider">
				  <div class="flexslider">
					<ul class="slides">
                                            <li><img src="<c:url value="/resources/images/1.jpg"/>" class="img-responsive" alt=""/></li>
                                            <li><img src="<c:url value="/resources/images/2.jpg"/>" alt=""/></li>
                                            <li><img src="<c:url value="/resources/images/3.jpg"/>" alt=""/></li>
					</ul>
				  </div>
	          </section>
	     </div>
	     <!-- FlexSlider -->
   		<div class="about_grid1-right">
   			<h2>Web Development</h2>
   			<h3>Interests</h3>
   			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,typesetting industry. Lorem Ipsum has been the industry's standard</p>
   		    <div class="newspaper progress-grid">
				  	       <div class="meter red">
							   <span style="width:80%;">
							   	<div class="percent">80%</div> 
							  	<div class="progress_desc">Java</div>
								<div class="clearfix"> </div>
						       </span>
							</div>
							<div class="meter animate">
								 <span style="width:90%;">
							<div class="percent">80%</div> 
							   <div class="progress_desc">Python-Django</div>
							    <div class="clearfix"> </div>
							   </span>
							</div>
							<div class="meter">
									<span style="width:70%;">
								<div class="percent">70%</div> 
							   <div class="progress_desc">Javascript</div>
								<div class="clearfix"> </div>
							    </span>
							</div>
							<div class="meter">
							   <span style="width:60%;">
							   	<div class="percent">60%</div> 
							   	<div class="progress_desc">Wordpress</div>
							    <div class="clearfix"> </div>
							   </span>
							</div>
							<div class="meter">
							   <span style="width:40%;">
							   	<div class="percent">40%</div> 
							   	<div class="progress_desc">Web Design</div>
							    <div class="clearfix"> </div>
							   </span>
							</div>
				  	</div>
   		</div>
   		<div class="clearfix"> </div>
   	</div>
		</div>
	   </div>					
           <link href="<c:url value="/resources/css/flexslider.css"/>" rel='stylesheet' type='text/css' />
           <script defer src="<c:url value="/resources/js/jquery.flexslider.js"/>"></script>
							  <script type="text/javascript">
								$(function(){
								  SyntaxHighlighter.all();
								});
								$(window).load(function(){
								  $('.flexslider').flexslider({
									animation: "slide",
									start: function(slider){
									  $('body').removeClass('loading');
									}
								  });
								});
							  </script>
</body>
</html>		