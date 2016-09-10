<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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
<link rel="stylesheet" type="text/css"
	href="css/theme-origin/emng-origin.css" />
<link rel="stylesheet" type="text/css"
	href="css/theme-origin/public-origin.css" />
<title>用户管理</title>
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
		用户管理 -> <span>用户信息</span>
	</p>
	</nav>
	<div class="check-factor-wrapper">
		<article>查找</article>
		<form action="userInfo.htm" method="post" id="queryForm"
			name="queryForm">
			<input type="hidden" id="orgId" name="orgId"
				#if(${userInfoQueryForm}) value="$!{userInfoQueryForm.orgId}" #else
				value="$!{operator.orgId}" #end
				onchange="javascript:resetCurrentPage();" /> <input type="hidden"
				id="currentPage" name="currentPage"
				#if(${userInfoQueryForm}) value="$!{userInfoQueryForm.currentPage}"
				#else value="1" #end />
			<div class="check-factor-2 emng-flex">
				<div class="line-two emng-flex">
					<div class="dk-1 emng-flex">
						<ul class="emng-flex">
							<li><span>用户名:</span> <input type="text" name="userName"
								class="Trim" id="userName"
								value="$!{userInfoQueryForm.userName}"
								onchange="javascript:resetCurrentPage();" /></li>
							<li><span>姓名:</span> <input type="text" name="name"
								class="Trim" id="name" value="$!{userInfoQueryForm.name}"
								onchange="javascript:resetCurrentPage();" /></li>
							<li><span>联系电话:</span> <input type="text" name="phoneNo"
								class="Trim" id="phoneNo" value="$!{userInfoQueryForm.phoneNo}"
								onchange="javascript:resetCurrentPage();" /></li>
							<li><span>UID:</span> <input type="text" name="uid"
								class="Trim" id="uid" value="$!{userInfoQueryForm.uid}"
								onchange="javascript:resetCurrentPage();" /></li>
						</ul>
					</div>
					<div class="dk-2 emng-flex">
						<ul class="emng-flex">
							<li><span>组织:</span> #if(${operator.org}) <a
								class="emng-select"> <strong class="emng-curselect disabled"></strong>
									<select name="orgOne" class="loc ogTag" id="loc_default"
									disabled="disabled" title="$!{operator.org.fullName}">
										<option value="$!{operator.orgId}" selected="selected">$!{operator.org.fullName}</option>
								</select>
							</a> #end #if($subOrg) <a class="emng-select"> <strong
									class="emng-curselect"></strong> <select class="loc ogTag"
									id="dis0" onChange="changeLinkage(id)">
										<option value=""></option> #foreach($item in $subOrg)
										<option value="${item.id}">${item.name}</option> #end
								</select>
							</a> #end #if($allList) #set($i = 0) #foreach($items in $allList) <a
								class="emng-select"> <strong class="emng-curselect"></strong>
									<select name="" class="loc ogTag" id="dis$!{i}"
									onChange="changeLinkage(id)">
										<option value=""></option> #foreach($item in $items) ##
										${idList.get($i)}
										<option value="${item.id}" #if(${item.id} ==
											${idList.get($i)}) selected="selected" #end>${item.name}</option>
										#end
								</select>
							</a> #set($i = $i + 1) #end #end</li>
							<li><label class="emng-checkbox-wrap lowL"
								style="display: none;"> <input type="checkbox"
									#if((${userInfoQueryForm} && ${userInfoQueryForm.includeSub}) || !${userInfoQueryForm}) checked="checked"
									#end class="emng-checkbox emng-checkbox-item" name="includeSub"
									id="includeSub" value="E" /> <b></b>
							</label> <span class="includeD" style="display: none;">包含下级</span></li>
						</ul>
					</div>
				</div>
				<div class="check-btn-wrap">
					<button type="submit" id="user-searchBtn"
						class="emng-btn btn-bg-blue">查找</button>
				</div>
			</div>
		</form>
	</div>
	<div class="pagebtn-wrapper emng-flex">
		<div class="btn-wrap emng-flex">
			<a href="userAdd.htm" id="user-buttonNew"
				class="emng-btn btn-bg-gray">新建</a> #end
		</div>
		<div class="page-wrap">#showPageLable('queryForm' $pageList)</div>
	</div>
	<div class="tab-wrapper">
		<table class="emng-table">
			<thead>
				<tr>
					<th>用户名</th>
					<th>姓名</th>
					<th>昵称</th>
					<th>性别</th>
					<th>联系电话</th>
					<th>状态</th>
					<th>组织</th>
					<th>健康档案</th>
					<th>编辑</th>
				</tr>
			</thead>
			<tbody>
				#if($msg)
				<tr>
					<td colspan="8" align="center">$!{msg}</td>
				</tr>
				#end #foreach($item in $pageList.resultList)
				<tr>
					<td class="uName">$!{item.userName}</td>
					<td class="fName">$!{item.fullName}</td>
					<td class="nName">$!{item.nickName}</td>
					<td>$!{item.gender}</td>
					<td>$!{item.phone}</td>
					<td>$!{item.status}</td>
					<td class="oName">$!{item.orgName}</td>
					<td><a
						href="bpDetail.htm?uid=$!{webViewUtil.urlEncode($!{item.uid})}"
						class="a-btn">[健康档案]</a></td>
					<td><a
						href="${link.contextPath}/userModify.htm?uid=$!{webViewUtil.urlEncode($!{item.uid})}"
						class="emng-editbtn"></a></td>
				</tr>
				#end
			</tbody>
		</table>
	</div>
