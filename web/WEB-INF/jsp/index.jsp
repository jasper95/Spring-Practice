<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Lorem Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<c:url value="/resources/css/mystyle02.css" />" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
<!-- Custom Theme files -->
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css"/>
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
                <sec:csrfMetaTags />
                <script>
                    $(document).ready(function() {
                        $('#logoutForm').submit(function(event) {
                            var header = $("meta[name='_csrf_header']").attr("content");
                            var token = $("meta[name='_csrf']").attr("content");
                            alert("test");
                            $.ajax({
                                url: $("#logoutForm").attr( "action"),
                                type: 'POST',
                                beforeSend: function(xhr){
                                    xhr.setRequestHeader(header, token);
                                    alert("test");
                                },
                                success: function(data) {
                                    console.log(data);
                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    console.log(xhr.status + ": " + thrownError);
                                }
                            });
                            event.preventDefault();
                        });   
                    });
                </script>
                <script type="text/javascript">
                    function submitform()
                    {
                      document.getElementById('logoutForm').submit();
                    }
                </script>
		<!----//End-top-nav-script---->
                <script src="<c:url value="/resources/js/jquery.easydropdown.js" />"></script>
<!----- start-Share-instantly-slider---->
					 <!-- Prettify -->
                                         <link href="<c:url value="/resources/css/owl.carousel.css"/>" rel="stylesheet">
                                         <script src="<c:url value="/resources/js/owl.carousel.js" />"></script>
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
					<!----- //End-Share-instantly-slider---->
                                        <script type="text/javascript" src="<c:url value="/resources/js/hover_pack.js"/>"></script>
</head>
<body>
 <!----start-header---->
		<div class="header">
			<div class="container">
		       <div class="clearfix"></div>
		      <div class="header_top">
				<div class="logo">
				  <a href="index.htm"><span class="color1">Jasper</span></a>
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
		<div class="banner">
		  <div class="banner_container">
       	      <div class="wmuSlider example1">
			     <div class="wmuSliderWrapper">
				  <article style="position: absolute; width: 100%; opacity: 0;"> 
				        <div class="banner_right">
                                                <h2>Have Fun!</h2>
				   	    	<a href="#" title="Dota Addict" class="btn btn-primary btn-normal btn-inline " target="_self">Read More about me</a>
				   	    </div>
					    <div class="clearfix"></div>
					</article>
				    <article style="position: relative; width: 100%; opacity: 1;"> 
				   	  <div class="banner_right">
				   	    	<h2>Welcome Visitor</h2>
				   	    	<a href="#" title="Online Reservation" class="btn btn-primary btn-normal btn-inline " target="_self">Read More about gelios</a>
				   	    </div>
					    <div class="clearfix"></div>
				   </article>
				 </div>
				 <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                                 <script src="<c:url value="/resources/js/jquery.wmuSlider.js"/>"></script> 
				  <script>
	       			$('.example1').wmuSlider();         
	   		     </script> 	           	      
      </div>
     </div>
    </div>
    <div class="banner_text">
    	<div class="container">
    	</div>
    </div>
    <div class="grid_1 text-center">
    	<div class="container">
    	  <div class="blog_box  box_1">
    	  	<i class="icon1"> </i>
    	  	<h3>Programming</h3>
    	  	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    	  </div>
    	  <div class="blog_box  box_1">
    	  	<i class="icon2"> </i>
    	  	<h3>Dota</h3>
    	  	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    	  </div>
    	  <div class="blog_box  box_1">
    	  	<i class="icon3"> </i>
    	  	<h3>Beers</h3>
    	  	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    	  </div>
    	</div>
    </div>
    <div class="grid_2">
    	<h3>Recent Projects</h3>
    	         <div id="owl-demo3" class="owl-carousel owl-carousel2">
				                 <div class="item">
				                	<a href="#" class="b-link-stroke b-animate-go  thickbox">
                                                            <img class="lazyOwl" data-src="<c:url value="/resources/images/p1.jpg"/>" alt="Lazy Owl Image"><div class="b-wrapper">
