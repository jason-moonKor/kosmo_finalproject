<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.milsoosellers.biz.order_list.Order_ListVO" %>
<%@ page import="com.milsoosellers.biz.order_list.impl.Order_ListDAO" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta	name="viewport"	content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
		<!-- <meta name="description" content="" />
		<meta name="author" content="" /> -->
		<title>밀수업자들 TEST UI 페이지</title>
		<!-- Favicon -->
		<link rel="icon" type="image/x-icon" href="./assets/img/icon_logo.png" />
		<!-- Font Awesome icons (free version) -->
		<script
			defer
			src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
		></script>
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
		<!-- Core theme CSS (includes Bootstrap)-->
		<link href="css/styles.css" rel="stylesheet" />
		<style>
			.b {
				border: solid 1px red;
			}
		</style>
	</head>
	<body id="page-top">
	<!-- Navigation-->
	<%@include file="navigation.jsp" %>

	<section class="page-section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<div class="d-flex flex-column flex-shrink-0 p-3 ">
						<span class="fs-4 text-center">MY PAGE</span> <br>

						<ul class="nav nav-pills flex-column mb-auto">
							<li>나의 쇼핑</li>
							<hr>
							<li class="nav-item"><a href="./myorder.html"
								class="nav-link link-dark"> <svg class="bi me-2" width="16"
										height="16">
										<use xlink:href="#speedometer2"></use></svg> 주문배송
							</a></li>
							<li><a href="./myrefund.html" class="nav-link link-dark">
									<svg class="bi me-2" width="16" height="16">
										<use xlink:href="#speedometer2"></use></svg> 취소환불
							</a></li>
							<li><a href="./myaddr.html" class="nav-link link-dark">
									<svg class="bi me-2" width="16" height="16">
										<use xlink:href="#table"></use></svg> 배송주소록
							</a></li>
							<br>
							<br>
							<li>나의 활동</li>
							<hr>
							<li><a href="./myqna.html" class="nav-link link-dark"> <svg
										class="bi me-2" width="16" height="16">
										<use xlink:href="#grid"></use></svg> 1:1 문의
							</a></li>
							<br>
							<br>
							<li>나의 정보</li>
							<hr>
							<li><a href="./myinfo.html" class="nav-link link-dark">
									<svg class="bi me-2" width="16" height="16">
										<use xlink:href="#people-circle"></use></svg> 회원정보 수정
							</a></li>
							<li><a href="./withdraw.html" class="nav-link link-dark">
									<svg class="bi me-2" width="16" height="16">
										<use xlink:href="#people-circle"></use></svg> 회원 탈퇴
							</a></li>
						</ul>

					</div>
				</div>



				<div class="col-md-10 p-5">
					<h3 class="text-center">주문/배송 내역</h3>
					<br>
					<br>

					<table class="table table-hover my-5">
						<thead>
							<tr class="text-center bg-warning">
								<th class="col-md-2">날짜</th>
								<th class="col-md-2">주문번호</th>
								<th class="col-md-4">상품</th>
								<th class="col-md-2">주문금액</th>
								<th class="col-md-2">상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="text-center">2022.1.1</th>
								<td class="text-center">2201011234</td>
								<td>부산 언양식 불고기</td>
								<td class="text-center">15900</td>
								<td class="text-center">결제확인</td>
							</tr>
							<tr>
								<th class="text-center">2022.1.2</th>
								<td class="text-center">2201021234</td>
								<td>연안식당 알폭탄 알탕</td>
								<td class="text-center">12900</td>
								<td class="text-center">결제확인</td>
							</tr>
							<tr>
								<th class="text-center">2022.1.3</th>
								<td class="text-center">2201031234</td>
								<td>알이꽉찬 동태탕</td>
								<td class="text-center">12900</td>
								<td class="text-center">결제확인</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
		</div>



	</section>

	<!-- Footer-->
		<%@include file="footer.jsp" %>

		<!-- Portfolio Modals-->
		<%@include file="modals.jsp" %>
		
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
