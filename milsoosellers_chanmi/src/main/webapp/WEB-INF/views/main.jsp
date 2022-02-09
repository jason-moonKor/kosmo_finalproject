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
	<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />
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
			width: 92%;
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
			/* transition: all ease-in-out .3s; */
			opacity: 1;
		}

		.slick-active {
			opacity: 1;
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
		.draggable {
			padding: 0px !important;
		}
		#newItem,
		#bestItem,
		#bestRe,
		#loog {
			margin-bottom: -90px;
			padding-left: 60px;
		}
		#bestRe {
			margin-top: 80px;
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
			<div>
				<h4 id="newItem">
					<bold>새로 나왔어요!!!</bold>
				</h4>
			</div>
			<div class="products slider">
			
					<!-- Portfolio item 1-->
				<div class="portfolio-item">
					<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="/resources/assets/img/new/img1.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/new/img2.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/new/img3.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/new/img4.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/new/img5.jpg" alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Southwest</div>
							<div class="portfolio-caption-subheading text-muted">
								Website Design
							</div>
						</div>
					</div>
				</div>
			</div>


			<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
			<script src="/resources/js/slick.js" type="text/javascript" charset="utf-8"></script>
			<script>
				$(".products").slick({
					infinite: true,
					centerMode: true,
					slidesToShow: 3,
					slidesToScroll: 3
				});
			</script>
			<!--중간 끝-->
			
			
			
			<h4 id="bestItem">
					<bold>베스트</bold>
				</h4>
			
			<div class="products slider slider1">
			
					<!-- Portfolio item 1-->
				<div class="portfolio-item">
					<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="/resources/assets/img/best/best1.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/best/best2.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/best/best3.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/best/best4.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/best/best5.jpg" alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Southwest</div>
							<div class="portfolio-caption-subheading text-muted">
								Website Design
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<script>
				$(".slider1").slick({
					infinite: true,
					centerMode: true,
					slidesToShow: 4,
					slidesToScroll: 3
				});
			</script>
			
			
			<img src="/resources/assets/img/banner.jpg">
			
				<h6 id="bestRe">
					<bold>재구매Best</bold>
				</h6>
			<div class="products slider slider2">
			
					<!-- Portfolio item 1-->
				<div class="portfolio-item">
					<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="/resources/assets/img/re/re1.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/re/re2.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/re/re3.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/re/re4.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/re/re5.jpg" alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Southwest</div>
							<div class="portfolio-caption-subheading text-muted">
								Website Design
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
							<img class="img-fluid" src="/resources/assets/img/re/re6.jpg" alt="..." />
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
					<!-- Portfolio item 4-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="/resources/assets/img/re/re7.jpg" alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Lines</div>
							<div class="portfolio-caption-subheading text-muted">
								Branding
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<script>
				$(".slider2").slick({
					infinite: true,
					centerMode: true,
					slidesToShow: 5,
					slidesToScroll: 3
				});
			</script>
			
				<h6 id="loog">
					<bold>정기구독</bold>
				</h6>
			<div class="products slider slider3">
			
					<!-- Portfolio item 1-->
				<div class="portfolio-item">
					<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="/resources/assets/img/loog/loog1.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/re/re7.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/re/re8.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/loog/loog2.jpg" alt="..." />
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
							<img class="img-fluid" src="/resources/assets/img/loog/loog3.jpg" alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Southwest</div>
							<div class="portfolio-caption-subheading text-muted">
								Website Design
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
							<img class="img-fluid" src="/resources/assets/img/loog/loog4.jpg" alt="..." />
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
					<!-- Portfolio item 4-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="/resources/assets/img/loog/loog5.jpg" alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">Lines</div>
							<div class="portfolio-caption-subheading text-muted">
								Branding
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<script>
				$(".slider3").slick({
					infinite: true,
					centerMode: true,
					slidesToShow: 5,
					slidesToScroll: 3
				});
			</script>
			



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