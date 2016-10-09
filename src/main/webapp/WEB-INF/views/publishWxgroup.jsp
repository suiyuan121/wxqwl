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
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

</head>
<body>
	<div>
		<h5 class="title">
			我的微信群 /
			<span>
				<a target="_blank" href="http://www.ntujtxy.top">微信群分享，</a>
				客服QQ：1581128024
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
					</div>
					<div class="input">
						<label>群主微信：</label>
						<input type="text" id="ower" name="ower" size="36"
							class="input-text">
					</div>
					<div class="input">
						<label>分类：</label>
						<select name="label" id="label">
							<c:forEach var="item" items="${labelList}">
								<option value="${item.id}">${item.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="input">
						<label>所属区域：</label>
						<select id="loc" name="loc">
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
					</div>
					<div class="input" style="color: red; font-size: 14px;"
						align="center">
						发布微信群 ：封面不可以是二维码，否则不予审核。
						<br>
						二维码：请上传有效微信群二维码，以便快速通过审核。
						<br>
						推广请联系客服QQ1581128024
					</div>
					<div class="reg1">
						<div class="submit">
							<input type="submit" name="dosubmit" value="" class="add_btn"
								style="width: 420px;" id="toLogin">
						</div>
						<br>
						<div id="errTips">
							<label class="errorTips" id="errorTips" style="width: 420px;">${errorTips}</label>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$("#toLogin").click(function() {
			var qrcodeName = $("#qrcodeName").val();
			var ower = $("#ower").val();
			var label = $("#label").val();
			var loc = $("#loc").val();
			var qcode = $("#qcode").val();
			var cover = $("#cover").val();
			var desc = $("#desc").val();

			if (qrcodeName == "") {
				$("#errorTips").html("群称不能为空");
				return false; // 
			} else if (ower == "") {
				$("#errorTips").html("群主微信不能为空");
				return false; // 
			} else if (label == "") {
				$("#errorTips").html("分类不能为空");
				return false; // 
			} else if (loc == "") {
				$("#errorTips").html("区域不能为空");
				return false; // 
			} else if (qcode == "") {
				$("#errorTips").html("二维码不能为空");
				return false; // 
			} else if (cover == "") {
				$("#errorTips").html("封面不能为空");
				return false; // 
			} else if (desc == "") {
				$("#errorTips").html("群介绍不能为空");
				return false; // 
			} else {
				return true; // 返回true ，a标签继续执行后续操作，跳转
			}
		});
	});
</script>
</html>