</body>
<script src="js/plugin/jquery-2.1.0.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/plugin/noty.js" type="text/javascript" charset="utf-8"></script>
<script src="js/plugin/select-changes.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/plugin/vertifycate.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/plugin/Widget.js" type="text/javascript" charset="utf-8"></script>
<script src="js/plugin/Window.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    $(document)
            .ready(
                    function() {
                        var dataCount = $('#list-count').val() == undefined ? 0
                                : $('#list-count').val();

                        //点击查询时,保持select选值不变
                        $('.loc').each(function(i, e) {
                            change($(e));
                        });
                        //隐藏包含下级选项
                        hideLowlevel($('.ogTag'));
                        //过长字符串的删减
                        $('.uName').each(function(i, e) {
                            $(e).cutlongStr(6);
                        });
                        $('.fName').each(function(i, e) {
                            $(e).cutlongStr(4);
                        });
                        $('.nName').each(function(i, e) {
                            $(e).cutlongStr(6);
                        });
                        $('.oName').each(function(i, e) {
                            $(e).cutlongStr(10);
                        });

                        //批量导出
                        $('#user-buttonImport')
                                .click(
                                        function() {
                                            var win = new Window()
                                                    .confirm({
                                                        content : '您确定导出'
                                                                + dataCount
                                                                + '条数据?',
                                                        handler4ConfirmBtn : function() {
                                                            var downLoadaddress = '${link.contextPath}/userBatchDownload.htm?orgId='
                                                                    + $(
                                                                            '#orgId')
                                                                            .val()
                                                                    + '&uid='
                                                                    + $('#uid')
                                                                            .val()
                                                                    + '&name='
                                                                    + $('#name')
                                                                            .val()
                                                                    + '&phoneNo='
                                                                    + $(
                                                                            '#phoneNo')
                                                                            .val()
                                                                    + '&includeSub=E&userName='
                                                                    + $(
                                                                            '#userName')
                                                                            .val()
                                                                    + '&currentPage='
                                                                    + $(
                                                                            '#currentPage')
                                                                            .val();
                                                            //me.attr('href',downLoadaddress);
                                                            window.location.href = downLoadaddress;
                                                        }
                                                    });
                                        });
                    });
</script>
</html>
