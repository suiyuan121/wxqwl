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
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/simplefoucs.js"></script>
<script type="text/javascript" src="js/jsAddress.js"></script>
<link type="text/css" rel="stylesheet" href="css/validator.css">
<script src="js/formValidator-4.0.1.min.js" type="text/javascript"
	charset="UTF-8"></script>
<script src="js/formValidatorRegex.js" type="text/javascript"
	charset="UTF-8"></script>
<style></style>

<script src="js/share.js"></script>
<link rel="stylesheet" href="css/slide_share.css">
</head>
<body>
	<div align="center">
		<h5 class="title">
			我的微信群 /
			<span>
				<a target="_blank" href="http://www.91weixinqun.com/">微信群分享，</a>
				客服QQ：3093154044 2780270027 QQ群：165835750
			</span>
		</h5>
		<div class="content">
			<table class="quntable">
				<tbody>
					<tr>
						<th>群名称</th>
						<th>二维码</th>
						<th>封面</th>
						<th>介绍</th>
						<th>操作</th>
					</tr>
					<tr></tr>
				</tbody>
			</table>
			<script>
				function checkdel(id) {
					if (confirm("确认要删除该内容?")) {
						location.href = "/member/delqun/id/" + id
					} else {
						return false;
					}

				}
			</script>
			<div class="onedu_page"></div>
		</div>
	</div>
</body>
</html>