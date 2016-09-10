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

<!--theme-->
<link rel="stylesheet" type="text/css"
	href="css/theme-origin/emng-origin.css" />
<link rel="stylesheet" type="text/css"
	href="css/theme-origin/public-origin.css" />
<title>新建组织人员</title>
<style type="text/css">
nav em {
	background-position: -60px 0;
}

#genderA,#gender {
	width: 692px;
}

.emng-select,.emng-select select {
	width: 230px;
}

.emng-select .emng-curselect {
	width: 195px;
}

@media ( min-width : 1000px) and (max-width: 1499px) {
	#genderA,#gender {
		width: 789px;
	}
	.emng-select,.emng-select select {
		width: 263px;
	}
	.emng-select .emng-curselect {
		width: 228px;
	}
}

@media ( min-width : 1500px) and (max-width:1600px) {
	#genderA {
		width: 989px;
	}
	.emng-select,.emng-select select {
		width: 329px;
	}
	.emng-select .emng-curselect {
		width: 294px;
	}
}

@media ( min-width : 1620px) and (max-width:1800px) {
	#genderA {
		width: 1289px;
	}
	.emng-select,.emng-select select {
		width: 429px;
	}
	.emng-select .emng-curselect {
		width: 394px;
	}
}
</style>
</head>
<body>
	<nav class="emng-flex"> <em></em>
	<p>
		用户管理 -> <span>->新建学生信息</span>
	</p>
	</nav>
	<div class="btn-area emng-flex">
		<a href="${link.contextPath}/operMng.htm" class="emng-btn btn-bg-blue"
			id="go-back">返回</a>
		<button class="emng-btn btn-bg-blue" id="go-submit" type="button">提交</button>
	</div>
	<div class="tab">
		<form name="addpersonfrm" id="addpersonfrm" method="post"
			action="${link.contextPath}/operAdd.htm">
			<input type="hidden" id="orgId" name="orgId"
				#if(${operForm}) value="$!{operForm.orgId}" #else value="0" #end>
			<ul>
				<li><span><i class="must">*</i>登录账号:</span> <input type="text"
					id="operatorName" name="operatorName" maxlength="32"
					value="$!{operForm.operatorName}"
					placeholder="32个字之内    请勿输入空格等特殊字符" /> <label class="error"></label>
				</li>
				<li><span>人员姓名:</span> <input type="text" id="name" name="name"
					maxlength="32" value="$!{operForm.name}"
					placeholder="32个字之内    请勿输入空格等特殊字符" /> <label class="error"></label>
				</li>
				<li><span><i class="must">*</i>密码:</span> <input
					type="password" id="password" name="password" maxlength="32"
					placeholder="密码长度在6-32位之间" /> <label class="error"></label></li>
				<li><span><i class="must">*</i>确认密码:</span> <input
					type="password" id="confirm-password" maxlength="32"
					placeholder="密码长度在6-32位之间" /> <label class="error"></label></li>
				<li><span>性别:</span> <a class="emng-select" id="genderA"> <strong
						class="emng-curselect"></strong> <select
						onchange="change($(this))" id="gender" name="gender">
							<option value=""></option>
							<option value="M"
								#if($stringUtil.equals($!{operForm.gender}, "M")) selected="selected"
								#end>男</option>
							<option value="F"
								#if($stringUtil.equals($!{operForm.gender}, "F")) selected="selected"
								#end>女</option>
					</select>
				</a> <label class="error"></label></li>
				<li><span><i class="must">*</i>所在组织:</span>
					#if(${operator.org}) <a class="emng-select"> <strong
						class="emng-curselect disabled">$!{operator.org.fullName}</strong>
						<select name="orgOne" class="loc" id="loc_default"
						disabled="disabled" title="$!{operator.org.fullName}">
							<option value="$!{operator.orgId}" selected="selected">$!{operator.org.fullName}</option>
					</select>
				</a> #end <a class="emng-select"> <strong class="emng-curselect"></strong>
						<select id="dis0" name="orgTwo" class="loc"
						onchange="changeLinkage(id)">
							<option value=""></option> #foreach($item in $subOrg)
							<option value="${item.id}">${item.name}</option> #end
					</select>
				</a> <label class="error"></label></li>
				<li><span>联系电话:</span> <input type="text" id="phoneNo"
					name="phoneNo" maxlength="32" value="$!{operForm.phoneNo}" /> <label
					class="error"></label></li>
				<li><span>电子邮件:</span> <input type="text" id="email"
					name="email" maxlength="32" value="$!{operForm.email}" /> <label
					class="error"></label></li>
				<li><span>有效:</span> <label class="emng-checkbox-wrap">
						<input type="checkbox" name="status" id="status" value="E"
						class="emng-checkbox emng-checkbox-item"
						#if(${operForm.status}) 
                                #if($stringUtil.equals($!{operForm.status}, "E")) checked="checked"
						#end 
                            #else checked="checked" #end />
						<b></b>
				</label></li>
				<label id="submitReturn" style="display: none;">$!{msg}</label>
			</ul>
		</form>
	</div>
	<script src="${link.contextPath}/js/plugin/jquery-2.1.0.js"
		type="text/javascript" charset="utf-8"></script>
	<script src="${link.contextPath}/js/plugin/vertifycate.min.js"
		type="text/javascript" charset="utf-8"></script>
	<script src="${link.contextPath}/js/plugin/select-changes.js"
		type="text/javascript" charset="utf-8"></script>
	<script src="${link.contextPath}/js/plugin/noty.js"
		type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
        $(document)
                .ready(
                        function() {
                            //表单验证
                            (function() {
                                $('#go-submit')
                                        .click(
                                                function() {
                                                    if ($('#dis0').find(
                                                            'option').length > 1) {
                                                        if (!$('#operatorName')
                                                                .validator(
                                                                        {
                                                                            errorTips : '请勿输入特殊字符',
                                                                            required : true,
                                                                            requiredMsg : '登录账号不能为空',
                                                                            testType : 'sPecial'
                                                                        })
                                                                || !$('#name')
                                                                        .validator(
                                                                                {
                                                                                    errorTips : '请勿输入特殊字符',
                                                                                    testType : 'sPecial'
                                                                                })
                                                                || !$(
                                                                        '#password')
                                                                        .validator(
                                                                                {
                                                                                    errorTips : '密码不能有空格',
                                                                                    required : true,
                                                                                    requiredMsg : '密码不能为空',
                                                                                    minLength : 6,
                                                                                    minMsg : '密码长度在6-32位之间',
                                                                                    testType : 'noSpace'
                                                                                })
                                                                || !$(
                                                                        '#confirm-password')
                                                                        .validator(
                                                                                {
                                                                                    required : true,
                                                                                    requiredMsg : '确认密码不能为空',
                                                                                    objEqual : $('#password'),
                                                                                    equalMsg : '两次密码输入不一致'
                                                                                })
                                                                || !$('#dis0')
                                                                        .validator(
                                                                                {
                                                                                    errContainer : $(
                                                                                            '#dis0')
                                                                                            .parent()
                                                                                            .siblings(
                                                                                                    '.error'),
                                                                                    required : true,
                                                                                    requiredMsg : '组织不能为空'
                                                                                })
                                                                || !$(
                                                                        '#phoneNo')
                                                                        .validator(
                                                                                {
                                                                                    errorTips : '请输入正确的联系电话',
                                                                                    testType : 'fixLine'
                                                                                })
                                                                || !$('#email')
                                                                        .validator(
                                                                                {
                                                                                    errorTips : '请输入正确的邮箱',
                                                                                    testType : 'eMail'
                                                                                })) {
                                                            return false;
                                                        } else {
                                                            $('#addpersonfrm')
                                                                    .submit();
                                                        }
                                                    } else {
                                                        if (!$('#operatorName')
                                                                .validator(
                                                                        {
                                                                            errorTips : '请勿输入特殊字符',
                                                                            required : true,
                                                                            requiredMsg : '登录账号不能为空',
                                                                            testType : 'sPecial'
                                                                        })
                                                                || !$('#name')
                                                                        .validator(
                                                                                {
                                                                                    errorTips : '请勿输入特殊字符',
                                                                                    testType : 'sPecial'
                                                                                })
                                                                || !$(
                                                                        '#password')
                                                                        .validator(
                                                                                {
                                                                                    required : true,
                                                                                    requiredMsg : '密码不能为空',
                                                                                    minLength : 6,
                                                                                    minMsg : '密码长度在6-32位之间'
                                                                                })
                                                                || !$(
                                                                        '#confirm-password')
                                                                        .validator(
                                                                                {
                                                                                    required : true,
                                                                                    requiredMsg : '确认密码不能为空',
                                                                                    objEqual : $('#password'),
                                                                                    equalMsg : '两次密码输入不一致'
                                                                                })
                                                                || !$(
                                                                        '#phoneNo')
                                                                        .validator(
                                                                                {
                                                                                    errorTips : '请输入正确的联系电话',
                                                                                    testType : 'fixLine'
                                                                                })
                                                                || !$('#email')
                                                                        .validator(
                                                                                {
                                                                                    errorTips : '请输入正确的邮箱',
                                                                                    testType : 'eMail'
                                                                                })) {
                                                            return false;
                                                        } else {
                                                            $('#addpersonfrm')
                                                                    .submit();
                                                        }
                                                    }

                                                });
                                $('#name').blur(function() {
                                    $(this).validator({
                                        errorTips : '请勿输入特殊字符',
                                        testType : 'sPecial'
                                    })
                                });
                                $('#operatorName').blur(function() {
                                    $(this).validator({
                                        errorTips : '请勿输入特殊字符',
                                        required : true,
                                        requiredMsg : '登录账号不能为空',
                                        testType : 'sPecial'
                                    });
                                });
                                $('#password').blur(function() {
                                    $(this).validator({
                                        errorTips : '密码不能有空格',
                                        required : true,
                                        requiredMsg : '密码不能为空',
                                        minLength : 6,
                                        minMsg : '密码长度在6-32位之间',
                                        testType : 'noSpace'
                                    })
                                });
                                $('#confirm-password').blur(function() {
                                    $(this).validator({
                                        required : true,
                                        requiredMsg : '确认密码不能为空',
                                        objEqual : $('#password'),
                                        equalMsg : '两次密码输入不一致'
                                    })
                                });
                                $('#confirm-password').focus(function() {
                                    if ($(this).val() != '') {
                                        $(this).validator({
                                            objEqual : $('#password'),
                                            equalMsg : '两次密码输入不一致'
                                        })
                                    }
                                });
                                $('#phoneNo').blur(function() {
                                    $(this).validator({
                                        errorTips : '请输入正确的联系电话',
                                        testType : 'fixLine'
                                    });
                                });
                                $('#email').blur(function() {
                                    $(this).validator({
                                        errorTips : '请输入正确的邮箱',
                                        testType : 'eMail'
                                    })
                                });

                                $('#addpersonfrm').enterSub($('#go-submit'));
                            })();

                            window.onload = function() {
                                var Msg = $('#submitReturn').html();
                                var options = '';
                                if (Msg != '') {
                                    options = {
                                        "text" : Msg,
                                        "layout" : "top"
                                    };
                                    noty(options);
                                }
                            }
                        });
    </script>
</body>
</html>
