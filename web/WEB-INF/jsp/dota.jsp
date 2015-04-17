<%-- 
    Document   : dota
    Created on : Apr 13, 2015, 6:52:49 PM
    Author     : Bert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Lorem Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<c:url value="/resources/css/mystyle02.css"/>" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
<!-- Custom Theme files -->
<link href="<c:url value="/resources/css/style.css"/>" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
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
                <script type="text/javascript">
                    function submitform()
                    {
                      document.getElementById('logoutForm').submit();
                    }
                </script>
		<!----//End-top-nav-script---->
                <script src="<c:url value="/resources/js/jquery.easydropdown.js"/>"></script>
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
		<div class="services">
		  <div class="service_grid1">
			<div class="container">
				<div class="box_dota" style="margin-left: -63px;">
					<iframe width="600" height="390" src="https://www.youtube.com/embed/-cSFPIwMEq4" frameborder="0" allowfullscreen></iframe>
				</div>
				<div class="box_dota service_grid1-right" style="margin-left: 43px;">
					<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. </p>
	                <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable</p>			
				</div>
			</div>
		  </div>
	
		    <div class="clearfix"> </div>								
       </div>
	  </div>
    </div>
</body>
</html>		