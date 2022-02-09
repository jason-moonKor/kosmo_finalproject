<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<!-- <meta name="description" content="" />
		<meta name="author" content="" /> -->
	<title>밀수업자들 TEST UI 페이지</title>
	<!-- Slick -->
	<link rel="stylesheet" type="text/css" href="/resources/css/slick.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/slick-theme.css">
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<!-- Favicon -->
	<link rel="icon" type="image/x-icon" href="/resources/assets/img/icon_logo.png" />
	<!-- Font Awesome icons (free version) -->
	<script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="/resources/css/styles.css" rel="stylesheet" />
	<!--내가 추가함-->
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script>
		$('.portfolio-item').slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 2000,
		});
	</script>
	<!--응 내가 추가-->

	<style type="text/css">
		.slider {
			width: 100%;
			margin: 100px auto;
		}

		.slick-slide {
			margin: 0px 20px;
		}

		.slick-slide img {
			width: 100%;
		}

		.slick-prev:before,
		.slick-next:before {
			color: black;
		}

		.slick-slide {
			transition: all ease-in-out .3s;
			opacity: .2;
		}

		.slick-active {
			opacity: .5;
		}

		.slick-current {
			opacity: 1;
		}

		#search-box {
			width: 230px;
			height: 40px;
			border-radius: 4px;
			background: #fff;
		}

		#search-input {
			margin-bottom: 5px;
		}

	</style>
</head>

