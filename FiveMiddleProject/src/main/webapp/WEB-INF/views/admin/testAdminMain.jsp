<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>회원관리 테이블</title>


    <!-- Custom styles for this template -->
    <link href="css/admin/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="css/admin/dataTables.bootstrap4.min.css" rel="stylesheet">
<script src='js/admin/adminAjaxFetch.js'></script>

</head>

<body id="page-top">

<br><br><br><br><br><br>
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">회원관리</h1>
                    <p class="mb-4">회원관리 설명</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">회원목록</h6>
                            <button>삭제</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
           
                                    <tfoot>
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
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->


    <!-- Bootstrap core JavaScript-->
    <script src="js/admin/jquery.min.js"></script>
    <script src="js/admin/bootstrap.bundle.min.js"></script>

    <!--페이지 나누기 > 밑에 세개 다!-->
    <!-- Page level plugins -->
    <script src="js/admin/jquery.dataTables.min.js"></script>
    <script src="js/admin/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/admin/datatables-demo.js"></script>

</body>

</html>