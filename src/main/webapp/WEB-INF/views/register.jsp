<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<title>注册 - 微信群分享 - 微信群|微信群二维码|微信群大全-最具人气的微信群导航</title>
<meta name="keywords"
	content="微信群,微信群分享,微信群大全,微信群二维码,微信群推荐,微信群聊,微信加群,微信群人数上限,微信群怎么建,微信群怎么找">
<meta name="description"
	content="最具人气的微信群导航,为大家提供各地区各兴趣的微信群二维码图片,大家可以根据需要找到自己感兴趣的微信群,我们的目标是做最好的微信群聊推荐网站。查看群二维码，提交群信息，让大家快速找到自己喜爱的微信群。">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/table_form.css">
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/simplefoucs.js"></script>
<script type="text/javascript" src="js/jsAddress.js"></script>
<link type="text/css" rel="stylesheet" href="css/validator.css">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<script src="js/formValidator-4.0.1.min.js" type="text/javascript"
	charset="UTF-8"></script>
<script src="js/formValidatorRegex.js" type="text/javascript"
	charset="UTF-8"></script>
<style type="text/css">
#validateImg {
	width: 100px;
	height: 38px;
	vertical-align: middle;
}
</style>
<script src="js/share.js"></script>
<link rel="stylesheet" href="css/slide_share.css">
</head>
<body>
	<div class="top_link">
		<div class="link_text">
			<span>
				<font color="red"> </font>
			</span>
			<span class="user_info"> </span>
		</div>
	</div>
	<div id="header_box">
		<div id="header">
			<h1 id="logo">
				<a href="http://www.ntujtxy.top">
					<img src="images/logo.png" alt="微信群网罗">
				</a>
			</h1>
			<div style="float: left; margin-top: 17px; margin-left: 50px;"></div>
			<div class="search_top">
				<form action="" method="post" id="search_soft">
					<input type="text" name="keywd" value="搜索" id="search_txt">
					<input type="image" src="images/search_btn.gif" id="search_btn">
				</form>
			</div>
		</div>
	</div>
	<div id="nav_box">
		<ul class="nav-site">
			<li class="hot cur">
				<a href="index.htm">首页</a>
			</li>
			<li class="hot">
				<a href="wxgroup.htm" title="微信群">微信群</a>
			</li>
			<li class="hot">
				<a href="publicNum.htm" title="公众号">公众号</a>
			</li>
			<li class="hot">
				<a href="wx.htm" title="微商群主">个人微信号</a>
			</li>
			<li class="hot">
				<a href="" title="涨姿势">涨姿势</a>
			</li>
			<li class="hot">
				<a href="" title="微信红包群">微信红包群</a>
				<span class="new_ico12"></span>
			</li>
			<li class="hot">
				<a href="" title="微信学园">微信学园</a>
				<span class="new_ico12"></span>
			</li>
			<li class="hot">
				<a href="" title="货源">货源</a>
			</li>

		</ul>
		<div class="logininfo">
			<ul>
				<li>
					<a href="logon.htm">登录</a>
				</li>
				<li>
					<a href="register.htm">注册</a>
				</li>
			</ul>
		</div>
	</div>
	<script src="js/list1.js" type="text/javascript"></script>
	<div id="main_content">
		<div id="main_left">
			<div class="weichat_box">
				<h2 class="weichat_box_title">
					<span> </span>
				</h2>
			</div>
			<div class="position">
				<span>当前位置：</span>
				<a href="index.htm">首页</a>
				&gt;
				<a href="register.htm">用户注册</a>
				&gt;
			</div>
			<div class="newslist">
				<div id="content" class="login_box">
					<div class="col-left form-login form-reg">
						<form action="register.htm" method="post"
							enctype="multipart/form-data" autocomplete="off" name="form1">
							<div class="input">
								<label>用户名 ：</label>
								<input type="text" id="logonName" name="logonName" size="36"
									class="input-text">
							</div>
							<div class="input">
								<label>EMAIL：</label>
								<input type="text" id="email" name="email" size="36"
									class="input-text">
							</div>
							<div class="input">
								<label>密码：</label>
								<input type="password" id="password" name="password" size="36"
									class="input-text">
							</div>
							<div class="input">
								<label>确认密码：</label>
								<input type="password" id="password2" name="password2" size="36"
									class="input-text">
							</div>
							<div class="input">
								<label>
									头像：
									<br>
									(jpg或png)
								</label>
								<input type="file" id="faceimg" name="faceimg"
									class="input-text">
							</div>
							<div class="input">
								<label>验证码：</label>
								<input type="text" id="verifyCode" name="verifyCode"
									class="input-text">
								<img id="validateImg" title="看不清楚，再换一张" src="vc.htm" width="100"
									height="30" onClick="loadCheckCode();" alt="点击图片换一张" />
							</div>
							<div class="reg1">
								<div class="submit">
									<input type="submit" name="dosubmit" value="" class="add_btn"
										id="toSubmit">
								</div>
								<br>
							</div>
							<div id="errTips">
								<label class="errorTips" id="errorTips">${errorTips}</label>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div id="main_right">
			<div class="ad03">
				<a href="http://www.ntujtxy.top">
					<img src="images/qrcode.jpg" alt="微信群网罗">
				</a>
			</div>
			<div id="sider" style="margin-top: 10px;">
				<div
					style="margin-top: 10px; border: 1px solid #ccc; background-color: #FFF"
					class="sider">
					<h2 class="weichat_box_title">
						微信学园
						<strong>
							<a href="http://www.91weixinqun.com/news">更多&gt;&gt;</a>
						</strong>
					</h2>
					<ul class="news_list">
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5883.html">5种个人微信号加好友的方法</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5882.html">微信公众号获取上万粉丝10种方</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5881.html">微信运营吸粉的27种秘诀</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5880.html">玩转微信朋友圈广告的有效方式</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5879.html">13种微商在用的吸粉方法</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5871.html">微商怎么赚钱？微商赚钱的方法</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5870.html">微商怎么做？微商高手必用的5个</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5869.html">微信聊天记录删除了怎么恢复：傻</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5858.html">微信群其实没那么难搞，不信你看</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5857.html">微信怎么加好友最快
								日加一千好</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5846.html">微商如何打造属于个人品牌？</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="footer_box">
		<div class="footer_text"></div>
		<div class="footer_nav">
			<ul>
				<li>
					<a href="http://www.91weixinqun.com/news/160.html" target="_blank">关于我们</a>
				</li>
				<li>
					<a href="http://www.91weixinqun.com/news/161.html" target="_blank">联系方式</a>
				</li>
				<li>
					<a href="http://www.91weixinqun.com/news/162.html" target="_blank">版权声明</a>
				</li>
				<li>
					<a href="http://www.91weixinqun.com/news/163.html" target="_blank">用户须知</a>
				</li>
				<li>
					<a href="http://www.91weixinqun.com/news/165.html" target="_blank">用户协议</a>
				</li>
				<li>
					<a href="http://www.91weixinqun.com/news/164.html" target="_blank">隐私保护</a>
				</li>
				<li>
					<a class="bg_no" href="http://www.91weixinqun.com/news/166.html"
						target="_blank">广告合作</a>
				</li>
			</ul>
		</div>
		<div class="link mod">
			<div class="top clearfix">
				<div class="title">友情链接</div>
				<span></span>
			</div>
			<div class="content">
				<ul class="linkUl clearfix">
					<li class="linkLi">
						<a target="_blank" href="http://www.94zhubo.com/">主播网</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<div class="footer_right">
			Copyright © 2014 91weixinqun.com 京ICP备10053256-4
			<br>
			联系方式：Email：3093154044@qq.com 客服QQ：3093154044 2780270027 互动群:165835750
			<br>
			<br>
		</div>
	</div>
	<div id="m-rightbar" style="display: none;">
		<div class="m-menu">
			<li class="m-toop">
				<a title="返回顶部" id="top1" href="javascript:;">返回顶部</a>
			</li>
			<li class="m-help">
				<a target="_blank" title="帮助中心"
					href="http://www.91weixinqun.com/news/bzzx">帮助中心</a>
			</li>
			<li class="m-comment">
				<a target="_blank" title="意见反馈"
					href="tencent://message/?uin=3093154044&amp;Site=91www.weixinqun.com&amp;Menu=yes">意见反馈</a>
			</li>
			<li class="m-bottom">
				<a title="返回底部" id="footer1" href="javascript:;">返回底部</a>
			</li>
		</div>
	</div>
