<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<title>微信群分享 - 微信群|微信群二维码|微信群大全-最具人气的微信群导航</title>
<meta name="keywords"
	content="微信群,微信群分享,微信群大全,微信红包,微信红包群,红包群,微信群导航,微信群二维码,微信群推荐,微信群聊,微信加群,微信群人数上限,微信群怎么建,微信群怎么找">
<meta name="description"
	content="最具人气的微信群导航,为大家提供各地区各兴趣的微信群二维码图片,大家可以根据需要找到自己感兴趣的微信群,我们的目标是做最好的微信群聊推荐网站。查看群二维码，提交群信息，让大家快速找到自己喜爱的微信群。">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/simplefoucs.js"></script>
<script type="text/javascript" src="http://cbjs.baidu.com/js/m.js"></script>
<script type="text/javascript">
BAIDU_CLB_preloadSlots("1157254","1157256");
</script>
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
				<a href="http://www.91weixinqun.com/">
					<img src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/logo.png"
						alt="微信群分享">
				</a>
			</h1>
			<div style="float: left; margin-top: 17px; margin-left: 50px;"></div>
			<div class="search_top">
				<form action="http://www.91weixinqun.com/group/index" method="post"
					id="search_soft">
					<input type="text" name="keywd" value="搜索" id="search_txt">
					<input type="image" src="images/search_btn.gif" id="search_btn">
				</form>
			</div>
		</div>
	</div>
	<div id="nav_box">
		<ul class="nav-site">
			<li class="hot cur">
				<a href="http://www.91weixinqun.com/">首页</a>
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
			<div
				style="width: 245px; height: 90px; margin-bottom: 5px; float: left; border: 1px solid #ccc; margin-right: 3px;">
				<a
					href="http://www.91weixinqun.com/share/go/u/aHR0cDovL3d3dy45NHpodWJvLmNvbQ/aid/9.html"
					target="_blank">
					<img
						src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57bb145064530.png"
						width="245px" height="90px">
				</a>
			</div>
			<div
				style="width: 245px; height: 90px; margin-bottom: 5px; float: left; border: 1px solid #ccc; margin-right: 3px;">
				<a
					href="http://www.91weixinqun.com/share/go/u/aHR0cDovL2pxLnFxLmNvbS8_X3d2PTEwMjcmaz0yRkFHNW1K/aid/8.html"
					target="_blank">
					<img
						src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c1374dadf33.jpg"
						width="245px" height="90px">
				</a>
			</div>
			<div
				style="width: 245px; height: 90px; margin-bottom: 5px; float: left; border: 1px solid #ccc;">

				<script type="text/javascript"
					src="http://cpro.baidustatic.com/cpro/ui/c.js"></script>
			</div>
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
			<div>
				<a
					href="http://www.91weixinqun.com/share/go/u/aHR0cDovL2pxLnFxLmNvbS8_X3d2PTEwMjcmaz0yRjNaQlAx/aid/10.html"
					target="_blank">
					<img
						src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57bbc21b0bef8.gif"
						width="740px" height="90px">
				</a>
			</div>
			<div class="qun-content fLeft mt20"
				style="width: 724px; margin-top: 15px;">
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
			<script>QIHOO_UNION_SLOT={w:750, h:120, ls:"s329d1c628d"};</script>
			<script src="http://s.lianmeng.360.cn/so/inlay.js" charset="utf-8"></script>
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
				<div class="avatar_s1">
					<div style="display: none;" class="cover_info">
						<a target="_blank"
							href="http://www.91weixinqun.com/goods/623.html">
							<h2>含谜手工皂和气垫bb做代理赚钱吗？月收入过万吗？</h2>
							<p>[微信号:gaojinrong5310]</p>
							<p>想了解含谜化妆品的伙伴可以加我微信进行了解，微信里每一款都有详细的介绍。微信：gaojinrong5310可扫二维码加我。</p>
						</a>
					</div>
					<div class="info_box">
						<span style="display: inline;">含谜手工皂和气垫bb做代理赚钱吗？月收入过万吗？</span>
					</div>
					<a target="_blank" href="http://www.91weixinqun.com/goods/623.html">
						<img width="230" height="145" alt="含谜手工皂和气垫bb做代理赚钱吗？月收入过万吗？"
							title="含谜手工皂和气垫bb做代理赚钱吗？月收入过万吗？"
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c530659115c.jpg">
					</a>
				</div>
				<div class="avatar_s1">
					<div style="display: none;" class="cover_info">
						<a target="_blank"
							href="http://www.91weixinqun.com/goods/622.html">
							<h2>韩国珠儿丽磁石面膜全国总代理</h2>
							<p>[微信号:1681998]</p>
							<p>批发，代发，零售，韩国珠儿丽磁石面膜《全国总代理》详细加微信LV：1681998咨询</p>
						</a>
					</div>
					<div class="info_box">
						<span style="display: inline;">韩国珠儿丽磁石面膜全国总代理</span>
					</div>
					<a target="_blank" href="http://www.91weixinqun.com/goods/622.html">
						<img width="230" height="145" alt="韩国珠儿丽磁石面膜全国总代理"
							title="韩国珠儿丽磁石面膜全国总代理"
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c52a4bb3cc8.jpg">
					</a>
				</div>
				<div class="avatar_s1">
					<div style="display: none;" class="cover_info">
						<a target="_blank"
							href="http://www.91weixinqun.com/goods/621.html">
							<h2>澜庭集新品纵美水肌洁面乳微商招代理吗？纵美洗面奶什么时候上市？</h2>
							<p>[微信号:1364998357]</p>
							<p>澜庭集新品纵美洁面乳，九月隆重上市！澜庭集官方总代V信：1364998357，手机15957732018</p>
						</a>
					</div>
					<div class="info_box">
						<span style="display: inline;">澜庭集新品纵美水肌洁面乳微商招代理吗？纵美洗面奶什么时候上市？</span>
					</div>
					<a target="_blank" href="http://www.91weixinqun.com/goods/621.html">
						<img width="230" height="145"
							alt="澜庭集新品纵美水肌洁面乳微商招代理吗？纵美洗面奶什么时候上市？"
							title="澜庭集新品纵美水肌洁面乳微商招代理吗？纵美洗面奶什么时候上市？"
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c502561ce5d.png">
					</a>
				</div>
				<div class="avatar_s1">
					<div style="display: none;" class="cover_info">
						<a target="_blank"
							href="http://www.91weixinqun.com/goods/620.html">
							<h2>馅中馅月饼厂家批发微商批发总代理正品</h2>
							<p>[微信号:dk28866]</p>
							<p>馅中馅月饼势必会取代传统月饼，凭借其精美的外形，卓越的口感网罗广大吃货的心，批发购买请认准微信：dk28866</p>
						</a>
					</div>
					<div class="info_box">
						<span style="display: inline;">馅中馅月饼厂家批发微商批发总代理正品</span>
					</div>
					<a target="_blank" href="http://www.91weixinqun.com/goods/620.html">
						<img width="230" height="145" alt="馅中馅月饼厂家批发微商批发总代理正品"
							title="馅中馅月饼厂家批发微商批发总代理正品"
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c4f98387abd.png">
					</a>
				</div>
				<div class="avatar_s1">
					<div style="display: none;" class="cover_info">
						<a target="_blank"
							href="http://www.91weixinqun.com/goods/619.html">
							<h2>初黛洗发水震撼登场！招收代理</h2>
							<p>[微信号:weishang026]</p>
							<p>2016微商做什么最赚钱，初黛洗发水震撼登场！千万别错过初黛，初黛洗发水带你华丽转身，完美蜕变!初黛洗发水黄云团队领军人：weishang026</p>
						</a>
					</div>
					<div class="info_box">
						<span style="display: inline;">初黛洗发水震撼登场！招收代理</span>
					</div>
					<a target="_blank" href="http://www.91weixinqun.com/goods/619.html">
						<img width="230" height="145" alt="初黛洗发水震撼登场！招收代理"
							title="初黛洗发水震撼登场！招收代理"
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3dfd222da6.jpg">
					</a>
				</div>
				<div class="avatar_s1">
					<div style="display: none;" class="cover_info">
						<a target="_blank"
							href="http://www.91weixinqun.com/goods/618.html">
							<h2>桃小蜜/梨公子罐头代理 微囧系列 新品全国招商</h2>
							<p>[微信号:215036133]</p>
							<p>微囧—罐头系列【开售啦‼】【招商启动】吃货福利大放送，朋友，你想过有一天吃也可以赚钱么？让我大声的告诉你，这个时代就在今天，你实现了！现招募全国各级代理，招商微信：215036133</p>
						</a>
					</div>
					<div class="info_box">
						<span style="display: inline;">桃小蜜/梨公子罐头代理 微囧系列 新品全国招商</span>
					</div>
					<a target="_blank" href="http://www.91weixinqun.com/goods/618.html">
						<img width="230" height="145" alt="桃小蜜/梨公子罐头代理 微囧系列 新品全国招商"
							title="桃小蜜/梨公子罐头代理 微囧系列 新品全国招商"
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3dde047f64.jpg">
					</a>
				</div>
				<div class="avatar_s1">
					<script type="text/javascript">
					/*225*140 创建于 2014-11-07*/
					var cpro_id = "u1795812";
				</script>
					<script src="http://cpro.baidustatic.com/cpro/ui/c.js"
						type="text/javascript"></script>
				</div>
				<div class="avatar_s1">
					<div style="display: none;" class="cover_info">
						<a target="_blank"
							href="http://www.91weixinqun.com/goods/617.html">
							<h2>白皙化妆产品真的好卖吗？多少钱？如何代理加盟？</h2>
							<p>[微信号:13793820481]</p>
							<p>现在的微信，有团队有品牌才可以卖，微商进步很快，电商颠覆传统，微商颠覆电商，团队颠覆品牌，WS女神团队，2016带你做不一样的微商。（白皙官方总代：13793820481）</p>
						</a>
					</div>
					<div class="info_box">
						<span style="display: inline;">白皙化妆产品真的好卖吗？多少钱？如何代理加盟？</span>
					</div>
					<a target="_blank" href="http://www.91weixinqun.com/goods/617.html">
						<img width="230" height="145" alt="白皙化妆产品真的好卖吗？多少钱？如何代理加盟？"
							title="白皙化妆产品真的好卖吗？多少钱？如何代理加盟？"
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3d4077534d.jpg">
					</a>
				</div>
				<div class="cl"></div>
			</div>
			<script type="text/javascript">var jd_union_unid="338321269",jd_ad_ids="506:6",jd_union_pid="CMLah4yGKhD1vqmhARoAINj436UBKgA=";var jd_width=760;var jd_height=90;var jd_union_euid="";var p="ABcBUhpYFAMUNwpfBkgyTUMIRmtKRk9aZV8ETVxNNwpfBkgya3cFUiVjXGxiFmVSEgFMYDVeDkdWYgtZK1kQBxoBVBlcFTIQBVwZWBUBFQ9lKwRRX083HnVaJV1WWggrWxAHFwFQHlMVBREPVSta";</script>
			<script type="text/javascript" charset="utf-8"
				src="http://u.x.jd.com/static/js/auto.js"></script>
		</div>
		<div id="main_right">
			<div style="padding: 0px;" class="irrightbox">
				<a href="http://www.94zhubo.com/" target="_blank">
					<img src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/zhubo.gif"
						alt="主播网" width="240px">
				</a>
			</div>
			<div class="ad03">
				<a href="http://www.91weixinqun.com/#">
					<img src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/qrcode.jpg"
						alt="微信群分享">
				</a>
			</div>
			<div class="ad03">
				<a
					href="http://www.91weixinqun.com/share/go/u/aHR0cDovL2pxLnFxLmNvbS8_X3d2PTEwMjcmaz0yR05aVER6/aid/11.html"
					target="_blank">
					<img
						src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57bbf8652e600.gif">
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
				<a
					href="http://www.91weixinqun.com/share/go/u/aHR0cDovL3d3dy45MXdlaXhpbnF1bi5jb20vcXVuLzU2MjQ2Lmh0bWw/aid/3.html"
					target="_blank" title="" class="td_qun">
					<p class="img">
						<img
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57a301fba72c3.jpg">
					</p>
					<p class="alt_msg">
						<span class="name">天使PC蛋蛋娱</span>
					</p>
				</a>
				<a
					href="http://www.91weixinqun.com/share/go/u/aHR0cDovL3d3dy45MXdlaXhpbnF1bi5jb20vcXVuLzU2NjE1Lmh0bWw/aid/2.html"
					target="_blank" title="" class="td_qun">
					<p class="img">
						<img
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57a849bdcf162.jpeg">
					</p>
					<p class="alt_msg">
						<span class="name">手机电玩招代理</span>
					</p>
				</a>
				<a
					href="http://www.91weixinqun.com/share/go/u/aHR0cDovL3d3dy45MXdlaXhpbnF1bi5jb20vcXVuLzU2OTY1Lmh0bWw/aid/1.html"
					target="_blank" title="" class="td_qun">
					<p class="img">
						<img
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57ad5923cc170.jpg">
					</p>
					<p class="alt_msg">
						<span class="name">北京赛车 </span>
					</p>
				</a>
				<a
					href="http://www.91weixinqun.com/share/go/u/aHR0cDovL3d3dy45MXdlaXhpbnF1bi5jb20vcXVuLzU4NDc1Lmh0bWw.html"
					target="_blank" title="" class="td_qun">
					<p class="img">
						<img
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3e564845c3.png">
					</p>
					<p class="alt_msg">
						<span class="name">进群+群主==</span>
					</p>
				</a>
				<a
					href="http://www.91weixinqun.com/share/go/u/aHR0cDovL3d3dy45MXdlaXhpbnF1bi5jb20vcXVuLzU4NDczLmh0bWw.html"
					target="_blank" title="" class="td_qun">
					<p class="img">
						<img
							src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3e11538990.png">
					</p>
					<p class="alt_msg">
						<span class="name">进群加群主+ </span>
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
						<li class="even">
							<a class="recommend2_icon"
								href="http://www.91weixinqun.com/qun/58470.html">
								<img alt="互粉交友"
									src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3dcba1c568.jpg">
							</a>
							<a title="互粉交友" class="recommend2_name"
								href="http://www.91weixinqun.com/qun/58470.html" target="_blank">互粉交友</a>
							<div class="icon_r" style="display: block;">互粉</div>
							<span style="display: none;">
								<a href="http://www.91weixinqun.com/qun/58470.html"
									target="_blank">查看</a>
							</span>
						</li>
						<li>
							<a class="recommend2_icon"
								href="http://www.91weixinqun.com/qun/58423.html">
								<img alt="同城聊天交友吧"
									src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c392fb5357e.jpg">
							</a>
							<a title="同城聊天交友吧" class="recommend2_name"
								href="http://www.91weixinqun.com/qun/58423.html" target="_blank">同城聊天交友吧</a>
							<div class="icon_r" style="display: block;">互粉</div>
							<span style="display: none;">
								<a href="http://www.91weixinqun.com/qun/58423.html"
									target="_blank">查看</a>
							</span>
						</li>
						<li class="even">
							<a class="recommend2_icon"
								href="http://www.91weixinqun.com/qun/58489.html">
								<img alt="创业交流群"
									src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3f9d78f037.jpg">
							</a>
							<a title="创业交流群" class="recommend2_name"
								href="http://www.91weixinqun.com/qun/58489.html" target="_blank">创业交流群</a>
							<div class="icon_r" style="display: block;">交友</div>
							<span style="display: none;">
								<a href="http://www.91weixinqun.com/qun/58489.html"
									target="_blank">查看</a>
							</span>
						</li>
						<li>
							<a class="recommend2_icon"
								href="http://www.91weixinqun.com/qun/58453.html">
								<img alt="厦门聊天交友群"
									src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3d0ba1afce.jpg">
							</a>
							<a title="厦门聊天交友群" class="recommend2_name"
								href="http://www.91weixinqun.com/qun/58453.html" target="_blank">厦门聊天交友群</a>
							<div class="icon_r" style="display: block;">交友</div>
							<span style="display: none;">
								<a href="http://www.91weixinqun.com/qun/58453.html"
									target="_blank">查看</a>
							</span>
						</li>
						<li class="even">
							<a class="recommend2_icon"
								href="http://www.91weixinqun.com/qun/58495.html">
								<img alt="欢乐购"
									src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c40173f4048.jpg">
							</a>
							<a title="欢乐购" class="recommend2_name"
								href="http://www.91weixinqun.com/qun/58495.html" target="_blank">欢乐购</a>
							<div class="icon_r" style="display: block;">购物</div>
							<span style="display: none;">
								<a href="http://www.91weixinqun.com/qun/58495.html"
									target="_blank">查看</a>
							</span>
						</li>
						<li>
							<a class="recommend2_icon"
								href="http://www.91weixinqun.com/qun/58472.html">
								<img alt="股票交流群"
									src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3e0983be02.jpg">
							</a>
							<a title="股票交流群" class="recommend2_name"
								href="http://www.91weixinqun.com/qun/58472.html" target="_blank">股票交流群</a>
							<div class="icon_r" style="display: block;">金融</div>
							<span style="display: none;">
								<a href="http://www.91weixinqun.com/qun/58472.html"
									target="_blank">查看</a>
							</span>
						</li>
						<li class="even">
							<a class="recommend2_icon"
								href="http://www.91weixinqun.com/qun/58491.html">
								<img alt="辣妈交流群"
									src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3faa77cac9.jpg">
							</a>
							<a title="辣妈交流群" class="recommend2_name"
								href="http://www.91weixinqun.com/qun/58491.html" target="_blank">辣妈交流群</a>
							<div class="icon_r" style="display: block;">交友</div>
							<span style="display: none;">
								<a href="http://www.91weixinqun.com/qun/58491.html"
									target="_blank">查看</a>
							</span>
						</li>
						<li>
							<a class="recommend2_icon"
								href="http://www.91weixinqun.com/qun/58490.html">
								<img alt="交友学习"
									src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/57c3fa4e812ae.jpg">
							</a>
							<a title="交友学习" class="recommend2_name"
								href="http://www.91weixinqun.com/qun/58490.html" target="_blank">交友学习</a>
							<div class="icon_r" style="display: block;">交友</div>
							<span style="display: none;">
								<a href="http://www.91weixinqun.com/qun/58490.html"
									target="_blank">查看</a>
							</span>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			<script type="text/javascript">
