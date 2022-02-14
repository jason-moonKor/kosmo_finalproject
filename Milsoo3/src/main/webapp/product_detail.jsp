<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<%@ include file = "dbconn_mysql.jsp" %>
<link href="./css/style.css" rel="stylesheet" type="text/css">
<!-- js 파일 include -->
<script type="text/javascript" src="js2.js" ></script> 


		<meta charset="utf-8" />
		<meta
			name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no"
		/>
		<link rel="icon" type="image/x-icon" href="./assets/img/icon_logo.png" />
		<!-- Font Awesome icons (free version) -->
		<script
			defer
			src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
		
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

		<script src="http://code.jquery.com/jquery-1.7.js" type="text/javascript"></script>
		<script src="jquery.bpopup.min.js"></script>
		

		<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		  



		<!-- Google fonts-->
		<link
			href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
			rel="stylesheet"
			type="text/css"
		/>
		<link
			href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
			rel="stylesheet"
			type="text/css"
		/>
		<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
		<!-- Core theme CSS (includes Bootstrap)-->
		<link href="css/styles.css" rel="stylesheet" />

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		

<meta charset="UTF-8">
<title>메인</title>
</head>
	<body id="page-top">


		<!-- Navigation-->
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
			<div class="container">
				<a class="navbar-brand" href="#page-top">MilsooSellers</a>
				<!-- <img src="icon.png" / width="25px"> -->
				<i id="iconn" class="fas fa-seedling"></i>
				<button
					class="navbar-toggler"
					type="button"
					data-bs-toggle="collapse"
					data-bs-target="#navbarResponsive"
					aria-controls="navbarResponsive"
					aria-expanded="false"
					aria-label="Toggle navigation"
				>
					Menu
					<i class="fas fa-bars ms-1"></i>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
						<li class="nav-item">
							<a class="nav-link" href="#services">Login</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#portfolio">Join Us</a>
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
					</ul>
				</div>
			</div>
		</nav>
		<!-- Masthead-->
		<header class="masthead">
			<div class="container">
				<div class="masthead-subheading">
					Welcome To Our MilsooSellers Page!
				</div>
				<div class="masthead-heading text-uppercase">This is Test UI Page</div>
				<a class="btn btn-primary btn-xl text-uppercase" href="#one">
					아래로 내려가기 TEST 버튼
				</a>
			</div>
		</header>

		<br><br><br>
		<!-- Services-->
	

        <!-- 상품 정보 -->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="https://sjnfzdfjrjgl1655541.cdn.ntruss.com/goods/2/2022/01/1174_tmp_4d01d15cd53844d2a187171c41d75afd9547large.jpg" alt="..." />
					</div>
                    <div class="col-md-6">
                        <div class="small mb-1">한식</div>


					<h1 class="display-5 fw-bolder">알짜배기 듬뿍 해물탕</h1> <br>
						<!-- 준비 과정, 준비물 -->
					<sapn><ul class="method" style="border-bottom: 1px solid darkgrey; padding-bottom: 12px;
						font-family: 'Noto Sans KR', sans-serif;  letter-spacing: -0.5px;"></sapn>
							
							<li style=" padding-left:  0;">3인분</li>
							<li>조리 20분</li>
							<li>준비 30분</li> <span>    <div class="label_content">
								<input type="checkbox" id="info">
								<label for="info" style="color: #ffc800"><i class="far fa-question-circle fa-1x"></label></i>
								<!-- On 버튼 -->
								<div class="content" style="height: 0;"><!-- 컨텐츠 -->
									<div style="font-size: 13px; background-color: #ffffff; border: solid 1px #101010;">
										<h5 style="line-height: 24px;">준비시간</h5>
										해동 또는 양념 재우기 준비가 필요한 메뉴 입니다. 
												</div>
												<label for="info"><span style="width: 0; height: 0;">x</span></label>
												<!-- c lose 버튼 -->
											</div>
										</div> 
										</span>
							</ul> 

							
						
						<!-- 판매가 -->
                        <div class="mb-3 fw-bolder" id="price" 
						style="border-bottom: 1px solid rgb(182, 182, 182); padding-bottom: 8px; padding-top: 10px;
						font-family:'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial, sans-serif; 
						letter-spacing: -0.5px;">
							판매가 &emsp; 
							<span style="font-size: 25px;">
								&emsp;17,000원
							</span>
                        </div>
						
						

						<!-- 배송정보 -->
						<div>
                        <p class="fw-bolder" id=""
						style="font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial, sans-serif;

						font-size: 13px; line-height: 20px; letter-spacing: -0.5px; color: #606060;
						border-bottom: 1px solid rgb(182, 182, 182); padding-bottom: 10px;">
							
							배송방법 &emsp;&emsp;&emsp;&emsp;&emsp;
							<span style="color: #101010;">   새벽배송</span>   

							<span style="letter-spacing: -0.5px;line-height: 20px;">
								
							</span>  <br> 
							배송비 &emsp;&emsp;&ensp;&ensp;&emsp;&emsp;&emsp; <span style="color: #101010;">무료</span>
						
						
						</p>
						</div>
						
							
						
						
					

				
							
						<div style="background-color: #f7f7f7; font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial, sans-serif;
						font-size: 13px;  text-align: center; padding:1rem; line-height: 20px; letter-spacing: -0.5px;"> 
							<div>
							<span style="color: #015043;"> <i class="fas fa-cloud-moon fa-1x"></i></span>	<span class="fw-bolder" style="color: #008a73;">새벽배송</span>
							<br> <strong>오후 10:00</strong>  까지 <strong>주문</strong> 시  <strong>내일 아침 6시 </strong> 전 <strong> 도착 </strong>

							</div>
						</div>
						
						
						<div class="d-flex" style="font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial, sans-serif;
						border-bottom: 2px solid #202020; padding-top: 24px;">
						
						</div>



						

						<!-- 수량 -->

						<div class="d-flex" id="amo"
						style="font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial, sans-serif;
						padding-top: 15px; float: right; font-size: 13px; letter-spacing: -0.5px; line-height: 23px;
						color:#606060">
						<strong>주문마감시간 오후 10시</strong>&ensp; <span style="color:#ffc800"><i class="fas fa-exclamation-circle fa-lg"></i></a></span>
						</div>

			



						<!-- 옵션 선택 -->
					<!-- 
						<div class="text_ul_wrap" id="option">
							<a href="javascript:;"><strong style="color: #606060; background-color: white;">옵션을 선택 해주세요</strong></a>
							<ul class="ul_select_style" style="height: 400px;">
							<li style="width:588px; background-color: white;"> <strong>알짜배기 듬뿍 해물탕</strong> &emsp;&emsp;&emsp; <strong>17,000원</strong> </li>
								
								
							</ul>
						</div>
						 -->
						
							<form name="form" method="get">
							수량 : <input type=hidden name="sell_price" value="5500">
							<input type="text" name="amount" value="1" size="3" onchange="change();">
							<input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();"><br>
							
							금액 : <input type="text" name="sum" size="11" readonly>원
							</form>
					
						<br>



						<!-- 수량 -->
						<!--  

						<dl style="font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial, sans-serif;
						padding-top: 15px; font-size: 20px; letter-spacing: -1.2px; line-height: 23px;">
							<dt style=" float:left; line-height: 30px; font-weight: 700; ">
							수량
							<span id="cartCon">0</span>
							<span>개</span>
							</dt>

							<dd class="total" id="total" style="float: right ; color: #EE0700;  font-weight: 700;
							font-size: 32px;"> 
								0
								<span class="won">원</span>
							</dd>

						
						</dl>
						-->
						
						

						<br>
							<!-- 구매하기  -->

						<div id="구매하기" style=" padding-top: 15px; height: 100px;" >
												<!-- 공유 -->
							<a href="#"><i class="fas fa-share-alt fa-3x" style="line-height: 27px; padding-top:10px; color: gray;" ></i> </a>
						


							<button type="button" class="btn" onclick="addCart()" style="display: inline-block;
							height: 70px; font-size: 20px; line-height: 27px; width:500px; background-color:#6cc72f;  float: right;
							font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial, sans-serif;"> <span><strong>장바구니</strong></span></button>

						</div>

						
						
				




						</div>



                </div>
            </div>
        </section>


	
	

		<!-- 추천 메뉴 -->

		<p class="h-line">추천 메뉴</p>

		
        <!-- Related items section-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">다른 고객이 많이 구매한 메뉴</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
							                            <!-- Sale badge-->
														<div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">세일</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">감성낙곱새 낙대새</h5>
                                    <!-- Product price-->
									<span class="text-muted text-decoration-line-through">23,900원</span>
                                    12,900원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">장바구니</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">세일</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">백년가게 싱글벙글 직화 불막창세트</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">9,900원</span>
                                    8,900원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">장바구니</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">세일</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"> 백년가게 풍미통닭 직화무뼈치즈불닭</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">7,900원</span>
                                    6,900원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">장바구니</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">V2 치폴레 찹스테이크</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    14,900원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">장바구니</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
		<br><br><br><br><br>

		
	
				<!-- 상세페이지 -->
				<div class="tab_content">

					<!-- 버튼 -->
					<input type="radio" name="tabmenu" id="tab01" checked>
					<label for="tab01"><strong>상세페이지</strong></label>

					<input type="radio" name="tabmenu" id="tab02" >
					<label for="tab02"><strong>배송정보</strong></label>

				
					<!-- 내용 -->
					<div class="conbox con1" style="min-height: 7700px;"><div id="view_con">
						<div style="max-height: 1000000px; font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial, sans-serif;"> 
						<p id="새벽정보" class="fw-bolder" style="text-align: center; font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial, sans-serif;
						"> <br> 
						<i class="fas fa-shipping-fast fa-2x" style="text-align: center;"></i> <br> 새벽배송정보
							<h5 style="text-align: center;">오후 10시 이전 주문/결제 <i class="fas fa-chevron-right fa-1x"></i> 재료 준비/발송 <i class="fas fa-chevron-right fa-1x"></i> 다음날 새벽 수령</h5>
						</p>
						
						<p id="상품정보" style="text-align: center;">
							<img src="img/1.jpg"  class="txc-image" style="font-size: 9pt; clear: none; float: none; width:966px; height: 7500px;">
							
						</p>

						<br><br><br><br>
						</div> 
					</div>

					</div>

					
					<div class="conbox con2"> 
						<p id="상품정보" style="text-align: center;">
							<img src="img/2.png" class="txc-image" style="font-size: 9pt; clear: none; float: none; width:900; height:677;">
						


					</div>
					
				
				</div>

				



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
								<button
									class="btn btn-secondary dropdown-toggle"
									type="button"
									id="dropdownMenu2"
									data-bs-toggle="dropdown"
									aria-expanded="false"
								>
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

		<!-- Bootstrap core JS-->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- Core theme JS-->
		<script src="js/scripts.js"></script>
		<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
		<!-- * *                               SB Forms JS                               * *-->
		<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
		<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
		
		<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
		
		
	</body>
</html>