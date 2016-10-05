<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<title>微信群网罗 - 微信群|微信群二维码|微信群大全-最具人气的微信群导航</title>
<meta name="keywords"
	content="微信群,微信群分享,微信群大全,微信红包,微信红包群,红包群,微信群导航,微信群二维码,微信群推荐,微信群聊,微信加群,微信群人数上限,微信群怎么建,微信群怎么找">
<meta name="description"
	content="最具人气的微信群导航,为大家提供各地区各兴趣的微信群二维码图片,大家可以根据需要找到自己感兴趣的微信群,我们的目标是做最好的微信群聊推荐网站。查看群二维码，提交群信息，让大家快速找到自己喜爱的微信群。">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/simplefoucs.js"></script>
<script type="text/javascript" src="http://cbjs.baidu.com/js/m.js"></script>
<script src="js/share.js"></script>
<link rel="stylesheet" href="css/slide_share.css">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<!-- 广告 最上面-->
<script
	src="http://e.e708.net/cpc/diy/index.php?77882_4_20_2_d70000_1200|40_"
	charset="gb2312"></script>
<!-- 广告 最上面-->
<body>
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
	<div id="main_content">
		<div id="main_left">
			<!-- 中间上面 -->
			<script
				src="http://e.e708.net/cpc/index.php?77882_0_4_0|1|2_d70000__"
				charset="gb2312"></script>
			<!-- 中间上面 -->
			<div class="illeftbox">
				<div class="ibox_top">
					最新微信群
					<span>
						<a target="_blank" title="更多微信群"
							href="http://www.91weixinqun.com/group">更多&gt;&gt;</a>
					</span>
				</div>
				<ul class="ibox_content popo">
					<c:forEach var="item" items="${wxGroupList.resultList}">
						<li>
							<a target="_blank" title="${item.name }" class="syfltj" href=""
								alt="${item.name }">
								<img width="100" height="100" src="${item.coverUrl }">
								<div class="title">${item.name }</div>
							</a>
							<div class="pop"
								style="display: none; left: 294.5px; top: 348px;">
								<div class="panel">
									<div class="ewm">
										<img src="${item.qrcodeUrl }" alt="${item.name }">
									</div>
									<div class="title">${item.name }</div>
									<div class="des">
										<p></p>
									</div>
								</div>
								<div class="arrow">
									<div class="arrow1"></div>
									<div class="arrow2"></div>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!--中间第二个-->
			<script
				src="http://e.e708.net/cpc/index.php?77882_0_4_0|1|2_d70000__"
				charset="gb2312"></script>
			<!--中间第二个-->
			<div class="qun-content fLeft mt20"
				style="width: 747px; margin-top: 15px;">
				<div class="ibox_top">
					微信号
					<span>
						<a target="_blank" title="更多微信号"
							href="http://www.91weixinqun.com/weishang">更多&gt;&gt;</a>
					</span>
				</div>
				<ul class="w1000" style="width: 724px">
					<c:forEach var="item" items="${wxPublicList.resultList}">
						<li style="width: 180px">
							<div class="dt" style="width: 160px">
								<a title="${item.name }" href="${item.coverUrl }"
									target="_blank" style="margin: 10px 0 0 10px;">
									<img width="150" height="150" alt="${item.name }"
										src="${item.coverUrl }">
								</a>
							</div>
							<div class="db"
								style="width: 160px; margin: 10px 10px 10px 10px;">
								<p class="p1">
									<i class="title"></i>
									<a title="${item.name }" href="${item.qrcodeUrl }"
										target="_blank">${item.name }</a>
									<span class="view">
										<a href="http://www.91weixinqun.com/weishang/19535.html"
											target="_blank">
											<img width="20" height="18" alt="人气" src="${item.qrcodeUrl }">
										</a>
									</span>
								</p>
								<p class="p2">
									<span class="fLeft">
										微信：
										<font class="fs">${item.wxAccount }</font>
									</span>
								</p>
								<p class="p3">${item.desc }</p>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="clear"></div>
			<div class="module_box">
				<div class="ibox_top">
					货源信息
					<span>
						<a target="_blank" title="更多货源"
							href="http://www.91weixinqun.com/goods">更多&gt;&gt;</a>
					</span>
				</div>
				<div class="avatar_s1">
					<div style="display: none;" class="cover_info">
						<a target="_blank"
							href="http://www.91weixinqun.com/goods/624.html">
							<h2>zng甄肌蜂蜜多效奇迹水精华最新微商</h2>
							<p>[微信号:85342209]</p>
							<p>一款安全到可以吃的zng甄肌蜂蜜多效奇迹水精华，zng甄肌蜂蜜多效奇迹水精华是一款能喝的神秘新品！！！
								加盟v信：【85342209】</p>
						</a>
					</div>
					<div class="info_box">
						<span style="display: inline;">zng甄肌蜂蜜多效奇迹水精华最新微商</span>
					</div>
					<a target="_blank" href="http://www.91weixinqun.com/goods/624.html">
						<img width="230" height="145" alt="zng甄肌蜂蜜多效奇迹水精华最新微商"
							title="zng甄肌蜂蜜多效奇迹水精华最新微商"
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c531f5916f3.jpg">
					</a>
				</div>

				<div class="cl"></div>
			</div>
			<script type="text/javascript">
				var jd_union_unid = "338321269", jd_ad_ids = "506:6", jd_union_pid = "CMLah4yGKhD1vqmhARoAINj436UBKgA=";
				var jd_width = 760;
				var jd_height = 90;
				var jd_union_euid = "";
				var p = "ABcBUhpYFAMUNwpfBkgyTUMIRmtKRk9aZV8ETVxNNwpfBkgya3cFUiVjXGxiFmVSEgFMYDVeDkdWYgtZK1kQBxoBVBlcFTIQBVwZWBUBFQ9lKwRRX083HnVaJV1WWggrWxAHFwFQHlMVBREPVSta";
			</script>
		</div>
		<!-- 右边二维码 -->
		<div id="main_right">
			<div style="padding: 0px;" class="irrightbox">
				<!-- 二维码上面的 -->
				<script
					src="http://e.e708.net/cpc/diy/index.php?77882_4_20_2_d70000_250|80_"
					charset="gb2312"></script>
				<!-- 二维码上面的 -->
			</div>
			<div class="ad03">
				<a href="http://www.ntujtxy.top">
					<img src="images/qrcode.jpg" alt="微信群网罗">
				</a>
			</div>
			<div class="row_qun">
				<a
					href="http://www.91weixinqun.com/share/go/u/aHR0cDovL3d3dy45MXdlaXhpbnF1bi5jb20vcXVuLzUzNzc0Lmh0bWw/aid/5.html"
					target="_blank" title="" class="td_qun">
					<p class="img">
						<img
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57835c207f4c9.jpg">
					</p>
					<p class="alt_msg">
						<span class="name">开户送58元</span>
					</p>
				</a>
				<div class="clear"></div>
			</div>
			<div class="sider" style="margin-top: 10px;">
				<h2 class="weichat_box_title">推荐加入</h2>
				<div class="border_three">
					<ul style="display: block;" class="recommend2 bj_recommend">
						<li>
							<a class="recommend2_icon"
								href="http://www.91weixinqun.com/qun/58479.html">
								<img alt="新手微商互粉互推 精准涨粉"
									src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3eb955e5f3.jpg">
							</a>
							<a title="新手微商互粉互推 精准涨粉" class="recommend2_name"
								href="http://www.91weixinqun.com/qun/58479.html" target="_blank">新手微商互粉互推
								精准涨粉</a>
							<div class="icon_r" style="display: block;">互粉</div>
							<span style="display: none;">
								<a href="http://www.91weixinqun.com/qun/58479.html"
									target="_blank">查看</a>
							</span>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			<!-- 广告6 -->
			<script src="http://e.e708.net/cpc/pf.php?77882_3_18_0|1|2_d70000__"
				charset="gb2312"></script>
			<!-- 广告 7-->

			<div id="sider" style="margin-top: 10px;">
				<div
					style="margin-top: 10px; border: 1px solid #ccc; background-color: #FFF"
					class="sider">
					<h2 class="weichat_box_title">
						微信学园
						<strong>
							<a href="">更多&gt;&gt;</a>
						</strong>
					</h2>
					<ul class="news_list">
						<li>
							<a target="_blank" href="">微商如何打造属于个人品牌？</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="helps mods">
			<div class="top clearfix">
				<div class="title2">
					微信资讯
					<a href="">更多&gt;&gt;</a>
				</div>
				<div class="title3">
					帮助中心
					<a href="">更多&gt;&gt;</a>
				</div>
			</div>
			<div class="content clearfix">
				<div class="leftPant">
					<ul class="helpsUl">
						<li class="helpLi">
							<a target="_blank" href="">手机恶意程序大城市易中招 微信成新型诈骗重灾区</a>
						</li>
					</ul>
				</div>
				<div class="rightPant">
					<ul class="helpsUl">
						<li class="helpLi">
							<a target="_blank" href="">怎么把别人发的小视频发到朋友圈</a>
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
	<!-- 右下角 -->
	<script src="http://v.e705.net/cpf/index.php?77882_1|1_1_1"
		charset="gb2312"></script>
	<!-- 右下角 -->


	<!-- 站长统计 -->

</body>
</html>