var cpro_id="u2252087";
(window["cproStyleApi"] = window["cproStyleApi"] || {})[cpro_id]={at:"3",rsi0:"240",rsi1:"210",pat:"6",tn:"baiduCustNativeAD",rss1:"#FFFFFF",conBW:"1",adp:"1",ptt:"0",titFF:"%E5%BE%AE%E8%BD%AF%E9%9B%85%E9%BB%91",titFS:"14",rss2:"#000000",titSU:"0",ptbg:"90",piw:"0",pih:"0",ptp:"0"}
</script>
			<script src="http://cpro.baidustatic.com/cpro/ui/c.js"
				type="text/javascript"></script>
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
								href="http://www.91weixinqun.com/news/5846.html">微商如何打造属于个人品牌？</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5845.html">微商怎么做之沟通技巧</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5844.html">微商怎么做，微商起步方法和技巧</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5841.html">您的微信价值多少？大数据告诉你</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5838.html">新手小白如何短时间内熟练运营微</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5827.html">个性化的微信未来</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5825.html">决断：微信公共账号只做服务不做</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5824.html">一个微信运营牛人的三句话</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5823.html">看顺丰如何运营微信的案例</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5822.html">微信个人号如何互推?</a>
						</li>
						<li>
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5809.html">为什么越来越多的行业需要微信营</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="helps mods">
			<div class="top clearfix">
				<div class="title2">
					微信资讯
					<a href="http://www.91weixinqun.com/news/wxzx">更多&gt;&gt;</a>
				</div>
				<div class="title3">
					帮助中心
					<a href="http://www.91weixinqun.com/news/bzzx">更多&gt;&gt;</a>
				</div>
			</div>
			<div class="content clearfix">
				<div class="leftPant">
					<ul class="helpsUl">
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5851.html">手机恶意程序大城市易中招
								微信成新型诈骗重灾区</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5850.html">北京各大高校迎新季亮点多
								微信群成沟通感情利器</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5848.html">利用微信红包赌博被逮捕</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5847.html">微信成中国“微创新”典范
								引国外软件"抄袭"</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5840.html">微信红包群变身赌场：运用外挂软件
								庄家控制赌场</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5831.html">女子微信结识“小鲜肉”
								两人相约吃饭女子被骗</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5830.html">电信诈骗现升级版本
								骗子用微信卷走企业数百万</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5829.html">微信营销工具市场将呈现百花齐放格局</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5828.html">女子微信“直播”自杀
								民警营救</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5821.html">奢侈品“接地气”
								微信营销迎合消费迁移</a>
						</li>
					</ul>
				</div>
				<div class="rightPant">
					<ul class="helpsUl">
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5727.html">怎么把别人发的小视频发到朋友圈</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5593.html">微信小视频怎么导出保存？</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5470.html">申请微信公众号流程及需要的资料</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5287.html">微信运营必须收藏的软件工具合集，让你轻松运营微信公众号</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5239.html">微信帐号被封怎么办？这下清楚了！</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/5223.html">一分钟教会你微信公众号申请及使用方法</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/4390.html">微信修复功能来袭，专治各种疑难杂症！</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/4235.html">怎么使用微信 for
								Windows聊天记录备份恢复？</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/4234.html">微信绑定、解绑手机号码方法</a>
						</li>
						<li class="helpLi">
							<a target="_blank"
								href="http://www.91weixinqun.com/news/4226.html">微信常见诈骗手段---点赞诈骗</a>
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
			Copyright © 2014 91weixinqun.com 京ICP备10053256-4
			<br>
			联系方式：Email：3093154044@qq.com 客服QQ：3093154044 2780270027 互动群:165835750
			<br>
			<br>
			<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1253280649'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s9.cnzz.com/stat.php%3Fid%3D1253280649%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script>
			<span id="cnzz_stat_icon_1253280649">
				<a href="http://www.cnzz.com/stat/website.php?web_id=1253280649"
					target="_blank" title="站长统计">
					<img border="0" hspace="0" vspace="0"
						src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/pic1.gif">
				</a>
			</span>
			<script src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/stat.php"
				type="text/javascript"></script>
			<script src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/core.php"
				charset="utf-8" type="text/javascript"></script>
			<script type="text/javascript">var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F60847fa52f4419e5909bd29f8ad71a1e' type='text/javascript'%3E%3C/script%3E"));
