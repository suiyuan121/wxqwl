<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<title>我的微信群 - 微信群分享 - 微信群|微信群二维码|微信群大全-最具人气的微信群导航</title>
<meta name="keywords"
	content="微信群,微信群分享,微信群大全,微信群二维码,微信群推荐,微信群聊,微信加群,微信群人数上限,微信群怎么建,微信群怎么找">
<meta name="description"
	content="最具人气的微信群导航,为大家提供各地区各兴趣的微信群二维码图片,大家可以根据需要找到自己感兴趣的微信群,我们的目标是做最好的微信群聊推荐网站。查看群二维码，提交群信息，让大家快速找到自己喜爱的微信群。">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/table_form.css">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/simplefoucs.js"></script>
<script src="js/ls.js"></script>
<script src="js/share.js"></script>
<link rel="stylesheet" href="css/slide_share.css">
<style type="text/css">
</style>
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
				<a href="" title="公众号">公众号</a>
			</li>
			<li class="hot">
				<a href="" title="微商群主">个人微信号</a>
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
		<script src="js/list1.js" type="text/javascript"></script>
		<div class="logininfo">
			<ul>
				<li>
					<c:choose>
						<c:when test="${not empty uid}">
							<a href="userCenter.htm">个人中心</a>
						</c:when>
						<c:otherwise>
							<a href="logon.htm">登录</a>
						</c:otherwise>
					</c:choose>
				</li>
				<li>
					<c:choose>
						<c:when test="${not empty uid}">
							<a href="logout.htm">退出</a>
						</c:when>
						<c:otherwise>
							<a href="register.htm">注册</a>
						</c:otherwise>
					</c:choose>
				</li>
			</ul>
		</div>
	</div>
	<script src="js/list1.js" type="text/javascript"></script>

	<div id="main_content">
		<div class="helps mods">
			<div class="left-memu">
				<h5>
					<a href="http://www.91weixinqun.com/member/index">管理中心</a>
				</h5>
				<h6>发布管理</h6>
				<ul>
					<li>
						<a href="publishWxgroup.htm" target="myView">发布微信群</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/member/addqun">发布个人微信</a>
					</li>
					<li>
					<li>
						<a href="http://www.91weixinqun.com/member/wechat">发布公众号</a>
					</li>
				</ul>
				<h6>已发布管理</h6>
				<ul>
					<li>
						<a href="mywx.htm">我的微信</a>
					</li>
					<li>
						<a href="mywxgroup.htm">我的微信群</a>
					</li>
					<li>
						<a href="mywxgzh.htm">我的公众号</a>
					</li>
				</ul>
				<h6>账号管理</h6>
				<ul>
					<li>
						<a href="userInfo.htm" target="myView">个人信息</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/member/upmember">修改个人信息</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/member/upqcode">修改二维码</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/member/upfaceimg">修改头像</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/member/uppasd">修改密码</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/member/boundwx">绑定微信</a>
					</li>
				</ul>
				<span
					style="font-size: 14px; background: none repeat scroll 0% 0% rgb(185, 185, 185); color: rgb(255, 255, 255); display: block; height: 30px; padding-left: 35px; width: 175px; padding-top: 9px;">微信群分享官方微信</span>
				<div style="margin-left: 40px; margin-top: 10px;">
					<img src="images/qrcode.jpg" width="120px" height="120px"
						alt="微信群分享" style="margin: 5px 0px">
				</div>
			</div>
			<div class="right-content">
				<div class="col-1 clearfix">
					<iframe src="" name="myView" width="100%" height="800"></iframe>
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
					<a href="" target="_blank">关于我们</a>
				</li>
				<li>
					<a href="" target="_blank">联系方式</a>
				</li>
				<li>
					<a href="" target="_blank">版权声明</a>
				</li>
				<li>
					<a href="" target="_blank">用户须知</a>
				</li>
				<li>
					<a href="" target="_blank">用户协议</a>
				</li>
				<li>
					<a href="" target="_blank">隐私保护</a>
				</li>
				<li>
					<a class="bg_no" href="" target="_blank">广告合作</a>
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
					<li class="linkLi">
						<a target="_blank" href="http://www.wshangw.net/">微商网</a>
					</li>
					<li class="linkLi">
						<a target="_blank" href="http://www.vixin123.com/">微信公众账号大全</a>
					</li>
					<li class="linkLi">
						<a target="_blank" href="http://www.xiranren.com/">洗染人网</a>
					</li>
					<li class="linkLi">
						<a href="http://www.cncompany.cn/" target="_blank">微商货源</a>
					</li>
					<li class="linkLi">
						<a target="_blank" href="http://www.weixinqun.com/">微信红包群</a>
					</li>
					<li class="linkLi">
						<a href="http://www.315fangwei.com/" target="_blank">二维码防伪 </a>
					</li>
					<li class="linkLi">
						<a href="http://www.zijinwhg.com/" target="_blank">微商货源</a>
					</li>
					<li class="linkLi">
						<a href="http://www.weihaotui.com/" target="_blank">微信推广</a>
					</li>
					<li class="linkLi">
						<a href="http://www.vsuda.cn/" target="_blank">微信公众号</a>
					</li>
					<li class="linkLi">
						<a href="http://www.weihongbao.net/" target="_blank">微信红包群</a>
					</li>
					<li class="linkLi">
						<a href="http://www.wechatnet.com/" target="_blank">微信公共号平台</a>
					</li>
					<li class="linkLi">
						<a href="http://www.weixinqun.cn/" target="_blank">微信红包群</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<div class="footer_right">
			<br>
			联系方式：Email：1581128024@qq.com 客服QQ：1581128024 互动群
			<br>
			<div>
				<script type="text/javascript">
					var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
							: " http://");
					document
							.write(unescape("%3Cspan id='cnzz_stat_icon_1260493867'%3E%3C/span%3E%3Cscript src='"
									+ cnzz_protocol
									+ "s95.cnzz.com/z_stat.php%3Fid%3D1260493867%26show%3Dpic2' type='text/javascript'%3E%3C/script%3E"));
				</script>
			</div>
			<br>
		</div>
	</div>
	<div id="m-rightbar">
		<div class="m-menu">
			<ul>
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
			</ul>
		</div>
	</div>
</body>
</html>