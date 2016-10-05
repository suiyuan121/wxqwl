<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>404错误</title>
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<style type="text/css">
<!--
body {
	margin: 0px;
	font-size: 12px
}

.text_title {
	font-size: 30px;
	color: #00a9fb;
	font-family: Arial, Helvetica, sans-serif;
	padding-top: 5px
}

a {
	font-size: 12px;
	color: #cc0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<body>
	<table width="684" height="313" border="0" align="center"
		cellpadding="0" cellspacing="1"
		style=" background-image:url(${pageContext.request.contextPath}/images/error/error.jpg);margin-top:120px;">
		<tr>
			<td>
				<table width="524" border="0" align="center" cellpadding="0"
					cellspacing="0" style="margin-top: 0px">
					<tr>
						<td width="28" height="50">&nbsp;</td>
						<td width="496" height="50" class="text_title">错误代码：404</td>
					</tr>
					<tr>
						<td height="32">&nbsp;</td>
						<td height="32">
							<img
								src="${pageContext.request.contextPath}/images/error/unlucky.png"
								width="21" height="21" />
							很抱歉，找不到要您要访问的页面。
						</td>
					</tr>
					<tr>
						<td height="32">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>