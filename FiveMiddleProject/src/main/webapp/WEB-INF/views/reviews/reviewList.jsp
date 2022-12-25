<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/review/reviewListForm.css">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- 리뷰!!- -->
	<div class="tab-pane" id="reviews" role="tabpanel">
		<div class="row">
			<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
				<div class="p-b-30 m-lr-15-sm">
					<!-- Review -->
					
					<c:forEach items="${reviews }" var="r">
						<div class="flex-w flex-t p-b-68">
							<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
								<img src="images/avatar-01.jpg" alt="AVATAR">
							</div>

							<div class="size-207">
								<div class="flex-w flex-sb-m p-b-17">
									<span class="mtext-107 cl2 p-r-20"> ${r.reviewWriter } </span>
									<span class="fs-18 cl11"> <i class="zmdi zmdi-star"></i>
										<i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i>
										<i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star-half"></i>
									</span>
								</div>
								<p class="stext-102 cl6">${r.reviewSubject }</p>
							</div>
							<br>
							<br>
							<br>
							<div>
								<form id="frm" action="reviewDelete.do" method="post">

									<button type="button" onclick="location.href='reviewDelete.do'">글삭제</button>

									<input type="hidden" name="reviewNum"
										value="${r.reviewNum }">
								</form>
							</div>
						</div>
					</c:forEach>
					<br>
					<!-- Add review -->
					<form id="frm" action="reviewInsert.do" method="post"
						class="w-full">
						<h5 class="mtext-108 cl2 p-b-7">Add a review</h5>

						<p class="stext-102 cl6">Your email address will not be
							published. Required fields are marked *</p>

						<div class="flex-w flex-m p-t-50 p-b-23">
							<span class="stext-102 cl3 m-r-16"> Your Rating </span> <span
								class="wrap-rating fs-18 cl11 pointer"> <i
								class="item-rating pointer zmdi zmdi-star-outline"></i> <i
								class="item-rating pointer zmdi zmdi-star-outline"></i> <i
								class="item-rating pointer zmdi zmdi-star-outline"></i> <i
								class="item-rating pointer zmdi zmdi-star-outline"></i> <i
								class="item-rating pointer zmdi zmdi-star-outline"></i> <input
								class="dis-none" type="number" name="rating">
							</span>
						</div>

						<div class="row p-b-25">
							<div class="col-12 p-b-5">
								<label class="stext-102 cl3" for="review">Your review</label>
								<textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
									id="review" name="review"></textarea>
							</div>

							<div class="col-sm-6 p-b-5">
								<label class="stext-102 cl3" for="name">Name</label> <input
									class="size-111 bor8 stext-102 cl2 p-lr-20" id="name"
									type="text" name="name">
							</div>
						</div>

						<button
							class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10"
							onclick="location.href='noticeInsert.do'">Submit</button>
						<input type="hidden" id="reviewNum" name="reviewNum">
					</form>



				</div>
			</div>
		</div>
	</div>
</body>
</html>