<body id="page-top">

	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">
				<!-- MilsooSellers -->
				<img src="/resources/assets/img/logos/logo.svg" class="" alt="logo">
			</a>
			<!-- <img src="icon.png" / width="25px"> -->
			<!-- <i id="iconn" class="fas fa-seedling"></i> -->
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				Menu
				<i class="fas fa-bars ms-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
					<li class="nav-item">
						<form action="/">
							<div class="nav-search-icon" id="search-box">
								<input type="text" id="search-input" class="nav-search" name="search" placeholder="Search" >
								<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
								<a href="#"><i class="fa fa-times-circle" aria-hidden="true"></i></a>
							</div>
						</form>
							

					</li>
					
					<c:if test="${loginMember.mem_name == '방문자'}">					
					<li class="nav-item">
						<a class="nav-link" href="/login"></a>
					</li>
					 </c:if>
					 <c:if test="${loginMember.mem_name != '방문자'}">					
					<li class="nav-item">
						<a class="nav-link" href="#">${loginMember.mem_name} 님 </a>
					</li>
					 </c:if>
					
					
					<c:if test="${loginMember.mem_name == '방문자'}">					
					<li class="nav-item">
						<a class="nav-link" href="/login">Sign In</a>
					</li>
					 </c:if>
					 <c:if test="${loginMember.mem_name != '방문자'}">					
					<li class="nav-item">
						<a class="nav-link" href="/logout">logout</a>
					</li>
					 </c:if>
					<li class="nav-item">
						<a class="nav-link" href="/register">Sing Up</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#about">MyPage</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#team">OrderList</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#contact">Cart</a>
					</li>


					<li class="nav-item">
						<div class="dropdown show">
							<a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Category
							</a>

							<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<a class="dropdown-item" href="#">카테고리1</a>
								<a class="dropdown-item" href="#">카테고리2</a>
								<a class="dropdown-item" href="#">카테고리3</a>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead">
		<!-- Bootstrap -->
		<div id="mainSlider" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="slider-img d-block w-100" src="/resources/assets/img/header-bg-1.jpg" alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="slider-img d-block w-100" src="/resources/assets/img/header-bg-2.jpeg" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="slider-img d-block w-100" src="/resources/assets/img/header-bg-3.jpeg" alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#mainSlider" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#mainSlider" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!-- <div class="masthead-subheading">
				Welcome To Our MilsooSellers Page!
			</div>
			<div class="masthead-heading text-uppercase">This is Test UI Page</div> -->
		<!-- <a class="btn btn-primary btn-xl text-uppercase" href="#contact">
				아래로 내려가기 TEST 버튼
			</a> -->
	</header>
	<!-- Services-->

	<!--중간-->
	<section class="page-section bg-light" id="portfolio">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">
					슬라이더 적용 구간
				</h2>
				<h3 class="section-subheading text-muted">
					슬라이더를 적용해야 해!
				</h3>
			</div>

			<section class="products slider">
					<!-- Portfolio item 1-->
				<div class="portfolio-item">
					<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="/resources/assets/img/portfolio/1.jpg" alt="..." />
					</a>
					<div class="portfolio-caption">
						<div class="portfolio-caption-heading">부산집 언양 불고기</div>
						<div class="portfolio-caption-subheading text-muted">
							7,900 원
						</div>
					</div>
				</div>

				<div>
					<!-- Portfolio item 2-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="/resources/assets/img/portfolio/2.jpg" alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Explore</div>
							<div class="portfolio-caption-subheading text-muted">
								Graphic Design
							</div>
						</div>
					</div>
				</div>
				<div>
					<!-- Portfolio item 3-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="/resources/assets/img/portfolio/3.jpg" alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Finish</div>
							<div class="portfolio-caption-subheading text-muted">
								Identity
							</div>
						</div>
					</div>
				</div>
				<div>
					<!-- Portfolio item 4-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="/resources/assets/img/portfolio/4.jpg" alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Lines</div>
							<div class="portfolio-caption-subheading text-muted">
								Branding
							</div>
						</div>
					</div>
				</div>
				<div>
					<!-- Portfolio item 5-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="/resources/assets/img/portfolio/5.jpg" alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Southwest</div>
							<div class="portfolio-caption-subheading text-muted">
								Website Design
							</div>
						</div>
					</div>
				</div>
			</section>


			<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
			<script src="/resources/js/slick.js" type="text/javascript" charset="utf-8"></script>
			<script>
				$(".products").slick({
					//dots: true,
					infinite: true,
					centerMode: true,
					slidesToShow: 3,
					slidesToScroll: 3
				});
			</script>
			<!--중간 끝-->




			<!-- Portfolio Grid-->
			<section class="page-section bg-light" id="portfolio">
				<div class="container">
					<div class="text-center">
						<h2 class="section-heading text-uppercase">
							제품 안내 타입 예시로 쓸수있음
						</h2>
						<h3 class="section-subheading text-muted">
							Lorem ipsum dolor sit amet consectetur.
						</h3>
					</div>
					<div class="row">
						<div class="col-lg-4 col-sm-6 mb-4">
							<!-- Portfolio item 1-->
							<div class="portfolio-item">
								<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
									<div class="portfolio-hover">
										<div class="portfolio-hover-content">
											<i class="fas fa-plus fa-3x"></i>
										</div>
									</div>
									<img class="img-fluid" src="/resources/assets/img/portfolio/1.jpg" alt="..." />
								</a>
								<div class="portfolio-caption">
									<div class="portfolio-caption-heading">Threads</div>
									<div class="portfolio-caption-subheading text-muted">
										Illustration
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6 mb-4">
							<!-- Portfolio item 2-->
							<div class="portfolio-item">
								<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
									<div class="portfolio-hover">
										<div class="portfolio-hover-content">
											<i class="fas fa-plus fa-3x"></i>
										</div>
									</div>
									<img class="img-fluid" src="/resources/assets/img/portfolio/2.jpg" alt="..." />
								</a>
								<div class="portfolio-caption">
									<div class="portfolio-caption-heading">Explore</div>
									<div class="portfolio-caption-subheading text-muted">
										Graphic Design
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6 mb-4">
							<!-- Portfolio item 3-->
							<div class="portfolio-item">
								<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
									<div class="portfolio-hover">
										<div class="portfolio-hover-content">
											<i class="fas fa-plus fa-3x"></i>
										</div>
									</div>
									<img class="img-fluid" src="/resources/assets/img/portfolio/3.jpg" alt="..." />
								</a>
								<div class="portfolio-caption">
									<div class="portfolio-caption-heading">Finish</div>
									<div class="portfolio-caption-subheading text-muted">
										Identity
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
							<!-- Portfolio item 4-->
							<div class="portfolio-item">
								<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
									<div class="portfolio-hover">
										<div class="portfolio-hover-content">
											<i class="fas fa-plus fa-3x"></i>
										</div>
									</div>
									<img class="img-fluid" src="/resources/assets/img/portfolio/4.jpg" alt="..." />
								</a>
								<div class="portfolio-caption">
									<div class="portfolio-caption-heading">Lines</div>
									<div class="portfolio-caption-subheading text-muted">
										Branding
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
							<!-- Portfolio item 5-->
							<div class="portfolio-item">
								<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
									<div class="portfolio-hover">
										<div class="portfolio-hover-content">
											<i class="fas fa-plus fa-3x"></i>
										</div>
									</div>
									<img class="img-fluid" src="/resources/assets/img/portfolio/5.jpg" alt="..." />
								</a>
								<div class="portfolio-caption">
									<div class="portfolio-caption-heading">Southwest</div>
									<div class="portfolio-caption-subheading text-muted">
										Website Design
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<!-- Portfolio item 6-->
							<div class="portfolio-item">
								<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
									<div class="portfolio-hover">
										<div class="portfolio-hover-content">
											<i class="fas fa-plus fa-3x"></i>
										</div>
									</div>
									<img class="img-fluid" src="/resources/assets/img/portfolio/6.jpg" alt="..." />
								</a>
								<div class="portfolio-caption">
									<div class="portfolio-caption-heading">Window</div>
									<div class="portfolio-caption-subheading text-muted">
										Photography
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- About-->
			<section class="page-section" id="about">
				<div class="container">
					<div class="text-center">
						<h2 class="section-heading text-uppercase">
							만드는 과정으로 풀이하거나 제품 제조과정소개
						</h2>
						<h3 class="section-subheading text-muted">
							Lorem ipsum dolor sit amet consectetur.
						</h3>
					</div>
					<ul class="timeline">
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="/resources/assets/img/about/1.jpg" alt="..." />
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2009-2011</h4>
									<h4 class="subheading">Our Humble Beginnings</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt
										ut voluptatum eius sapiente, totam reiciendis temporibus qui
										quibusdam, recusandae sit vero unde, sed, incidunt et ea quo
										dolore laudantium consectetur!
									</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="/resources/assets/img/about/2.jpg" alt="..." />
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>March 2011</h4>
									<h4 class="subheading">An Agency is Born</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt
										ut voluptatum eius sapiente, totam reiciendis temporibus qui
										quibusdam, recusandae sit vero unde, sed, incidunt et ea quo
										dolore laudantium consectetur!
									</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="/resources/assets/img/about/3.jpg" alt="..." />
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>December 2015</h4>
									<h4 class="subheading">Transition to Full Service</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt
										ut voluptatum eius sapiente, totam reiciendis temporibus qui
										quibusdam, recusandae sit vero unde, sed, incidunt et ea quo
										dolore laudantium consectetur!
									</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="/resources/assets/img/about/4.jpg" alt="..." />
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>July 2020</h4>
									<h4 class="subheading">Phase Two Expansion</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt
										ut voluptatum eius sapiente, totam reiciendis temporibus qui
										quibusdam, recusandae sit vero unde, sed, incidunt et ea quo
										dolore laudantium consectetur!
									</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<h4>
									Be Part
									<br />
									Of Our
									<br />
									Story!
								</h4>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- Team-->
			<section class="page-section bg-light" id="team">
				<div class="container">
					<div class="text-center">
						<h2 class="section-heading text-uppercase">팀 소개해도되고 말고</h2>
						<h3 class="section-subheading text-muted">
							Lorem ipsum dolor sit amet consectetur.
						</h3>
					</div>
					<div class="row">
						<div class="col-lg-4">
							<div class="team-member">
								<img class="mx-auto rounded-circle" src="/resources/assets/img/team/1.jpg" alt="..." />
								<h4>Parveen Anand</h4>
								<p class="text-muted">Lead Designer</p>
								<a class="btn btn-dark btn-social mx-2" href="#!">
									<i class="fab fa-twitter"></i>
								</a>
								<a class="btn btn-dark btn-social mx-2" href="#!">
									<i class="fab fa-facebook-f"></i>
								</a>
								<a class="btn btn-dark btn-social mx-2" href="#!">
									<i class="fab fa-linkedin-in"></i>
								</a>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="team-member">
								<img class="mx-auto rounded-circle" src="/resources/assets/img/team/2.jpg" alt="..." />
								<h4>Diana Petersen</h4>
								<p class="text-muted">Lead Marketer</p>
								<a class="btn btn-dark btn-social mx-2" href="#!">
									<i class="fab fa-twitter"></i>
								</a>
								<a class="btn btn-dark btn-social mx-2" href="#!">
									<i class="fab fa-facebook-f"></i>
								</a>
								<a class="btn btn-dark btn-social mx-2" href="#!">
									<i class="fab fa-linkedin-in"></i>
								</a>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="team-member">
								<img class="mx-auto rounded-circle" src="/resources/assets/img/team/3.jpg" alt="..." />
								<h4>Larry Parker</h4>
								<p class="text-muted">Lead Developer</p>
								<a class="btn btn-dark btn-social mx-2" href="#!">
									<i class="fab fa-twitter"></i>
								</a>
								<a class="btn btn-dark btn-social mx-2" href="#!">
									<i class="fab fa-facebook-f"></i>
								</a>
								<a class="btn btn-dark btn-social mx-2" href="#!">
									<i class="fab fa-linkedin-in"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-8 mx-auto text-center">
							<p class="large text-muted">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut
								eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam
								corporis ea, alias ut unde.
							</p>
						</div>
					</div>
				</div>
			</section>
			<!-- Clients-->
			<div class="py-5">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-md-3 col-sm-6 my-3">
							<a href="#!">
								<img class="img-fluid img-brand d-block mx-auto" src="/resources/assets/img/logos/microsoft.svg"
									alt="..." />
							</a>
						</div>
						<div class="col-md-3 col-sm-6 my-3">
							<a href="#!">
								<img class="img-fluid img-brand d-block mx-auto" src="/resources/assets/img/logos/google.svg"
									alt="..." />
							</a>
						</div>
						<div class="col-md-3 col-sm-6 my-3">
							<a href="#!">
								<img class="img-fluid img-brand d-block mx-auto" src="/resources/assets/img/logos/facebook.svg"
									alt="..." />
							</a>
						</div>
						<div class="col-md-3 col-sm-6 my-3">
							<a href="#!">
								<img class="img-fluid img-brand d-block mx-auto" src="/resources/assets/img/logos/ibm.svg"
									alt="..." />
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Contact-->
			<section class="page-section" id="contact">
				<div class="container">
					<div class="text-center">
						<h2 class="section-heading text-uppercase">Contact Us 및 문의하기</h2>
						<h3 class="section-subheading text-muted">
							Lorem ipsum dolor sit amet consectetur.
						</h3>
					</div>
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form id="contactForm" data-sb-form-api-token="API_TOKEN">
						<div class="row align-items-stretch mb-5">
							<div class="col-md-6">
								<div class="form-group">
									<!-- Name input-->
									<input class="form-control" id="name" type="text" placeholder="Your Name *"
										data-sb-validations="required" />
									<div class="invalid-feedback" data-sb-feedback="name:required">
										A name is required.
									</div>
								</div>
								<div class="form-group">
									<!-- Email address input-->
									<input class="form-control" id="email" type="email" placeholder="Your Email *"
										data-sb-validations="required,email" />
									<div class="invalid-feedback" data-sb-feedback="email:required">
										An email is required.
									</div>
									<div class="invalid-feedback" data-sb-feedback="email:email">
										Email is not valid.
									</div>
								</div>
								<div class="form-group mb-md-0">
									<!-- Phone number input-->
									<input class="form-control" id="phone" type="tel" placeholder="Your Phone *"
										data-sb-validations="required" />
									<div class="invalid-feedback" data-sb-feedback="phone:required">
										A phone number is required.
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-textarea mb-md-0">
									<!-- Message input-->
									<textarea class="form-control" id="message" placeholder="Your Message *"
										data-sb-validations="required"></textarea>
									<div class="invalid-feedback" data-sb-feedback="message:required">
										A message is required.
									</div>
								</div>
							</div>
						</div>
						<!-- Submit success message-->
						<!---->
						<!-- This is what your users will see when the form-->
						<!-- has successfully submitted-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center text-white mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at
								<br />
								<a href="https://startbootstrap.com/solution/contact-forms">
									https://startbootstrap.com/solution/contact-forms
								</a>
							</div>
						</div>
						<!-- Submit error message-->
						<!---->
						<!-- This is what your users will see when there is-->
						<!-- an error submitting the form-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">
								Error sending message!
							</div>
						</div>
						<!-- Submit Button-->
						<div class="text-center">
							<button class="btn btn-primary btn-xl text-uppercase disabled" id="submitButton"
								type="submit">
								Send Message
							</button>
						</div>
					</form>
				</div>
			</section>
			<!-- Footer-->
			<footer class="footer py-4">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-5 text-sm-start">
							홈 | 서비스소개 | 이용약관 | 개인정보보호취급 | 밀수업자들
							채용사이트
						</div>
						<div class="col-lg-4 my-3 my-lg-0">
							<a class="btn btn-dark btn-social mx-2" href="#!">
								<i class="fab fa-twitter"></i>
							</a>
							<a class="btn btn-dark btn-social mx-2" href="#!">
								<i class="fab fa-facebook-f"></i>
							</a>
							<a class="btn btn-dark btn-social mx-2" href="#!">
								<i class="fab fa-linkedin-in"></i>
							</a>
						</div>
						<div class="col-lg-3 text-lg-end">
							<a class="link-dark text-decoration-none me-3" href="#!">
								<div class="dropdown">
									<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2"
										data-bs-toggle="dropdown" aria-expanded="false">
										Family Site
									</button>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
										<li>
											<button class="dropdown-item" type="button">
												Family Site
											</button>
										</li>
										<li>
											<button class="dropdown-item" type="button">
												밀수업자들 홈페이지
											</button>
										</li>
									</ul>
								</div>
							</a>
						</div>
					</div>
				</div>
			</footer>
			<!-- Portfolio Modals-->
			<!-- Portfolio item 1 modal popup-->
			<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="close-modal" data-bs-dismiss="modal">
							<img src="/resources/assets/img/close-icon.svg" alt="Close modal" />
						</div>
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-8">
									<div class="modal-body">
										<!-- Project details-->
										<h2 class="text-uppercase">Project Name</h2>
										<p class="item-intro text-muted">
											Lorem ipsum dolor sit amet consectetur.
										</p>
										<img class="img-fluid d-block mx-auto" src="/resources/assets/img/portfolio/1.jpg"
											alt="..." />
										<p>
											Use this area to describe your project. Lorem ipsum dolor
											sit amet, consectetur adipisicing elit. Est blanditiis
											dolorem culpa incidunt minus dignissimos deserunt repellat
											aperiam quasi sunt officia expedita beatae cupiditate,
											maiores repudiandae, nostrum, reiciendis facere nemo!
										</p>
										<ul class="list-inline">
											<li>
												<strong>Client:</strong>
												Threads
											</li>
											<li>
												<strong>Category:</strong>
												Illustration
											</li>
										</ul>
										<button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal"
											type="button">
											<i class="fas fa-times me-1"></i>
											Close Project
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Portfolio item 2 modal popup-->
			<div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="close-modal" data-bs-dismiss="modal">
							<img src="/resources/assets/img/close-icon.svg" alt="Close modal" />
						</div>
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-8">
									<div class="modal-body">
										<!-- Project details-->
										<h2 class="text-uppercase">Project Name</h2>
										<p class="item-intro text-muted">
											Lorem ipsum dolor sit amet consectetur.
										</p>
										<img class="img-fluid d-block mx-auto" src="/resources/assets/img/portfolio/2.jpg"
											alt="..." />
										<p>
											Use this area to describe your project. Lorem ipsum dolor
											sit amet, consectetur adipisicing elit. Est blanditiis
											dolorem culpa incidunt minus dignissimos deserunt repellat
											aperiam quasi sunt officia expedita beatae cupiditate,
											maiores repudiandae, nostrum, reiciendis facere nemo!
										</p>
										<ul class="list-inline">
											<li>
												<strong>Client:</strong>
												Explore
											</li>
											<li>
												<strong>Category:</strong>
												Graphic Design
											</li>
										</ul>
										<button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal"
											type="button">
											<i class="fas fa-times me-1"></i>
											Close Project
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Portfolio item 3 modal popup-->
			<div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="close-modal" data-bs-dismiss="modal">
							<img src="/resources/assets/img/close-icon.svg" alt="Close modal" />
						</div>
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-8">
									<div class="modal-body">
										<!-- Project details-->
										<h2 class="text-uppercase">Project Name</h2>
										<p class="item-intro text-muted">
											Lorem ipsum dolor sit amet consectetur.
										</p>
										<img class="img-fluid d-block mx-auto" src="/resources/assets/img/portfolio/3.jpg"
											alt="..." />
										<p>
											Use this area to describe your project. Lorem ipsum dolor
											sit amet, consectetur adipisicing elit. Est blanditiis
											dolorem culpa incidunt minus dignissimos deserunt repellat
											aperiam quasi sunt officia expedita beatae cupiditate,
											maiores repudiandae, nostrum, reiciendis facere nemo!
										</p>
										<ul class="list-inline">
											<li>
												<strong>Client:</strong>
												Finish
											</li>
											<li>
												<strong>Category:</strong>
												Identity
											</li>
										</ul>
										<button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal"
											type="button">
											<i class="fas fa-times me-1"></i>
											Close Project
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Portfolio item 4 modal popup-->
			<div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="close-modal" data-bs-dismiss="modal">
							<img src="/resources/assets/img/close-icon.svg" alt="Close modal" />
						</div>
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-8">
									<div class="modal-body">
										<!-- Project details-->
										<h2 class="text-uppercase">Project Name</h2>
										<p class="item-intro text-muted">
											Lorem ipsum dolor sit amet consectetur.
										</p>
										<img class="img-fluid d-block mx-auto" src="/resources/assets/img/portfolio/4.jpg"
											alt="..." />
										<p>
											Use this area to describe your project. Lorem ipsum dolor
											sit amet, consectetur adipisicing elit. Est blanditiis
											dolorem culpa incidunt minus dignissimos deserunt repellat
											aperiam quasi sunt officia expedita beatae cupiditate,
											maiores repudiandae, nostrum, reiciendis facere nemo!
										</p>
										<ul class="list-inline">
											<li>
												<strong>Client:</strong>
												Lines
											</li>
											<li>
												<strong>Category:</strong>
												Branding
											</li>
										</ul>
										<button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal"
											type="button">
											<i class="fas fa-times me-1"></i>
											Close Project
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Portfolio item 5 modal popup-->
			<div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="close-modal" data-bs-dismiss="modal">
							<img src="/resources/assets/img/close-icon.svg" alt="Close modal" />
						</div>
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-8">
									<div class="modal-body">
										<!-- Project details-->
										<h2 class="text-uppercase">Project Name</h2>
										<p class="item-intro text-muted">
											Lorem ipsum dolor sit amet consectetur.
										</p>
										<img class="img-fluid d-block mx-auto" src="/resources/assets/img/portfolio/5.jpg"
											alt="..." />
										<p>
											Use this area to describe your project. Lorem ipsum dolor
											sit amet, consectetur adipisicing elit. Est blanditiis
											dolorem culpa incidunt minus dignissimos deserunt repellat
											aperiam quasi sunt officia expedita beatae cupiditate,
											maiores repudiandae, nostrum, reiciendis facere nemo!
										</p>
										<ul class="list-inline">
											<li>
												<strong>Client:</strong>
												Southwest
											</li>
											<li>
												<strong>Category:</strong>
												Website Design
											</li>
										</ul>
										<button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal"
											type="button">
											<i class="fas fa-times me-1"></i>
											Close Project
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Portfolio item 6 modal popup-->
			<div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="close-modal" data-bs-dismiss="modal">
							<img src="/resources/assets/img/close-icon.svg" alt="Close modal" />
						</div>
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-8">
									<div class="modal-body">
										<!-- Project details-->
										<h2 class="text-uppercase">Project Name</h2>
										<p class="item-intro text-muted">
											Lorem ipsum dolor sit amet consectetur.
										</p>
										<img class="img-fluid d-block mx-auto" src="/resources/assets/img/portfolio/6.jpg"
											alt="..." />
										<p>
											Use this area to describe your project. Lorem ipsum dolor
											sit amet, consectetur adipisicing elit. Est blanditiis
											dolorem culpa incidunt minus dignissimos deserunt repellat
											aperiam quasi sunt officia expedita beatae cupiditate,
											maiores repudiandae, nostrum, reiciendis facere nemo!
										</p>
										<ul class="list-inline">
											<li>
												<strong>Client:</strong>
												Window
											</li>
											<li>
												<strong>Category:</strong>
												Photography
											</li>
										</ul>
										<button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal"
											type="button">
											<i class="fas fa-times me-1"></i>
											Close Project
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Bootstrap core JS-->
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
			<!-- Core theme JS-->
			<script src="/resources/js/scripts.js"></script>
			<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
			<!-- * *                               SB Forms JS                               * *-->
			<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
			<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
			<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>