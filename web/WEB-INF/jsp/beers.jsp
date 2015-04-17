<%-- 
    Document   : beers
    Created on : Apr 13, 2015, 6:53:42 PM
    Author     : Bert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				  <a href="index.htm"><span class="color1">Jasper</span></a>
				</div>
		  		<div class="menu">
					<a class="toggleMenu" href="#"><img src="images/nav_icon.png" alt="" /> </a>
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
	   <div class="container">
			<div class="box_beer">
			  <div class="blog_left" style="margin-left: -31px;">
                              <a href="single.html" class="mask"><img src="<c:url value="/resources/images/blog.jpg"/>" alt="image" class="img-responsive zoom-img"></a>
				<h2><a href="single.html"> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, </a></h2>
			    <h3>Posted 02.05.2015 at 18:00h in Web Design By <a href="single.html">Majority have</a> / 60 Likes / 2 Comments.</h3>
			    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
		       </div>
		       <div class="blog_left">
				 <iframe width="100%" height="425" src="https://www.youtube.com/embed/O-jOEAufDQ4" frameborder="0" allowfullscreen></iframe>
                                 <h2><a href="single.html"> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, </a></h2>
			    <h3>Posted 02.05.2015 at 18:00h in Web Design By <a href="single.html">Majority have </a> / 60 Likes / 2 Comments.</h3>
			    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
		      </div>
		      <ul class="dc_pagination dc_paginationA dc_paginationA06">
					  <li class="prev"> </li>
					  <li><a href="#">1</a></li>
					  <li><a href="#">2</a></li>
					  <li><a href="#">3</a></li>
					  <li><a href="#">4</a></li>
					  <li><a href="#">5</a></li>
					  <li><a href="#">...</a></li>
					  <li><a href="#">19</a></li>
					  <li class="next"> </li>
					  <div class="clearfix"> </div>
		       </ul>
		    </div>  
			<div class="box_beer01 sidebar">
				<div class="search">
				   <form>
					 <input type="text" value="Search..." onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
					 <input type="submit" value="">
				   </form>
				 </div>
                            <img src="<c:url value="/resources/images/2.jpg/"/>" class="img-responsive" alt=""/>
				 <ul class="blog-list">
					  <h3>Categories</h3>
					  <li><a href="#">Web Design</a></li>
					  <li><a href="#">Web Development</a></li>
					  <li><a href="#">Marketing</a></li>
					  <li><a href="#">Wordpress</a></li>
					  <li><a href="#">Resources</a></li>
					  <li><a href="#">Illustrations</a></li>
					  <li><a href="#">Tips</a></li>
				 </ul>
				 <ul class="blog-list1">
					  <h3>Tags</h3>
						<li><a href="#">Web Design</a></li>
						<li><a href="#">Html5</a></li>
						<li><a href="#">Wordpress</a></li>
						<li><a href="#">Logo</a></li>
						<li><a href="#">Web Design</a></li>
						<li><a href="#">Web Design</a></li>
						<li><a href="#">Wordpress</a></li>
						<li><a href="#">Web Design</a></li>
						<li><a href="#">Html5</a></li>
						<li><a href="#">Wordpress</a></li>
						<li><a href="#">Logo</a></li>
				 </ul>
				 <div class="blog_list2">
				 <h3>Recent Posts</h3>
					 <ul class="blog-list3">
                                             <li class="blog-list3-img"><img src="<c:url value="/resources/images/blog_s1.jpg"/>" class="img-responsive" alt=""/></li>
					 	<li class="blog-list3-desc">
					 	  <h4><a href="#">Hampden-Sydney College in Virginia, looked up one</a></h4>
					 	  <p>02.02.2015 at 18:00h</p>
					 	</li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3">
                                             <li class="blog-list3-img"><img src="<c:url value="/resources/images/blog_s2.jpg"/>" class="img-responsive" alt=""/></li>
					 	<li class="blog-list3-desc">
					 	  <h4><a href="#">Hampden-Sydney College in Virginia, looked up one</a></h4>
					 	  <p>02.02.2015 at 18:00h</p>
					 	</li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3">
                                             <li class="blog-list3-img"><img src="<c:url value="/resources/images/blog_s3.jpg"/>" class="img-responsive" alt=""/></li>
					 	<li class="blog-list3-desc">
					 	  <h4><a href="#">Hampden-Sydney College in Virginia, looked up one</a></h4>
					 	  <p>02.02.2015 at 18:00h</p>
					 	</li>
					 	<div class="clearfix"> </div>
					 </ul>
			    </div>  
	     </div>
	   <div class="clearfix"> </div>
     </div>
    </div>
</body>
</html>		
