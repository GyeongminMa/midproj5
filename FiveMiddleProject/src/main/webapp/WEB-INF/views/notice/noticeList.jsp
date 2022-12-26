<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/notice/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/notice/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="css/notice/style.css">
<script src="js/noticeAjaxFetch.js"></script>
<title>Table #9</title>
</head>
<body>

<br><br><br><br><br><br>
	<div class="content">

		<div class="container">
			<h2 class="mb-5">공지사항</h2>

			<div class="table-responsive">
					<table class="table custom-table">
						<thead>
							<tr>
								<th scope="col"><label class="control control--checkbox">
										<input type="checkbox" class="js-check-all" />
										<div class="control__indicator"></div>
								</label></th>
								<th scope="col"><label for="num">글번호</label></th>
								<th scope="col" style="text-align: center"><label
									for="title">제목</label></th>
								<th scope="col" style="text-align: center"><label
									for="writer">작성자</label></th>
								<th scope="col" style="text-align: center"><label
									for="date">작성일</label></th>
								<th scope="col" style="text-align: center"><label for="hit">조회수</label></th>

							</tr>
						</thead>
						<tbody>
							<c:if test="${empty notice }">
								<tr>
									<td colspan="6" align="center">게시글이 없습니다.</td>
								</tr>
							</c:if>
							<tr>
								<c:if test="${not empty notice }">
									<c:forEach items="${notice }" var="n">
										<tr onclick="noticeSelect('${n.noticeNum}')">
										<th scope="row"><label class="control control--checkbox">
												<input type="checkbox" />
												<div class="control__indicator"></div>
										</label></th>
											<td align="center">${n.noticeNum }</td>
											<td align="center">${n.noticeTitle }</td>
											<td align="center">${n.noticeWriter }</td>
											<td align="center">${n.noticeDate }</td>
											<td align="center">${n.noticeHit }</td>
										</tr>
										
									</c:forEach>
								</c:if>

							</tr>



						</tbody>
					</table>
					
			</div>
			<div>
				<form id="frm" action="noticeSelect.do" method="post">

						<input type="button" value="글작성"
							onclick="location.href='noticeInsertForm.do'">

					<input type="hidden" id="noticeNum" name="noticeNum">
				</form>
			</div>

		</div>

	</div>
<script type="text/javascript">
function noticeSelect(noticeNum) { // 선택한 글 상세보기
	document.getElementById("noticeNum").value = noticeNum;
	frm.submit();
}
</script>


	<script src="js/notice/jquery-3.3.1.min.js"></script>
	<script src="js/notice/popper.min.js"></script>
	<script src="js/notice/bootstrap.min.js"></script>
	<script src="js/notice/main.js"></script>
</body>
</html>