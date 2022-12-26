<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/memberJoinForm.css">
<script src="js/memberAjax.js"></script>
<title>회원정보수정</title>
</head>
<body>
	<br>
	<br>
	<div class="wrap wd668">
		<div class="container">
			<div class="form_txtInput">
				<h2 class="sub_tit_txt">회원정보수정</h2>
				<p class="exTxt">회원정보 조회, 수정 페이지입니다.</p>
				<div class="join_form">
					<form id="memberFrm" action="" method="post">
						<table>
							<colgroup>
								<col width="30%" />
								<col width="auto" />
							</colgroup>
							<tbody>
								<tr>
									<th><span>아이디(이메일)</span></th>
									<td><input id="memberId" name="memberId" value="${memberId }"></td>
								</tr>
								<tr>
									<th><span>이름</span></th>
									<td><input id="memberName" name="memberName" value="${memberName }"></td>

								</tr>
								<tr>
									<th><span>닉네임</span></th>
									<td><input type="text" id="memberNickname" name="memberNickname" value="${memberNickname }">
										<a href="javascript:;" class="btn_confirm">중복확인</a></td>
								</tr>
								<tr>
									<th><span>비밀번호 변경</span></th>
									<td><input type="password" id="memberPassword" name="memberPassword" value="${memberPassword }"
										placeholder="변경하실 비밀번호를 입력해주세요."></td>
								</tr>
								<tr>
									<th><span>비밀번호 확인</span></th>
									<td><input type="password" id="memberPasswordCheck" name="memberPasswordCheck"
										placeholder="변경하실 비밀번호를 한 번 더 입력해주세요."></td>
								</tr>
								<tr>
									<th><span>휴대폰 번호</span></th>
									<td><input id="memberPhone" value="${memberPhone}"></td>
								</tr>
								<tr>
									<th><span>생년월일</span></th>
									<td><input id="memberBirth" value="${memberBirth}"></td>
								</tr>
								<tr>
									<th><span>성별</span></th>
									<td><input id="memberGender">${memberGender}</td>
								</tr>

							</tbody>
						</table>
						<div class="exform_txt">
							<span>표시는 필수적으로 입력해주셔야 가입이 가능합니다.</span>
						</div>
						<div class="btn_wrap">
							<!-- <a href="javascript:;">수정</a> -->
							<input type="submit" value="수정">
						</div>
					</form>
				</div>

			</div>
			<!-- form_txtInput E -->
		</div>
		<!-- content E-->
	</div>
	<!-- container E -->
	<script>
	
	</script>
</body>
</html>