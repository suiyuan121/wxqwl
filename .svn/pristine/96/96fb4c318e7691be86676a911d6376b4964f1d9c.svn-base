<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="keywords" content="交通学院微信管理平台" />
<meta name="description" content="连接你我" />
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<link rel="stylesheet" type="text/css" href="css/emng-1.0.0.css" />
<link rel="stylesheet" type="text/css" href="css/public.css" />

<!--theme-->
<link rel="stylesheet" type="text/css" href="css/theme-origin/emng-origin.css" />
<link rel="stylesheet" type="text/css" href="css/theme-origin/public-origin.css" />
<title>新建学生信息</title>
<style type="text/css">
nav em {
	background-position: -60px 0;
}

#genderA,#gender {
	width: 692px;
}

.emng-select,.emng-select select {
	width: 200px;
}

.emng-select .emng-curselect {
	width: 195px;
}

@media ( min-width : 1000px) and (max-width: 1499px) {
	#genderA,#gender {
		width: 789px;
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
	<nav class="emng-flex">
		<em></em>
		<p>
			学生管理 ->
			<span>->新建学生信息</span>
		</p>
	</nav>
	<div class="btn-area emng-flex">
		<a href="stuManage.htm" class="emng-btn btn-bg-blue" id="go-back">返回</a>
		<button class="emng-btn btn-bg-blue" id="go-submit" type="button">提交</button>
	</div>
	<div class="tab">
		<form name="addStuFrom" id="addStuFrom" method="post" action="stuAdd.htm">
			<ul>
				<li>
					<span>
						<i class="must">*</i>
						学号:
					</span>
					<input type="text" id="stuNo" name="stuNo" maxlength="32" value="${addStuForm.stuNo}" placeholder="10位数学学号   请勿输入空格等特殊字符" />
					<label class="error"></label>
				</li>
				<li>
					<span>
						<i class="must">*</i>
						姓名:
					</span>
					<input type="text" id="stuName" name="stuName" maxlength="32" value="${addStuForm.stuName}" />
					<label class="error"></label>
				</li>
				<li>
					<span>
						<i class="must">*</i>
						身份证号:
					</span>
					<input type="text" id="idNo" name="idNo" maxlength="32" value="${addStuForm.idNo}" />
					<label class="error"></label>
				</li>
				<li>
					<span>
						<i class="must">*</i>
						手机号:
					</span>
					<input type="text" id="phoneNum" name="phoneNum" maxlength="32" value="${addStuForm.phoneNum}" />
					<label class="error"></label>
				</li>
				<li>
					<span>
						<i class="must">*</i>
						性别:
					</span>
					<a class="emng-select" id="genderA">
						<strong class="emng-curselect"></strong>
						<select onchange="change($(this))" id="gender" name="gender" class="loc">
							<option value="M" selected="selected">男</option>
							<option value="F">女</option>
						</select>
					</a>
					<label class="error" id="stuError"></label>
				</li>
				<!-- 				<li> -->
				<!-- 					<span> -->
				<!-- 						<i class="must">*</i> -->
				<!-- 						班级: -->
				<!-- 					</span> -->
				<!-- 					<a class="emng-select"> -->
				<!-- 						<strong class="emng-curselect"></strong> -->
				<!-- 						<select id="dis0" name="school" class="loc"> -->
				<!-- 							<option value="南通大学" selected="selected" disabled="disabled">南通大学</option> -->
				<!-- 						</select> -->
				<!-- 					</a> -->
				<!-- 					<a class="emng-select"> -->
				<!-- 						<strong class="emng-curselect"></strong> -->
				<!-- 						<select id="dis0" name="department" class="loc"> -->
				<!-- 							<option value="交通学院" selected="selected" disabled="disabled">交通学院</option> -->
				<!-- 						</select> -->
				<!-- 					</a> -->
				<!-- 					<a class="emng-select"> -->
				<!-- 						<strong class="emng-curselect"></strong> -->
				<!-- 						<select id="dis0" name="level" class="loc"> -->
				<!-- 							<option value="year_1" selected="selected">大一</option> -->
				<!-- 							<option value="year_2">大二</option> -->
				<!-- 							<option value="year_3">大三</option> -->
				<!-- 							<option value="year_4">大四</option> -->
				<!-- 							<option value="year_5">毕业生</option> -->
				<!-- 						</select> -->
				<!-- 					</a> -->
				<!-- 					<a class="emng-select"> -->
				<!-- 						<strong class="emng-curselect"></strong> -->
				<!-- 						<select id="dis0" name="classes" class="loc"> -->
				<!-- 							<option value="" selected="selected">通信121</option> -->
				<!-- 						</select> -->
				<!-- 					</a> -->
				<!-- 				</li> -->
				<li>
					<span>
						<i class="must">*</i>
						家庭住址:
					</span>
					<input type="text" id="homeAddress" name="homeAddress" maxlength="32" value="${addStuForm.homeAddress}" />
					<label class="error"></label>
				</li>
			</ul>
			<label id="submitReturn" style="display: none;">${msg}</label>
		</form>
	</div>
	<script src="js/plugin/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/plugin/vertifycate.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/plugin/select-changes.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/plugin/noty.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/main/org-infoEdit.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
        $(document).ready(function() {
            //表单验证
            (function() {
                $('#go-submit').click(function() {
                    if (!$('#stuNo').validator({
                        errorTips : '请勿输入特殊字符',
                        required : true,
                        requiredMsg : '学号不能为空',
                        testType : 'stuNo'
                    }) || !$('#stuName').validator({
                        required : true,
                        requiredMsg : '姓名不能为空'
                    }) || !$('#idNo').validator({
                        required : true,
                        requiredMsg : '身份证不能为空'
                    }) || !$('#phoneNum').validator({
                        required : true,
                        requiredMsg : '手机账号不能为空',
                        errorTips : '请输入正确的联系电话',
                        testType : 'contactPhone'
                    }) || !$('#homeAddress').validator({
                        required : true,
                        requiredMsg : '家庭地址不能为空'
                    })) {
                        return false;
                    } else {
                        if ($('#gender').find('option').length <= 1) {
                            $('#stuError').html("请选择性别!");
                            return false;
                        }
                        $('#addStuFrom').submit();
                    }
                });

                $('#stuNo').blur(function() {
                    $(this).validator({
                        errorTips : '请勿输入特殊字符',
                        required : true,
                        requiredMsg : '学号不能为空',
                        testType : 'stuNo'
                    })
                });
                $('#stuName').blur(function() {
                    $(this).validator({
                        required : true,
                        requiredMsg : '姓名不能为空',
                    });
                });
                $('#idNo').blur(function() {
                    $(this).validator({
                        errorTips : '身份证不能有空格',
                        required : true,
                        requiredMsg : '身份证不能为空',
                        testType : 'noSpace'
                    })
                });
                $('#phoneNum').blur(function() {
                    $(this).validator({
                        required : true,
                        requiredMsg : '手机账号不能为空',
                        errorTips : '请输入正确的联系电话',
                        testType : 'contactPhone'
                    })
                });
                $('#homeAddress').blur(function() {
                    $(this).validator({
                        required : true,
                        requiredMsg : '家庭地址不能为空'
                    })
                });

                if ($('#gender').find('option').length < 1) {
                    $('#stuError').html("请选择性别!");
                    return;
                }

                $('#addStuFrom').enterSub($('#go-submit'));
            })();

            //加载msg
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
