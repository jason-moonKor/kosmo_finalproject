<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.milsoosellers.biz.mypage.DestinationVO" %>
<%@ page import="com.milsoosellers.biz.mypage.impl.DestinationDAO" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta	name="viewport"	content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
		<!-- <meta name="description" content="" />
		<meta name="author" content="" /> -->
		<title>밀수업자들 TEST UI 페이지</title>
		<!-- Favicon -->
		<link rel="icon" type="image/x-icon" href="../resources/assets/img/icon_logo.png" />
		<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/icon_logo.png" />
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
		<link href="../resources/css/styles.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
		<style>
			.b {
				border: solid 1px red;
			}
		</style>
	</head>
	<body id="page-top">
	<!-- Navigation-->
	<%@ include file="navigation.jsp" %>

	<section class="page-section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<div class="d-flex flex-column flex-shrink-0 p-3 ">
						<span class="fs-4 text-center">MY PAGE</span> <br>

						<ul class="nav nav-pills flex-column mb-auto">
							<li>나의 쇼핑</li>
							<hr>
							<li class="nav-item">
								<a href="myorder.do" class="nav-link link-dark"> 
									<svg class="bi me-2" width="16"	height="16">
										<use xlink:href="#speedometer2"></use>
									</svg> 주문배송
								</a>
							</li>
							<li>
								<a href="myrefund.do" class="nav-link link-dark">
									<svg class="bi me-2" width="16" height="16">
										<use xlink:href="#speedometer2"></use>
									</svg> 취소환불
								</a>
							</li>
							<li>
								<a href="myaddr.do" class="nav-link link-dark">
									<svg class="bi me-2" width="16" height="16">
										<use xlink:href="#table"></use>
									</svg> 배송주소록
								</a>
							</li>
							<br>
							<br>
							<li>나의 활동</li>
							<hr>
							<li>
								<a href="./myqna.jsp" class="nav-link link-dark"> 
								<svg class="bi me-2" width="16" height="16">
									<use xlink:href="#grid"></use>
								</svg> 1:1 문의
								</a>
							</li>
							<br>
							<br>
							<li>나의 정보</li>
							<hr>
							<li>
								<a href="myinfo.do" class="nav-link link-dark">
									<svg class="bi me-2" width="16" height="16">
										<use xlink:href="#people-circle"></use>
									</svg> 회원정보 수정
								</a>
							</li>
							<li>
								<a href="./mypage/withdraw.jsp" class="nav-link link-dark">
									<svg class="bi me-2" width="16" height="16">
										<use xlink:href="#people-circle"></use>
									</svg> 회원 탈퇴
								</a>
							</li>
						</ul>

					</div>
				</div>


				<div class="col-md-10 p-5">
					<h3 class="text-center">배송주소록</h3>
					<br>
					<br>

					<table class="table table-hover my-5">
						<thead>
							<tr class="text-center bg-warning">
								<th class="col-md-1">배송지명</th>
								<th class="col-md-7">주소</th>
								<th class="col-md-2">연락처</th>
								<th class="col-md-2">관리</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${destList}" var="dest">
							<form action="getaddr.do?member_id=${dest.member_id}&dest_id=${dest.dest_id}" method="get">
								<tr>
									<input name="member_id" type="hidden" value="${dest.member_id }">
									<input name="dest_id" type="hidden" value="${dest.dest_id }">
									<input name="member_tel" type="hidden" value="${dest.member_tel }">
									<input name="address" type="hidden" value="${dest.address }">
									<input name="zipcode" type="hidden" value="${dest.zipcode }">
									
									<th class="text-center">${dest.dest_id }</th>
									<td class="text-start">${dest.address }</td>
									<td class="text-center">${dest.member_tel }</td>
									<td class="text-center">
										<input type="submit" class="btn btn-outline-warning btn-sm" value="수정">
										<a href="deleteaddr.do?member_id=${dest.member_id}&dest_id=${dest.dest_id}"><button type="button" class="btn btn-outline-warning btn-sm">삭제</button></a>
									</td>
								</tr>
							</form>
							</c:forEach>
						</tbody>
					</table>
					<a href="mypage/insertaddr.jsp"><button type="button" class="btn btn-warning">등록</button></a>
				</div>

			</div>
		</div>



	</section>

	<!-- Footer-->
		<%@ include file="footer.jsp" %>
		
		<!-- Portfolio Modals-->
		<%@ include file="modals.jsp" %>		
		
		<!-- Bootstrap core JS-->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- Core theme JS-->
		<script src="../resources/js/scripts.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
		<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
		<!-- * *                               SB Forms JS                               * *-->
		<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
		<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
		<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	</body>
</html>
