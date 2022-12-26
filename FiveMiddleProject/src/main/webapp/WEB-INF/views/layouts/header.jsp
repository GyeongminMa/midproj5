<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<!-- Header desktop -->
	<div class="container-menu-desktop">


		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop container">

				<!-- Logo desktop -->
				<a href="main.do" class="logo"> <img src="images/icons/logo-01.png"
					alt="IMG-LOGO">
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">


						<li><a href="product.html">상품목록</a></li>

						<li><a href="blog.html">수강후기</a></li>

						<li><a href="blog.html">공지사항</a></li>

						<li><a href="about.html">FAQ</a></li>

						<li><a href="memberJoinForm.do">내강의실</a></li>
						<c:if test="${memberRole eq 'ADMIN' }">
							<li><a href="adminMemberList.do">관리자페이지</a>
							<ul class="sub-menu">
								<c:if test="${memberRole eq 'ADMIN' }">
									<li><a href="adminProductList.do">강의 관리</a></li>
								</c:if>
								<c:if test="${memberRole eq 'ADMIN' }">
								<li><a href="adminMemberList.do">회원 관리</a></li>
								</c:if>
								<c:if test="${memberRole eq 'ADMIN' }">
								<li><a href="">게시판 관리</a></li>
									</c:if>
							</ul>
							</li>
						</c:if>

						<li class="active-menu">
						<a class="category" href=""> 
						<img src="images/icons/icon-mypage.png" width="20" height="20" class="menu-icon">
						</a>
							<ul class="sub-menu">
								<c:if test="${empty memberId }">
									<li><a href="memberJoinForm.do">회원가입</a></li>
								</c:if>
								<c:if test="${empty memberId }">
								<li><a href="memberLoginForm.do">로그인</a></li>
								</c:if>
								<c:if test="${not empty memberId }">
								<li><a href="memberLogout.do">로그아웃</a></li>
									</c:if>
							</ul></li>
					</ul>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m">



					<!-- 장바구니 -->
					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
						data-notify="2">
						<a href="cartMain.do"><i class="zmdi zmdi-shopping-cart"></i></a>
					</div>

					<!-- 하트모양 -->
					<a href="#"
						class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
						data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
					</a>

					<!-- 마이페이지 -->
					

				</div>
			</nav>
		</div>
	</div>
</header>