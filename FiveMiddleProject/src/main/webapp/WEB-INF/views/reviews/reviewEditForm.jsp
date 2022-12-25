<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="tab-pane" id="reviews" role="tabpanel">
		<div class="row">
			<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
				<div class="p-b-30 m-lr-15-sm">

					<!-- Add review -->
					<form id="frm" action="reviewUpdate.do" method="post"
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
									id="review" name="review" value="${review.reviewSubject }"></textarea>
							</div>

							<div class="col-sm-6 p-b-5">
								<label class="stext-102 cl3" for="name">Name</label> <input
									class="size-111 bor8 stext-102 cl2 p-lr-20" id="name"
									type="text" name="name" value="${review.reviewWriter }">
							</div>
						</div>

						<div>
							<input type="hidden" name="reviewNum" value="${review.reviewNum }">
							<input type="submit" value="수정">&nbsp;&nbsp; 
							<input type="reset" value="취소">&nbsp;&nbsp;
							<input type="button" value="목록" onclick="location.href='reviewList.do'">
						</div>
					</form>



				</div>
			</div>
		</div>
	</div>


</body>
</html>