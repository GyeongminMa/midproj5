<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Tables</title>
<!-- Custom styles for this template -->
<link href="css/admin/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="css/admin/dataTables.bootstrap4.min.css" rel="stylesheet">
<script type="admin/adminAjaxFetch.js"></script>

</head>

<body id="page-top">

<br><br><br><br><br><br>
	<!-- Page Wrapper -->
	<div id="wrapper">



		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<h1 class="h3 mb-2 text-gray-800">회원 관리 페이지</h1>
			<p class="mb-4">회원 관리 페이지입니다.</p>

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">DataTables
						Example</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>아이디</th>
									<th>이름</th>
									<th>닉네임</th>
									<th>전화번호</th>
									<th>생년월일</th>
									<th>성별</th>
								</tr>
							</thead>
							<tfoot>
								<!-- <tr>
                                    <th>아이디</th>
                                    <th>이름</th>
                                    <th>닉네임</th>
                                    <th>전화번호</th>
                                    <th>생년월일</th>
                                    <th>성별</th>
                                </tr> -->
							</tfoot>
							<tbody>

							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
		<!-- /.container-fluid -->

	</div>
	<!-- End of Main Content -->

	<!-- Footer -->
	<footer class="sticky-footer bg-white">
		<div class="container my-auto">
			<div class="copyright text-center my-auto">
				<span>Copyright &copy; Your Website 2020</span>
			</div>
		</div>
	</footer>
	<!-- End of Footer -->



	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Bootstrap core JavaScript-->
	<!-- 스크롤, -->
	<script src="js/admin/jquery.min.js"></script>
	<script src="js/admin/bootstrap.bundle.min.js"></script>

	<!-- Page level plugins -->
	<script src="js/admin/jquery.dataTables.min.js"></script>
	<script src="js/admin/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/admin/datatables-demo.js"></script>

</body>

</html>