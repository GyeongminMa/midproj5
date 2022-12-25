<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>CKEditor 5 – Classic editor</title>
<script
	src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="tab-pane" id="reviews" role="tabpanel">
				<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
					<div class="p-b-30 m-lr-15-sm">
						<!-- Add review -->
						<form id="frm" action="reviewInsert.do" method="post"
							class="w-full" align="center">
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
								onclick="location.href='reviewInsert.do'">Submit</button>
							<input type="hidden" id="reviewNum" name="reviewNum">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
    ClassicEditor
      .create( document.querySelector( '#editor' ) )
      .catch( error => {
        console.error( error );
      } );
	  </script>
</body>
</html>