<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Category List</title>
<script type="text/javascript">
	$(window).on("scroll", function() {
		if ($(this).scrollTop() > 10) {
			$("nav.navbar").addClass("mybg-dark");
			$("nav.navbar").addClass("navbar-shrink");
			$(".navbar-dark .navbar-toggler").css({
				"background-color" : "#212529"
			});

		} else {
			$("nav.navbar").removeClass("mybg-dark");
			$("nav.navbar").removeClass("navbar-shrink");
			$(".navbar-brand").css({
				"color" : "#fff"
			});
			$(".navbar-dark .navbar-toggler").css({
				"background-color" : "transparent"
			});

		}
	});

	$(document)
			.ready(
					function() {

						$(function() {

							$(document).on(
									'scroll',
									function() {

										if ($(window).scrollTop() > 100) {
											$('.scroll-top-wrapper').addClass(
													'show');
										} else {
											$('.scroll-top-wrapper')
													.removeClass('show');
										}
									});

							$('.scroll-top-wrapper').on('click', scrollToTop);
						});

						function scrollToTop() {
							verticalOffset = typeof (verticalOffset) != 'undefined' ? verticalOffset
									: 0;
							element = $('body');
							offset = element.offset();
							offsetTop = offset.top;
							$('html, body').animate({
								scrollTop : offsetTop
							}, 500, 'linear');
						}

					});
</script>
<style type="text/css">
body {
	font-family: 'Indie Flower', cursive;
	font-size: 100%;
}

/*---navbar---*/
.navbar {
	background: transparent;
}

.navbar-shrink {
	padding-top: 0;
	padding-bottom: 0;
}

.navbar-brand {
	font-size: 2em;
	font-weight: bolder;
}

.navbar
 
a
:not
 
(
.navbar-brand
 
)
{
font-weight
:
 
bolder
;

	
font-size
:
 
1
.4em
;

	
color
:
 
#ffffff
 
!
important
;


}
.navbar a:not (.navbar-brand ):hover {
	color: red !important;
}

header.masthead {
	position: relative;
	background-color: #343a40;
	height: 100vh;
	background:
		url(https://images.pexels.com/photos/54455/cook-food-kitchen-eat-54455.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250&w=950)
		no-repeat fixed center center;
}

header.masthead .overlay {
	position: absolute;
	background-color: #212529;
	height: 100%;
	width: 100%;
	top: 0;
	left: 0;
	opacity: .3
}

header.masthead h1 {
	font-size: 2rem
}

@media ( min-width :768px) {
	header.masthead {
		padding-top: 0.8rem;
		padding-bottom: 0.8rem
	}
	header.masthead h1 {
		font-size: 4rem;
		font-weight: bold;
	}
}

.my-padding {
	padding-top: 0.5rem;
	padding-bottom: 0.5rem;
}

.form-row>.col, .form-row>[class*=col-] {
	padding-right: 0;
	padding-left: 0;
}

/*---gallery---*/
#photos {
	padding-top: 5rem;
	padding-bottom: 5rem;
}

#photos img {
	width: 100%;
	height: 15em;
	border-radius: 0.8em;
	transition: transform 2s ease-in-out;
}

#photos img:hover {
	opacity: 0.8;
	transform: scale(1.15);
}

#photos h2 {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-top: 0.15em solid black;
	border-bottom: 0.15em solid black;
	color: red;
	display: none;
}

#photos .col-lg-4:hover h2 {
	display: block;
}

.portfolio-item {
	position: relative;
	margin-bottom: 2rem;
}

img.img-fluid.rounded-circle.mb-3 {
	height: 192px;
	width: 192px;
	object-fit: cover;
}

.featherlight .featherlight-image {
	width: 600px;
	height: 400px;
}

