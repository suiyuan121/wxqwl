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
<script src="js/formValidator-4.0.1.min.js" type="text/javascript"
	charset="UTF-8"></script>
<script src="js/formValidatorRegex.js" type="text/javascript"
	charset="UTF-8"></script>
<style></style>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$.formValidator.initConfig({
							formID : "form1",
							debug : false
						});

						$("#username").formValidator({
							onShow : "请输入用户名(群主名)",
							onFocus : "请输入用户名(群主名)",
							onCorrect : "　",
							defaultValue : ""
						}).inputValidator({
							min : 1,
							onError : "用户名(群主名)为必填项"
						});
						$("#password").formValidator({
							onShow : "请输入密码",
							onFocus : "请输入密码",
							onCorrect : "　",
							defaultValue : ""
						}).inputValidator({
							min : 1,
							onError : "密码为必填项"
						});
						$("#password2").formValidator({
							onShow : "请再次输入密码",
							onFocus : "请再次输入密码",
							onCorrect : "　"
						}).inputValidator({
							min : 1,
							onError : "重复密码不能为空,请确认"
						}).compareValidator({
							desID : "password",
							operateor : "=",
							onError : "2次密码不一致,请确认"
						});

						$("#wxnum").formValidator({
							onShow : "请输入群主微信号",
							onFocus : "请输入群主微信号",
							onCorrect : "　",
							defaultValue : ""
						}).inputValidator({
							min : 1,
							onError : "群名称为必填项"
						});
						$("#email")
								.formValidator({
									onShow : "请输入邮箱",
									onFocus : "请输入邮箱",
									onCorrect : " "
								})
								.inputValidator({
									min : 6,
									max : 100,
									onError : "你输入的邮箱长度非法,请确认"
								})
								.regexValidator(
										{
											regExp : "^([\w-.]+)@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.)|(([\\w-]+.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(]?)$",
											onError : "你输入的邮箱格式不正确"
										});

						$("#contents").formValidator({
							onShow : "请输入群主介绍",
							onFocus : "请输入群主介绍",
							onCorrect : "　",
							defaultValue : ""
						}).inputValidator({
							min : 1,
							onError : "群主介绍为必填项"
						});
						$("#yzm").formValidator({
							onShow : "请输入验证码",
							onFocus : "请输入验证码",
							onCorrect : "　",
							defaultValue : ""
						}).inputValidator({
							min : 4,
							onError : "请输入验证码"
						});

					});
