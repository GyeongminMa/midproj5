<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/admin/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/admin/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="css/admin/style.css">
<!-- ▼ 채은추가 -->
<script src="js/admin/adminMemberAjax.js"></script>

<title>Table #9</title>
</head>
<body>


	<div class="content">

		<div class="container">
			<h2 class="mb-5">회원관리 페이지</h2>

			<div class="table-responsive">
				<div>
					<button id="delBtn">선택삭제</button>
				</div>

				<table class="table custom-table" id="dataTable">
					<thead>
						<tr>
							<th scope="col"><label class="control control--checkbox">
									<input type="checkbox" class="js-check-all" />
									<div class="control__indicator"></div>
							</label></th>
							<th scope="col">아이디</th>
							<th scope="col">이름</th>
							<th scope="col">닉네임</th>
							<th scope="col">성별</th>
							<th scope="col">생년월일</th>
							<th scope="col">전화번호</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>


		</div>

	</div>

	<!-- ============================================================ -->
	<script src="js/admin/jquery-3.3.1.min.js"></script>
	<script src="js/admin/popper.min.js"></script>
	<script src="js/admin/bootstrap.min.js"></script>
	<script src="js/admin/main.js"></script>
</body>
</html>