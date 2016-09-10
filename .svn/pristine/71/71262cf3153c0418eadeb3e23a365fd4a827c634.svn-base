<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="renderer" content="webkit">
<meta name="keywords" content="健康吧云管理平台" />
<meta name="description" content="健康吧,创享智慧健康生活" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>南通大学交通学院微信平台</title>
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="css/reset.css" />
<style type="text/css">
html,body {
	width: 100%;
	height: 100%;
}

body {
	background-image: url(images/login-bg.png);
	background-size: 100% 100%;
	background-repeat: no-repeat;
	font-family: "microsoft yahei";
}

.container {
	height: 100%;
	min-width: 1200px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.container .emng-logo {
	width: 520px;
	height: 310px;
	margin-bottom: 40px;
}

.container .emng-form {
	width: 400px;
	height: 250px;
	margin-bottom: 40px;
	padding-top: 55px;
}

.container .emng-form ul {
	width: 100%;
}

.container .emng-form li {
	margin-bottom: 15px;
	width: 100%;
	position: relative;
}

.container .emng-form li span {
	display: inline-block;
	text-align: center;
	width: 80px;
	font-size: 18px;
	padding-right: 8px;
}

.container .emng-form li:nth-of-type(3) {
	display: flex;
	align-items: center;
}

.container .emng-form li:nth-of-type(3) span {
	padding-right: 11px;
}

.container .emng-form li .l-text {
	width: 255px;
	padding-left: 8px;
	background: #FFFFFF;
	border: 2px solid #E4E4E4;
	height: 42px;
	font-size: 18px;
}

.container .emng-form li button {
	width: 150px;
	margin: 0 93px;
	border: none;
	height: 45px;
	border-radius: 6px;
	color: #FFFFFF;
	text-align: center;
	font-family: "microsoft yahei";
	font-size: 18px;
	cursor: pointer;
	background: -webkit-linear-gradient(top, #4BDDD4, #2DC7C2);
	background: -moz-linear-gradient(top, #4BDDD4, #2DC7C2);
	background: -ms-linear-gradient(top, #4BDDD4, #2DC7C2);
	background: linear-gradient(top, #4BDDD4, #2DC7C2);
}

#errorTips {
	color: red;
	position: absolute;
	font-size: 16px;
	top: 15px;
	left: 255px;
	display: inline-block;
}

#validCode {
	width: 140px;
}

img {
	max-width: 100%;
}

#validateImg {
	width: 118px;
	height: 46px;
}

#switchValidcode {
	position: absolute;
	right: -80px;
	top: 18px;
	color: darkolivegreen;
}

#switchValidcode:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="container">
		<div class="emng-logo">
			<img src="images/login-logo.png" />
		</div>
		<div class="emng-form">
			<form action="login.htm" name="loginForm" id="loginForm"
				method="post">
				<ul>
					<li><span>用户名:</span> <input type="text" name="logonName"
						id="userName" class="l-text" maxlength="32" value=""
						placeholder="管理员账号,手机号" /></li>
					<li><span>密&nbsp;&nbsp;&nbsp;码:</span> <input type="password"
						name="password" id="userPassword" class="l-text" value="" /></li>
					<li><label class="errorTips" id="errorTips">${errorTips}</label>
						<button type="button" id="toLogin">登 录</button></li>
				</ul>
			</form>
		</div>
	</div>
	<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/vertifycate.min.js" type="text/javascript"
		charset="utf-8"></script>
	<script type="text/javascript">
        $(document).ready(function() {
            $('#toLogin').click(function() {
                if (!$('#userName').validator({
                    errContainer : $('#errorTips'),
                    required : true,
                    requiredMsg : '用户名不能为空'
                }) || !$('#userPassword').validator({
                    errContainer : $('#errorTips'),
                    required : true,
                    requiredMsg : '密码不能为空'
                }) || !$('#validCode').validator({
                    errContainer : $('#errorTips'),
                    required : true,
                    requiredMsg : '验证码不能为空'
                })) {
                    return false;
                } else {
                    $('#loginForm').submit();
                }
            });

            $('#loginForm').enterSub($('#toLogin'));
        });
    </script>
</body>
</html>