</script>
<script type="BAIDU_HH" runed="true">{"type":"flowbar","fixed_tpl":"2","di":"u2252074","rsi0":"auto","rsi1":"50","n":"1"}</script>
<script src="js/share.js"></script>
<link rel="stylesheet" href="css/slide_share.css">
</head>
<body>
	<div id="BAIDU_DUP_fp_wrapper"
		style="position: absolute; left: -1px; bottom: -1px; z-index: 0; width: 0px; height: 0px; overflow: hidden; visibility: hidden; display: none;">
	</div>
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
				<a href="http://www.91weixinqun.com/">
					<img src="images/xiaozhangprint.jpg" alt="微信群分享" width="100"
						height="100">
				</a>
			</h1>
			<div style="float: left; margin-top: 17px; margin-left: 50px;"></div>
			<div class="search_top">
				<form action="http://www.91weixinqun.com/group/index" method="post"
					id="search_soft">
					<input type="text" name="keywd" value="搜索" id="search_txt">
				</form>
			</div>
		</div>
	</div>
	<div id="nav_box">
		<ul class="nav-site">
			<li class="hot">
				<a href="http://www.91weixinqun.com/">首页</a>
			</li>
			<li class="hot">
				<a href="http://www.91weixinqun.com/group/" title="微信群">微信群</a>
			</li>
			<li class="hot">
				<a href="http://www.91weixinqun.com/wechat/" title="公众号">公众号</a>
				<span class="new_ico8"> </span>
			</li>
			<li class="hot">
				<a href="http://www.91weixinqun.com/news/zhangzishi/" title="涨姿势">涨姿势</a>
				<span class="new_ico8">
					<img src="images/new_ico.gif" alt="icon">
				</span>
			</li>
			<li class="hot">
				<a href="http://www.91weixinqun.com/hongbao/" title="微信红包群">微信红包群</a>
				<span class="new_ico12"></span>
			</li>
			<li class="hot">
				<a href="http://www.91weixinqun.com/news/" title="微信学园">微信学园</a>
				<span class="new_ico12"></span>
			</li>
			<li class="hot">
				<a href="http://www.91weixinqun.com/goods/" title="货源">货源</a>
			</li>
			<li class="hot">
				<a href="http://www.91weixinqun.com/weishang/" title="微商群主">微商群主</a>
			</li>
		</ul>
		<div class="logininfo">
			<ul>
				<li>
					<a href="logon.htm">登录</a>
				</li>
				<li>
					<a href="http://www.91weixinqun.com/member/register">注册</a>
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
				<a href="http://www.91weixinqun.com/">首页</a>
				&gt;
				<a href="http://www.91weixinqun.com/member/register">群主注册</a>
				&gt;
			</div>
			<div class="newslist">
				<div id="content" class="login_box">
					<div class="col-left form-login form-reg">
						<form action="logon.htm" method="post"
							enctype="multipart/form-data" autocomplete="off" name="form1">
							<div class="input">
								<label>用户名 </label>
								<input type="text" id="logonName" name="logonName" size="36"
									class="input-text">
								<div id="usernameTip" class="onShow">请输入用户名</div>
							</div>
							<div class="input">
								<label>密码：</label>
								<input type="password" id="password" name="password" size="36"
									class="input-text">
								<div id="passwordTip" class="onShow">请输入密码</div>
							</div>
							<div class="input">
								<label>验证码：</label>
								<input type="text" id="verifyCode" name="verifyCode"
									class="input-text">
								<a href="vc.htm">
									<img id="validateImg" src="vc.htm" width="100" height="30" />
								</a>
							</div>
							<div class="reg1">
								<div class="submit">
									<input type="submit" name="dosubmit" value="" class="add_btn">
								</div>
								<br>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div id="main_right">
			<div class="ad03">
				<a href="www.baidu.com">
					<img src="images/xiaozhangprint.jpg" alt="微信群分享" width="20"
						height="20">
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
		<style></style>
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

			<script src="js/h.js" type="text/javascript"></script>
			<a
				href="http://tongji.baidu.com/hm-web/welcome/ico?s=60847fa52f4419e5909bd29f8ad71a1e"
				target="_blank"> </a>
		</div>
	</div>
	<style></style>
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
	<script type="text/javascript">
		function goTopEx() {
			var a = document.getElementById("m-rightbar");
			window.onscroll = function() {
				if (window.navigator.userAgent.indexOf("Chrome") >= 0) {
					if (document.body.scrollTop > 300) {
						a.style.display = ""
					} else {
						a.style.display = "none"
					}
				} else {
					document.documentElement.scrollTop > 300 ? a.style.display = ""
							: a.style.display = "none";
				}
			}
		}
		if (document.getElementById("m-rightbar")) {
			document.getElementById("m-rightbar").style.display = "none"
		}
		goTopEx()
	</script>
	<script type="text/javascript">
		jQuery(function() {
			$('#top1').click(function() {
				$('html,body').animate({
					scrollTop : '0px'
				}, 1000);
				return false;
			});
			$('#footer1').click(function() {
				$('html,body').animate({
					scrollTop : document.body.clientHeight
				}, 1000);
				return false;
			});
		});
	</script>
	<script type="text/javascript">
		/* 创建于 2015-08-07*/
		var cpro_psid = "u2252074";
	</script>
	<script>
		window._bd_share_config = {
			"common" : {
				"bdSnsKey" : {},
				"bdText" : "",
				"bdMini" : "2",
				"bdMiniList" : false,
				"bdPic" : "",
				"bdStyle" : "0",
				"bdSize" : "16"
			},
			"slide" : {
				"type" : "slide",
				"bdImg" : "1",
				"bdPos" : "right",
				"bdTop" : "100"
			}
		};
		with (document)
			0[(getElementsByTagName('head')[0] || body)
					.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
					+ ~(-new Date() / 36e5)];
	</script>
	<script>
		QIHOO_UNION_F_SLOT = {
			w : 500,
			h : 48,
			ls : "s2a8728378f",
			position : 7,
			display : 2,
			origin : 0
		};
	</script>
	<div id="QIHOO_UNION_F_PLACEHOLDER_147269814869949.61310984750249"
		data-ls="s2a8728378f"
		data-rurl="http://www.91weixinqun.com/member/register"
		style="margin: 0px; padding: 0px; float: none; overflow: hidden; display: none; border: none; visibility: visible; cursor: pointer; box-sizing: content-box; z-index: 2147483646; width: 100%; height: 48px; position: fixed; left: 0px; bottom: 0px; background: none;">

	</div>
	<script>
		(function() {
			var s = "_" + Math.random().toString(36).slice(2);
			document.write('<div id="' + s + '"></div>');
			(window.slotbydup = window.slotbydup || []).push({
				id : '1157256',
				container : s,
				size : '130,300',
				display : 'float'
			});
		})();
	</script>
	<div id="_c8rc0b4nfdwp6x9rqpr1thuxr"
		style="box-sizing: content-box; width: 130px; height: 317px; overflow: hidden; z-index: 2147483647; position: fixed; top: 200px; right: 34px;">

		<div
			style="box-sizing: content-box; height: 15px; border: 1px solid #e1e1e1; background: #f0f0f0; margin: 0; padding: 0; overflow: hidden;">
		</div>
	</div>
	<script>
		(function() {
			var s = "_" + Math.random().toString(36).slice(2);
			document.write('<div id="' + s + '"></div>');
			(window.slotbydup = window.slotbydup || []).push({
				id : '1157254',
				container : s,
				size : '130,300',
				display : 'float'
			});
		})();
	</script>
	<div id="_0btvicav098w0atucipd7h9f6r"
		style="box-sizing: content-box; width: 130px; height: 317px; overflow: hidden; z-index: 2147483647; position: fixed; top: 200px; left: 34px;">

		<div
			style="box-sizing: content-box; height: 15px; border: 1px solid #e1e1e1; background: #f0f0f0; margin: 0; padding: 0; overflow: hidden;">
		</div>
	</div>
	<div id="BAIDU_DSPUI_FLOWBAR" fixed="true"
		style="height: 50px; width: 100%; z-index: 2147483647; zoom: 1; overflow: visible; top: 0px; margin-top: -50px; left: 0px; right: auto; display: none;">

		<div
			style="position: absolute; opacity: 0.4; width: 40px; height: 20px; z-index: 111; bottom: -20px; right: 0px; background: rgb(0, 0, 0);"></div>
		<div
			style="position: absolute; width: 40px; height: 20px; line-height: 20px; cursor: pointer; text-align: center; color: rgb(255, 255, 255); font-size: 12px; z-index: 112; bottom: -20px; right: 0px;">关闭</div>
	</div>
	<div class="bdshare-slide-button-box bdshare-slide-style-r1"
		style="top: 100px; width: 0px; z-index: 99999; right: 0px;"
		data-bd-bind="1472698149131">
		<a href="http://www.91weixinqun.com/member/register#"
			onclick="return false;" class="bdshare-slide-button"
			style="left: -24px;"></a>
		<div class="bdshare-slide-list-box" style="width: 0px; display: none;">
			<div class="bdshare-slide-top">分享到</div>
			<div class="bdshare-slide-list">
				<ul class="bdshare-slide-list-ul" style="width: 226px;"></ul>
			</div>
			<div class="bdshare-slide-bottom" style="width: 226px;">
				<a href="http://www.91weixinqun.com/member/register#"
					onclick="return false;" class="slide-more" data-cmd="more">更多...</a>
			</div>
		</div>
	</div>
</body>
</html>