<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="cn.edu.ntu.jtxy.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="keywords" content="交通学院微信管理平台" />
<meta name="description" content="连接你我" />
<title>南通大学交通学院微信管理平台</title>
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<link rel="stylesheet" type="text/css" href="css/emng-1.0.0.css" />
<link rel="stylesheet" type="text/css" href="css/menu-list.css" />

<!--theme-->
<link rel="stylesheet" type="text/css" href="css/theme-origin/emng-origin.css" />
<link rel="stylesheet" type="text/css" href="css/theme-origin/menu-list-origin.css" />
<style type="text/css">
html,body {
	width: 100%;
}

body {
	overflow-y: hidden;
}

nav {
	height: 60px;
	min-width: 1200px;
	align-items: center;
}

#logowrap {
	flex: 1;
	-webkit-flex: 1;
	-moz-flex: 1;
	-ms-flex: 1;
	padding-left: 20px;
}

#loginInfo {
	height: 60px;
}

#loginInfo ul {
	align-items: center;
}

#loginInfo ul li {
	margin-right: 25px;
	align-items: center;
}

#loginInfo ul li:nth-of-type(3) {
	margin-right: 0;
}

#loginInfo ul li em {
	display: inline-block;
	width: 30px;
	height: 30px;
	background-repeat: no-repeat;
}

#loginInfo ul li a {
	display: inline-block;
	width: 100px;
	height: 60px;
	line-height: 60px;
	text-align: center;
	border-left: 1px solid #0E0E0E;
}

#loginInfo ul li span {
	cursor: default;
}

#loginOut a {
	
}

#loginName em {
	background-position: -540px 0;
}

#loginTime em {
	background-position: -570px 0;
}

#mainFrame {
	width: 100%;
	margin: 0 auto 0;
}

#main-menu { /*overflow-y: auto; overflow-x: hidden;*/
	width: 205px;
	height: 640px;
}

#mainFrame #iframe-container-1 {
	flex: 1;
	-webkit-flex: 1;
	-moz-flex: 1;
	-ms-flex: 1;
	height: 640px;
}

@media only screen and (min-width: 1650px) {
	#main-menu {
		height: 760px;
	}
	#mainFrame #iframe-container-1 {
		height: 960px;
	}
}

/*退出窗口字体大小的定制*/
.window_header {
	padding-top: 38px;
	font-size: 18px;
}

.window_body {
	padding-top: 20px;
	font-size: 18px;
	text-indent: 95px;
}

.window_footer {
	padding-bottom: 20px;
}

.window_footer .window_cancelBtn,.window_footer .window_confirmBtn {
	height: 37px;
	line-height: 37px;
}
/*设置滚动条的样式*/
/* 1st scrollbar dragger style */
.mCSB_inside .mCSB_container {
	margin-right: 0;
}

.mCSB_scrollTools {
	right: -6px;
}
</style>
</head>
<body>
	<nav class="emng-flex" id="totalNav">
		<div id="logowrap" class="emng-flex">
			<img src="images/emng-logo.png" />
			<span id="contactPhone"></span>
			<script type="text/javascript">
                var phone = document.getElementById("contactPhone");
                if (phone.innerHTML == '0') {
                    phone.innerHTML = '';
                }
            </script>
		</div>
		<div id="loginInfo" class="emng-flex">
			<ul class="emng-flex">
				<li id="loginName" class="emng-flex">
					<em></em>
					<span>${not empty userInfo ? userInfo.stuNo
						: "----"}</span>
				</li>
				<li id="loginTime" class="emng-flex">
					<em></em>
					<span><%=DateUtil.getWebTodayString()%></span>
				</li>
				<li id="loginOut">
					<a href="#">退出</a>
				</li>
			</ul>
		</div>
	</nav>
	<div id="mainFrame" class="emng-flex">
		<!--主菜单容器-->
		<section id="main-menu">
			<!--菜单开始-->
			<div class="menu-out-wrapper">
				<ul>
					<li class="menu-out-one">
						<div class="menu-out-header">
							<span id="homepage"></span>
							<span>
								<a href="/EHealthMng/welcome.htm" target="myView">首页</a>
							</span>
						</div>
					</li>
					<li class="menu-out-one">
						<div class="menu-out-header">
							<span id="icon-org"></span>
							<span>
								<a>学生管理</a>
							</span>
						</div>
						<ul class="menu-out-two">
							<li>
								<a href="stuInfo.htm" target="myView">学生信息</a>
							</li>
							<li>
								<a href="stuImportBatch.htm" target="myView">批量导入</a>
							</li>
						</ul>
					</li>
					<li class="menu-out-one">
						<div class="menu-out-header">
							<span id="icon-org"></span>
							<span>
								<a>新闻管理</a>
							</span>
						</div>
						<ul class="menu-out-two">
							<li>
								<a href="newsInfo.htm" target="myView">新闻查看列表</a>
							</li>
							<li>
								<a href="newsPush.htm" target="myView">新闻推送</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>

		</section>
		<section id="iframe-container-1">
			<iframe src="" name="myView" width="100%" height="100%" frameborder="0"></iframe>
		</section>
	</div>
</body>
<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery-ui-1.10.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.mousewheel.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.mCustomScrollbar.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    $(document).ready(function() {
        //使菜单下拉或上缩
        (function() {
            var aMenuOneLi = $('.menu-one-li');
            var aMenuTwo = $('.menu-out-two');
            var aMenuTwoItem = $('.menu-out-two a');

            $('.menu-out-header').each(function(i, e) {
                $(this).click(function() {
                    if ($(aMenuTwo[i - 1]).css('display') == 'block') {
                        $(aMenuTwo[i - 1]).slideUp(300);
                    } else {
                        aMenuTwo.slideUp(300);
                        $(aMenuTwo[i - 1]).slideDown(300);
                    }
                    $('.menu-out-header').removeClass('menu-out-header-click');
                    $(this).addClass('menu-out-header-click');
                    aMenuTwoItem.removeClass('menu-two-click');
                });
            });

            aMenuTwoItem.click(function() {
                aMenuTwoItem.removeClass('menu-two-click');
                $(this).addClass('menu-two-click');
            });
        })();
    });
</script>
</html>