</script>
			<script src="js/h.js" type="text/javascript"></script>
			<a
				href="http://tongji.baidu.com/hm-web/welcome/ico?s=60847fa52f4419e5909bd29f8ad71a1e"
				target="_blank">
				<img border="0"
					src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/21.gif" width="20"
					height="20">
			</a>
			<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1258761081'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/stat.php%3Fid%3D1258761081%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script>
			<span id="cnzz_stat_icon_1258761081">
				<a href="http://www.cnzz.com/stat/website.php?web_id=1258761081"
					target="_blank" title="站长统计">
					<img border="0" hspace="0" vspace="0"
						src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/pic1.gif">
				</a>
			</span>
			<script src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/stat(1).php"
				type="text/javascript"></script>
			<script src="./微信群分享 - 微信群_微信群二维码_微信群大全-最具人气的微信群导航_files/core(1).php"
				charset="utf-8" type="text/javascript"></script>
		</div>
	</div>
	<style></style>
	<div id="m-rightbar">
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
	<script type="text/javascript">function goTopEx(){
  var a=document.getElementById("m-rightbar");
  window.onscroll=function(){
    if(window.navigator.userAgent.indexOf("Chrome")>=0){
      if(document.body.scrollTop>300){
        a.style.display=""
        }else{
          a.style.display="none"
//           }
          }else{
            document.documentElement.scrollTop>300?a.style.display="":a.style.display="none"
            }
          }}if(document.getElementById("m-rightbar")){
            document.getElementById("m-rightbar").style.display="none"
            }goTopEx()
</script>
	<script type="text/javascript"> jQuery(function(){
   $('#top1').click(function(){$('html,body').animate({scrollTop: '0px'}, 1000);return false;});
   $('#footer1').click(function(){$('html,body').animate({scrollTop: document.body.clientHeight }, 1000);return false; });
 });
</script>
	<script type="text/javascript">    /* 创建于 2015-08-07*/
    var cpro_psid = "u2252074";
</script>
	<script src="http://su.bdimg.com/static/dspui/js/f.js"></script>
	<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"1","bdPos":"right","bdTop":"100"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
	<script>QIHOO_UNION_F_SLOT={w:500, h:48, ls:"s2a8728378f",position:7, display:2,origin:0};</script>
	<script src="http://s.lianmeng.360.cn/so/f.js" charset="utf-8"></script>
	<script src="http://dup.baidustatic.com/js/ds.js"></script>
	<script>(function() {
    var s = "_" + Math.random().toString(36).slice(2);
    document.write('<div id="' + s + '"></div>');
    (window.slotbydup=window.slotbydup || []).push({
        id: '1157256',
        container: s,
        size: '130,300',
        display: 'float'
    });
})();
</script>
	<div id="_wcolbv5uza1jvthzeqc40a4i"></div>
	<script>(function() {
    var s = "_" + Math.random().toString(36).slice(2);
    document.write('<div id="' + s + '"></div>');
    (window.slotbydup=window.slotbydup || []).push({
        id: '1157254',
        container: s,
        size: '130,300',
        display: 'float'
    });
})();
</script>
	<div id="_9m8raun8jclcl3fqv6lrcc8fr"></div>
	<script type="text/javascript">    $(function(){

$(".avatar_s1").hover(
			function () {
				//alert(1);
			  $(this).find(".cover_info").show();
			   $(this).find(".info_box").addClass("cover");
			    $(this).find(".info_box span").hide();
			},
			function () {
				//alert(2);
			  $(this).find(".cover_info").hide();
			  $(this).find(".info_box").removeClass("cover");
			   $(this).find(".info_box span").show();
		});


		
       // 相册弹出特效
        $("ul.popo li").hover(function(){
                    $(".pop",this).stop(true,true).show().css({"left":$(this).offset().left + $(this).outerWidth()-3 + "px","top":$(this).offset().top + "px"});
                },function(){
                    $(".pop",this).stop(true,true).hide();
        }); 
        $("ul.popo li .pop").mouseover(function(){
            $(this).hide();
        });
        
        // 相册弹出特效
        $("li  dl  dt").hover(function(){
                    $(this).parent().parent().children('.pop').stop(true,true).show().css({"left":$(this).offset().left + $(this).outerWidth()-3 + "px","top":$(this).offset().top + "px"});
                },function(){
                    
                    $(this).parent().parent().children('.pop').stop(true,true).hide();
        }); 
        $("li  .pop").mouseover(function(){
            $(this).hide();
        });
        
        
        // 页面浮动面板
        $("#floatPanel  .ctrolPanel  a.arrow").eq(0).click(function(){$("html,body").animate({scrollTop :0}, 800);return false;});
        $("#floatPanel  .ctrolPanel  a.arrow").eq(1).click(function(){$("html,body").animate({scrollTop : $(document).height()}, 800);return false;});

        var objPopPanel = $("#floatPanel  .popPanel");	
        var w = objPopPanel.outerWidth();
        $("#floatPanel  .ctrolPanel  a.qrcode").bind({
            mouseover : function(){
                        objPopPanel.css("width","0px").show();
                        objPopPanel.animate({"width" : w + "px"},300);return false;
                },
                mouseout : function(){
                        objPopPanel.animate({"width" : "0px"},300);return false;
                        objPopPanel.css("width",w + "px");
            }	
        });

		
    });


</script>
	<div class="bdshare-slide-button-box bdshare-slide-style-r1"
		style="top: 100px; width: 226px; z-index: 99999; right: 0px;"
		data-bd-bind="1472544814834">
		<a href="http://www.91weixinqun.com/#" onclick="return false;"
			class="bdshare-slide-button" style="left: -24px;"></a>
		<div class="bdshare-slide-list-box"
			style="width: 226px; display: block;">
			<div class="bdshare-slide-top">分享到</div>
			<div class="bdshare-slide-list">
				<ul class="bdshare-slide-list-ul" style="width: 226px;">
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-mshare" data-cmd="mshare">一键分享</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-qzone" data-cmd="qzone">QQ空间</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-tsina" data-cmd="tsina">新浪微博</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-bdysc" data-cmd="bdysc">百度云收藏</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-weixin" data-cmd="weixin">微信</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-renren" data-cmd="renren">人人网</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-tqq" data-cmd="tqq">腾讯微博</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-bdxc" data-cmd="bdxc">百度相册</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-kaixin001" data-cmd="kaixin001">开心网</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-tqf" data-cmd="tqf">腾讯朋友</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-tieba" data-cmd="tieba">百度贴吧</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-douban" data-cmd="douban">豆瓣网</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-bdhome" data-cmd="bdhome">百度新首页</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-sqq" data-cmd="sqq">QQ好友</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-thx" data-cmd="thx">和讯微博</a>
					</li>
					<li>
						<a href="http://www.91weixinqun.com/#" onclick="return false;"
							class="slide-ibaidu" data-cmd="ibaidu">百度中心</a>
					</li>
				</ul>
			</div>
			<div class="bdshare-slide-bottom" style="width: 226px;">
				<a href="http://www.91weixinqun.com/#" onclick="return false;"
					class="slide-more" data-cmd="more">更多...</a>
			</div>
		</div>
	</div>
</body>
</html>