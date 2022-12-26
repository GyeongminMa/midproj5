<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 짜집기 장바구니 -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/cart/style.css">

<!-- 우측 팝업 카트 -->
<div class="wrap-header-cart js-panel-cart">
	<div class="s-full js-hide-cart"></div>

	<div class="header-cart flex-col-l p-l-65 p-r-25">
		<div class="header-cart-title flex-w flex-sb-m p-b-8">
			<span class="mtext-103 cl2"> Your Cart </span>

			<div
				class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
				<i class="zmdi zmdi-close"></i>
			</div>
		</div>

		<div class="header-cart-content flex-w js-pscroll">
			<ul class="header-cart-wrapitem w-full">
				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img src="images/item-cart-01.jpg" alt="IMG">
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							White Shirt Pleat </a> <span class="header-cart-item-info"> 1
							x $19.00 </span>
					</div>
				</li>

				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img src="images/item-cart-02.jpg" alt="IMG">
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							Converse All Star </a> <span class="header-cart-item-info"> 1
							x $39.00 </span>
					</div>
				</li>

				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img src="images/item-cart-03.jpg" alt="IMG">
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							Nixon Porter Leather </a> <span class="header-cart-item-info">
							1 x $17.00 </span>
					</div>
				</li>
			</ul>

			<div class="w-full">
				<div class="header-cart-total w-full p-tb-40">Total: $75.00</div>

				<div class="header-cart-buttons flex-w w-full">
					<a href="shoping-cart.html"
						class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
						View Cart </a> <a href="shoping-cart.html"
						class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
						Check Out </a>
				</div>
			</div>
		</div>
	</div>
</div>

<br>
<br>
<br>
<!-- 홈페이지 > 쇼핑카트 -->
<div class="container">
	<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
		<a href="main.do" class="stext-109 cl8 hov-cl1 trans-04"> 메인화면 <i
			class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
		</a> <span class="stext-109 cl4"> 장바구니 </span>
	</div>
</div>


<!-- 장바구니 본문 -->
<form class="bg0 p-t-75 p-b-85">
	<div class="container">
		<!-- 다른사이트 짜집기 -->
		<div>
			<section class="ftco-section">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-6 text-center mb-4">
							<h2 class="heading-section">Shopping Cart</h2>
						</div>
						<div>
							<button id='deleteAll'>선택삭제</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="table-wrap">
								<table class="table">
									<thead class="thead-primary">
										<tr>
											<th>&nbsp;</th>
											<th>&nbsp;</th>
											<th>Class</th>
											<th>Price</th>
											<th>&nbsp;</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

		<!-- 주문화면으로 넘어가는 구간-->
		<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
			<div
				class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
				<h4 class="mtext-109 cl2 p-b-30">Cart Totals</h4>

				<div class="flex-w flex-t bor12 p-b-13">
					<div class="size-208">
						<span class="stext-110 cl2"> Subtotal: </span>
					</div>

					<div class="size-209">
						<span class="mtext-110 cl2"> $79.65 </span>
					</div>
				</div>

				<div class="flex-w flex-t bor12 p-t-15 p-b-30">
					<div class="size-208 w-full-ssm">
						<span class="stext-110 cl2"> Shipping: </span>
					</div>

					<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
						<p class="stext-111 cl6 p-t-2">There are no shipping methods
							available. Please double check your address, or contact us if you
							need any help.</p>

						<div class="p-t-15">
							<span class="stext-112 cl8"> Calculate Shipping </span>

							<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
								<select class="js-select2" name="time">
									<option>Select a country...</option>
									<option>USA</option>
									<option>UK</option>
								</select>
								<div class="dropDownSelect2"></div>
							</div>

							<div class="bor8 bg0 m-b-12">
								<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text"
									name="state" placeholder="State /  country">
							</div>

							<div class="bor8 bg0 m-b-22">
								<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text"
									name="postcode" placeholder="Postcode / Zip">
							</div>

							<div class="flex-w">
								<div
									class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer">
									Update Totals</div>
							</div>

						</div>
					</div>
				</div>

				<div class="flex-w flex-t p-t-27 p-b-33">
					<div class="size-208">
						<span class="mtext-101 cl2"> Total: </span>
					</div>

					<div class="size-209 p-t-1">
						<span class="mtext-110 cl2"> $79.65 </span>
					</div>
				</div>

				<button
					class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
					Proceed to Checkout</button>
			</div>
		</div>
	</div>
</form>


<!-- --------------------짜집기 JS------------------------------- -->
<script src="js/cart/jquery.min.js"></script>
<script src="js/cart/popper.js"></script>
<script src="js/cart/bootstrap.min.js"></script>
<script src="js/cart/main.js"></script>
<script src="js/cart/cartMain.js"></script>
