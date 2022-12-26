<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div><h1>공지사항 상세보기</h1></div>
	<div>
		<table border="1">
			<tr>
				<th width="100">작성자</th>
				<td width="200">${notice.noticeWriter }</td>
				<th width="150">작성일자</th>
				<td width="200">${notice.noticeDate }</td>
			</tr>
			<tr>
				<th>제 목</th>
				<td colspan="3">${notice.noticeTitle }</td>
			</tr>
			<tr>
				<th>내 용</th>
				<td width="250" height="300" colspan="3">
					${notice.noticeSubject }
				</td>
			</tr>
		</table>
	</div><br>
	<div>
		<form id="frm" method="post">
			<c:if test="${name eq notice.noticeWriter }">
				<button type="button" onclick="noticeEdit('E')">글 수정</button>
				<button type="button" onclick="noticeEdit('D')">글 삭제</button>
			</c:if>
			<input type="hidden" name="noticeNum" value="${notice.noticeNum }">
		</form>
	</div>
</div>
<script type="text/javascript">
	function noticeEdit(str) {
		if(str == 'E') {
			frm.action="noticeEdit.do";
		}else {
			let yn = confirm("작성글을 삭제하시겠습니까?");
			if(yn) {
				frm.action="noticeDelete.do";
			}else {
				return false;
			}
		}
		frm.submit();
	}
</script>
</body>
</html>