</body>


<script type="text/javascript">
	$(document).ready(function() {

		$("#toSubmit").click(function() {
			var logonName = $.trim($('#logonName').val());
			var email = $.trim($('#email').val());
			var password = $.trim($('#password').val());
			var password2 = $.trim($('#password2').val());
			var verifyCode = $.trim($('#verifyCode').val());
			var faceimg = $("#faceimg").val();

			if (logonName == "") {
				$("#errorTips").html("用户名不能为空");
				$("#logonName").focus();
				return false; // 
			} else if (email == "") {
				$("#errorTips").html("邮箱不能为空");
				$("#email").focus();
				return false; // 
			} else if (password == "") {
				$("#errorTips").html("密码不能为空");
				$("#password").focus();
				return false; // 
			} else if (password2 == "") {
				$("#errorTips").html("确认密码不能为空");
				$("#password2").focus();
				return false; // 
			} else if (faceimg == "") {
				$("#errorTips").html("头像不能为空");
				$("#faceimg").focus();
				return false; // 
			} else if (verifyCode == "") {
				$("#errorTips").html("验证码不能为空");
				$("#verifyCode").focus();
				return false; // 
			} else {
				if (password != password2) {
					$("#errorTips").html("两次密码输入不一致");
					return false;
				}
				return checkEmail(email);
				// 返回true ，a标签继续执行后续操作，跳转
			}
		});
		$("#email").blur(function() {
			var email = $.trim($('#email').val());
			checkEmail(email);
		});
	});
	function loadCheckCode() {
		//看不清楚,再换一张
		$('#validateImg').attr('src', './vc.htm?=' + Math.random());
	}
	function checkEmail(email) {
		//验证邮箱格式的js正则表达式  
		var isEmail = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		//清空显示层中的数据      
		$("#emailMess").html("");
		if (!(isEmail.test(email))) {
			$("#errorTips").html("邮箱格式不正确");
			$("#email").focus();
			return false;
		}
		return true;
	}
</script>
</html>

