<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/member/memberLoginForm.css">
   
    <script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
</head>
<body>
<form action="memberLogin.do" method="post">
    <div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side">
                <div class="top-logo-wrap">
                    
                </div>
                <h1>When you feel like stopping, think about why you started.</h1>
            </div>
            <div class="login-form-left-side">
               
                <div class="login-input-container">
                    <div class="login-input-wrap input-id">
                        <i class="far fa-envelope"></i>
                        <input placeholder="Email(ID)" id="memberId" name="memberId" required="required" type="text">
                    </div>
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-key"></i>
                        <input placeholder="Password"id="memberPassword" name="memberPassword" required="required"   type="password">
                    </div>
                </div>
                <div class="login-btn-wrap">
                    <button class="login-btn">Login</button>
                    <a href="memberJoinForm.do" >아직 5운완의 회원이 아니신가요? 가입하러가기</a>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>