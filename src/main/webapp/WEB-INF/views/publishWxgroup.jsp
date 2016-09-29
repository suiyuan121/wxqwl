<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script src="js/share.js"></script>
<link rel="stylesheet" href="css/slide_share.css">
</head>
<body>
	<div>
		<h5 class="title">
			我的微信群 /
			<span>
				<a target="_blank" href="http://www.ntujtxy.top">微信群分享，</a>
				客服QQ：3093154044 2780270027 QQ群：165835750
			</span>
		</h5>
		<div class="content login_box">
			<div class="col-left form-login form-reg">
				<form action="publishWxgroup.htm" method="post"
					enctype="multipart/form-data" autocomplete="off" name="form"
					id="form">
					<div class="input">
						<label>群名称：</label>
						<input type="text" id="qrcodeName" name="qrcodeName" size="36"
							class="input-text">
						<div id="qunnameTip" class="onShow">请输入群名称</div>
					</div>
					<div class="input">
						<label>群主微信：</label>
						<input type="text" id="ower" name="ower" size="36"
							class="input-text">
						<div id="qunzhuTip" class="onCorrect"></div>
					</div>
					<div class="input">
						<label>分类：</label>
						<select name="label">
							<c:forEach var="item" items="${labelList}">
								<option value="${item.id}">${item.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="input">
						<label>所属区域：</label>
						<select id="Select1" name="loc">
							<option value="0">不限区域</option>
						</select>
					</div>
					<div class="input">
						<label>
							二维码：
							<br>
							(jpg或png)
						</label>
						<input type="file" id="qcode" name="qcode" class="input-text">
					</div>
					<div class="input">
						<label>
							封面图：
							<br>
							(jpg或png)
						</label>
						<input type="file" id="cover" name="cover" class="input-text">
					</div>
					<div class="input">
						<label>群介绍：</label>
						<textarea name="desc" id="desc"></textarea>
						<div id="contentsTip" class="onShow">请输入群介绍</div>
					</div>
					<div class="input" style="color: red; font-size: 14px;">
						发布微信群 ：封面不可以是二维码，否则不予审核。二维码：请上传有效微信群二维码，
						<br>
						以便快速通过审核。推广请联系客服QQ2780270027
					</div>
					<div class="reg2">
						<div class="submit">
							<input type="submit" name="dosubmit" value="" class="add_btn">
						</div>
						<br>
					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>