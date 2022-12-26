<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br><br><br><br><br>
	<div align="center">
		<h1>로 그 인</h1>
	</div>
	<div align="center">
		<form id="frm" action="login.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="150">아 이 디</th>
						<td width="200"><input type="text" id="memberId"
							name=memberId required="required"></td>
					</tr>

					<tr>
						<th width="150">비 밀 번 호</th>
						<td width="200"><input type="password" id="memberPassword"
							name="memberPassword" required="required"></td>
					</tr>
				</table>
			</div>
			<br>
			<div>
				 
				<button type="submit">버튼로그인</button>
				<input type="reset" value="취 소">
			</div>

		</form>
	</div>
</body>

<script type="text/javascript">
</script>
</html>