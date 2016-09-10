<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="cn.edu.ntu.jtxy.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="keywords" content="交通学院微信管理平台" />
<meta name="description" content="连接你我" />
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<link rel="stylesheet" type="text/css" href="css/emng-1.0.0.css" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/theme-origin/emng-origin.css" />
<link rel="stylesheet" type="text/css" href="css/theme-origin/public-origin.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/myPage.css" />
<title>新闻管理</title>
<style type="text/css">
nav em {
	background-position: -180px 0;
}

.check-factor-wrapper .check-factor-2 .line-two .dk-2 li:nth-of-type(1)
	{
	margin-left: 25px;
}

.check-factor-wrapper .check-factor-2 .line-two .dk-2 li .emng-select {
	margin-left: 10px;
}

.check-factor-wrapper .check-factor-2 li input[type=text] {
	width: 100px;
}

#uid,#phoneNo {
	width: 200px;
}

@media ( min-width : 1500px) {
	.check-factor-wrapper .check-factor-2 li input[type=text] {
		width: 200px;
	}
	#uid,#phoneNo {
		width: 350px;
	}
}

.emng-select select,.emng-select {
	width: 200px;
}

.emng-select .emng-curselect {
	width: 168px;
}
</style>
</head>
<body>
	<nav class="emng-flex"> <em></em>
	<p>
		新闻管理 ->
		<span>新闻信息列表</span>
	</p>
	</nav>
	<div class="check-factor-wrapper">
		<article>查找</article>
		<form name="queryForm" id="queryForm" method="post" action="stuInfo.htm">
			<div class="check-factor-1 emng-flex">
				<ul class="emng-flex">
					<li>
						<input type="hidden" name="currentPage" id="currentPage" value="${queryStuInfoForm.currentPage}" />
					</li>
					<li>
						<span>学号:</span>
						<input type="text" name="stuNo" class="Trim" id="stuNo" value="${queryStuInfoForm.stuNo}" />
					</li>
					<li>
						<span>学生姓名:</span>
						<input type="text" name="stuName" class="Trim" id="stuName" value="${queryStuInfoForm.stuName}" />
					</li>
					<li>
						<span>手机号:</span>
						<input type="text" name="idNo" class="Trim" id="idNo" value="${queryStuInfoForm.idNo}" />
					</li>
					<li>
						<span>身份证:</span>
						<input type="text" name="phoneNo" class="Trim" id="phoneNo" value="${queryStuInfoForm.phoneNo}">
					</li>
				</ul>
				<div class="check-search-wrapper emng-flex">
					<button id="person-searchBtn" class="emng-btn btn-bg-blue" type="submit">查找</button>
				</div>
			</div>
		</form>
	</div>
	<div class="pagebtn-wrapper emng-flex">
		<div class="btn-wrap emng-flex">
			<a href="newsInfoAdd.htm" id="user-buttonNew" class="emng-btn btn-bg-gray">新建</a>
		</div>
		<div>
			<ul class="pagination" id="pagination">
			</ul>
			<input type="hidden" id="totalCount" value="${pageList.totalCount}" />
			<input type="hidden" id="pageSize" value="${pageList.pageSize}" />
			<input type="hidden" id="pageNum" value="${pageList.pageNum}" />
		</div>
	</div>
	<div class="tab-wrapper">
		<table class="emng-table">
			<thead>
				<tr>
					<th>学号</th>
					<th>身份证号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>手机号</th>
					<th>家庭住址</th>
					<th>编辑</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${pageList.resultList}" var="item">
					<tr>
						<td class="sNo">${item.stuNo}</td>
						<td class="sName">${item.idNo}</td>
						<td>${item.realName}</td>
						<td>${(item.sex eq 'M') ? "男" : "女"}</td>
						<td>${item.phone}</td>
						<td>${item.address}</td>
						<td>
							<a href="stuModify.htm?id=${item.id}" class="emng-editbtn"></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script src="js/plugin/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
<script src="js/plugin/noty.js" type="text/javascript" charset="utf-8"></script>
<script src="js/plugin/select-changes.js" type="text/javascript" charset="utf-8"></script>
<script src="js/plugin/vertifycate.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/plugin/Widget.js" type="text/javascript" charset="utf-8"></script>
<script src="js/plugin/Window.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="js/pagination.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(showPageLabel("queryForm", "$pageList"));
</script>
</html>