</div></a>
   	 							 </div>
				                 <div class="item">
				                	<a href="#" class="b-link-stroke b-animate-go  thickbox">
                                                            <img class="lazyOwl" data-src="<c:url value="/resources/images/p2.jpg"/>" alt="Lazy Owl Image"><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">Photo 1</h2><p class="b-animate b-from-right    b-delay03 ">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div></a>
   	 							 </div>
				                 <div class="item">
				                	<a href="#" class="b-link-stroke b-animate-go  thickbox">
                                                            <img class="lazyOwl" data-src="<c:url value="/resources/images/p3.png"/>" alt="Lazy Owl Image"><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">Photo 1</h2><p class="b-animate b-from-right    b-delay03 ">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div></a>
   	 							 </div>
				                 <div class="item">
				                	<a href="#" class="b-link-stroke b-animate-go  thickbox">
                                                            <img class="lazyOwl" data-src="<c:url value="/resources/images/p4.jpg"/>" alt="Lazy Owl Image"><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">Photo 1</h2><p class="b-animate b-from-right    b-delay03 ">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div></a>
   	 							 </div>
				                 <div class="item">
				                	<a href="#" class="b-link-stroke b-animate-go  thickbox">
                                                            <img class="lazyOwl" data-src="<c:url value="/resources/images/p1.jpg"/>" alt="Lazy Owl Image"><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">Photo 1</h2><p class="b-animate b-from-right    b-delay03 ">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div></a>
   	 							 </div>
				                 <div class="item">
				                	<a href="#" class="b-link-stroke b-animate-go  thickbox">
                                                            <img class="lazyOwl" data-src="<c:url value="/resources/images/p2.jpg"/>" alt="Lazy Owl Image"><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">Photo 1</h2><p class="b-animate b-from-right    b-delay03 ">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div></a>
   	 							 </div>
				                 <div class="item">
				                	<a href="#" class="b-link-stroke b-animate-go  thickbox">
                                                            <img class="lazyOwl" data-src="<c:url value="/resources/images/p3.png"/>" alt="Lazy Owl Image"><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">Photo 1</h2><p class="b-animate b-from-right    b-delay03 ">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div></a>
   	 							 </div>
				                 <div class="item">
				                	<a href="#" class="b-link-stroke b-animate-go  thickbox">
                                                            <img class="lazyOwl" data-src="<c:url value="/resources/images/p4.jpg"/>" alt="Lazy Owl Image"><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 ">Photo 1</h2><p class="b-animate b-from-right    b-delay03 ">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div></a>
   	 							 </div>
				                 <div class="clearfix"> </div>
				 </div>
     </div>
     <div class="grid_1">
     	<h2>Other Interests</h2>
     	<div class="container">
     	  <div class='blog_box '>
     	    <div class="box_3">
                <img src="<c:url value="/resources/images/b1.jpg"/>" class="img-responsive" alt=""/>
     		  <div class="box_4">
     		    <a href="#"><h3>Lorem ipsum Lorem ipsum Lorem ipsum</a></h3>
     		    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <a href="#"><span class="more">More Reading  &nbsp;<img src="<c:url value="/resources/images/arrow.png"/>" alt=""/></span></a>
     		  </div>
     		  <div class="links">
		  		    <ul>
		  				<li><i class="user"> </i><span><a href="#">admin</a></span><div class="clearfix"> </div></li>
		  				<li><i class="calender"> </i><span>Feb 28, 2015</span><div class="clearfix"> </div></li>
		  				<li><i class="comment"> </i><span>20 comments</span><div class="clearfix"> </div></li>
		  		    </ul>
		  	  </div>
     	    </div>
        </div>
         <div class='blog_box '>
     	    <div class="box_3">
                <img src="<c:url value="/resources/images/b2.jpg"/>" class="img-responsive" alt=""/>
     		  <div class="box_4">
     		    <a href="#"><h3>Lorem ipsum Lorem ipsum Lorem ipsum</a></h3>
     		    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <a href="#"><span class="more">More Reading  &nbsp;<img src="<c:url value="/resources/images/arrow.png"/>" alt=""/></span></a>
     		  </div>
     		  <div class="links">
		  		    <ul>
		  				<li><i class="user"> </i><span><a href="#">admin</a></span><div class="clearfix"> </div></li>
		  				<li><i class="calender"> </i><span>Feb 28, 2015</span><div class="clearfix"> </div></li>
		  				<li><i class="comment"> </i><span>20 comments</span><div class="clearfix"> </div></li>
		  		    </ul>
		  	  </div>
     	    </div>
        </div>
        <div class='blog_box '>
     	    <div class="box_3">
                <img src="<c:url value="/resources/images/b3.jpg"/>" class="img-responsive" alt=""/>
     		  <div class="box_4">
     		    <a href="#"><h3>Lorem ipsum Lorem ipsum Lorem ipsum</a></h3>
     		    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <a href="#"><span class="more">More Reading  &nbsp;<img src="<c:url value="/resources/images/arrow.png"/>" alt=""/></span></a>
     		  </div>
     		  <div class="links">
		  		    <ul>
		  				<li><i class="user"> </i><span><a href="#">admin</a></span><div class="clearfix"> </div></li>
		  				<li><i class="calender"> </i><span>Feb 28, 2015</span><div class="clearfix"> </div></li>
		  				<li><i class="comment"> </i><span>20 comments</span><div class="clearfix"> </div></li>
		  		    </ul>
		  	  </div>
     	    </div>
          </div>
        <div class="clearfix"> </div>
      </div>
    </div> 
</body>
</html>		