/*-----parallax-----*/
.mybg {
	position: relative;
	background: linear-gradient(to right, rgba(255, 255, 255, 0.7686274509803922),
		rgba(255, 255, 255, 0.7686274509803922)),
		url(https://images.pexels.com/photos/5317/food-salad-restaurant-person.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260)
		no-repeat center center fixed;
	background-size: cover;
}

.call-to-action {
	position: relative;
	background-color: #1c1c1c;
	padding-top: 7rem;
	padding-bottom: 7rem
}

.call-to-action .overlay {
	position: absolute;
	background-color: #212529;
	height: 100%;
	width: 100%;
	top: 0;
	left: 0;
	opacity: .3
}

footer.footer {
	padding-top: 4rem;
	padding-bottom: 4rem
}

.myhr {
	border-top: 1px solid rgba(255, 255, 255, 0.1) !important;
}

.myform {
	border-radius: 0px !important;
}

.mybtn {
	border-radius: 0px !important;
}

.txt-upper {
	text-transform: uppercase;
}

.mybg-dark {
	background: #000000 !important;
}

.order-now a {
	background: #fff;
	border: 3px solid black;
	padding: 2px 9px;
	font-size: 550em;
	font-weight: bold;
	color: #0056b3;
	text-decoration: none;
	opacity: 0.6;
}

.order-now a:hover {
	background: red;
	color: #fff;
	opacity: 1;
}

.myfont-color {
	color: #979797 !important;
}

/*----testimonials----*/
.testimonials {
	padding-top: 7rem;
	padding-bottom: 7rem
}

.testimonials .testimonial-item {
	max-width: 18rem
}

.testimonials .testimonial-item img {
	max-width: 12rem;
	box-shadow: 0 5px 5px 0 #adb5bd
}

/* Footer */
section {
	padding: 60px 0 18px;
}

section .section-title {
	text-align: center;
	color: #007b5e;
	margin-bottom: 50px;
	text-transform: uppercase;
}

#footer {
	background: #232323 !important;
}

#footer h5 {
	padding-left: 10px;
	border-left: 3px solid #eeeeee;
	padding-bottom: 6px;
	margin-bottom: 20px;
	color: #ffffff;
}

#footer a {
	color: #ffffff;
	text-decoration: none !important;
	background-color: transparent;
	-webkit-text-decoration-skip: objects;
}

#footer ul.social li {
	padding: 3px 0;
}

#footer ul.social li a i {
	margin-right: 5px;
	font-size: 25px;
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	transition: .5s all ease;
}

#footer ul.social li:hover a i {
	font-size: 30px;
	margin-top: -10px;
}

#footer ul.social li a, #footer ul.quick-links li a {
	color: #979797;
}

#footer ul.quick-links li a:hover {
	color: #fff;
}

#footer ul.social li a:hover {
	color: #eeeeee;
}

#footer ul.quick-links li {
	padding: 3px 0;
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	transition: .5s all ease;
}

#footer ul.quick-links li:hover {
	padding: 3px 0;
	margin-left: 5px;
	font-weight: 700;
}

#footer ul.quick-links li a i {
	margin-right: 5px;
}

#footer ul.quick-links li:hover a i {
	font-weight: 700;
}

@media ( max-width :767px) {
	#footer h5 {
		padding-left: 0;
		border-left: transparent;
		padding-bottom: 0px;
		margin-bottom: 10px;
	}
}

/*-----scroll-top-----*/
.scroll-top-wrapper {
	position: fixed;
	opacity: 0;
	visibility: hidden;
	overflow: hidden;
	text-align: center;
	z-index: 99999999;
	background-color: #777777;
	color: #eeeeee;
	width: 50px;
	height: 48px;
	line-height: 48px;
	right: 30px;
	bottom: 30px;
	padding-top: 2px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 10px;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
}

.scroll-top-wrapper:hover {
	background-color: #888888;
}

.scroll-top-wrapper.show {
	visibility: visible;
	cursor: pointer;
	opacity: 1.0;
}

.scroll-top-wrapper i.fa {
	line-height: inherit;
}
</style>

</head>
<body>
	
	<form method="post">
		<header class="masthead text-white text-center">
			
			<div class="container">
				<div class="row">
					<div class="col-xl-9 mx-auto mt-3">
						<h1 class="mb-5">Select a Category</h1>
					</div>
					<div class="col-xl-12 mx-auto order-now my-padding">
						<c:forEach var="d" items="${requestScope.cat_name}">
							<label> <input type="radio" name="cat_name" value="${d}" checked/>
								<p class="h3">${d}</p>
								<br>
							</label>
							<br>
						</c:forEach>

					</div>
					<div class="col-xl-12 mx-auto order-now my-padding" ><input type="submit" value="Show Items"></div>
				</div>
			</div>
		</header>

	</form>
	<br>
	<div align="center">
		<a href="<spring:url value='/admin/home'/>">Go to Home
			Page </a>
	</div>
	
	<!-- 
	<form method="post">
		<c:forEach var="d" items="${requestScope.cat_name}">
			<label> <input type="radio" name="cat_name" value="${d}" />
				<span class="radio"></span> <span>${d}</span>
			</label>
			<br>
		</c:forEach>
		<input type="submit" value="Show Items">
	</form>
	 -->
</body>
</html>