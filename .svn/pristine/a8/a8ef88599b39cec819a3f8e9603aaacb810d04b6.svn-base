$(document).ready(function(){
			$('#go-submit').click(function(){
				if(!$('#pNum').validator({errorTips:'请输入正确的手机号码',required:true,requiredMsg:'手机号码不能为空',testType:'phoneNum'})
				  ||!$('#uname').validator({errorTips:'请勿输入特殊字符',required:true,requiredMsg:'姓名不能为空',testType:'sPecial'}) 
				  ||!$('#dis0').validator({errContainer:$('#dis0').parent().siblings('.error'),required:true,requiredMsg:'请选择省市'}) 
				  ||!$('#dis1').validator({errContainer:$('#dis1').parent().siblings('.error'),required:true,requiredMsg:'请选择省市'}) 
				  ||!$('#hospitalId').validator({errContainer:$('#hospitalId').parent().siblings('.error'),required:true,requiredMsg:'请选择医院'}) 
				  ||!$('#office_1').validator({errContainer:$('#office_1').parent().siblings('.error'),required:true,requiredMsg:'请选择科室'})
				  ||!$('#office_2').validator({errContainer:$('#office_2').parent().siblings('.error'),required:true,requiredMsg:'请选择科室'}) 
				  ||!$('#doctorTitleSelect').validator({errContainer:$('#doctorTitleSelect').parent().siblings('.error'),required:true,requiredMsg:'请选择职称'})
				  ||!$('#depPhone').validator({errorTips:'请输入正确的电话',required:true,requiredMsg:'科室电话不能为空',testType:'fixLine'}) 
				  ||!$('#specialitiesArea').validator({errorTips:'请勿输入特殊字符',required:true,requiredMsg:'专业领域不能为空',testType:'sPecial'}) 
				  ||!$('#summary').validator({required:true,requiredMsg:'简介不能为空'})){
					return false
				}else{
					$('#doctorAddForm').submit();
				}
			});
			
			$('#pNum').blur(function(){
				$(this).validator({errorTips:'请输入正确的手机号码',required:true,requiredMsg:'手机号码不能为空',testType:'phoneNum'});
			});
			$('#uname').blur(function(){
				$(this).validator({errorTips:'请勿输入特殊字符',required:true,requiredMsg:'姓名不能为空',testType:'sPecial'}); 
			});
			$('#depPhone').blur(function(){
				$(this).validator({errorTips:'请输入正确的电话',required:true,requiredMsg:'科室电话不能为空',testType:'fixLine'}); 
			});
			$('#specialitiesArea').blur(function(){
				$(this).validator({errorTips:'请勿输入特殊字符',required:true,requiredMsg:'专业领域不能为空',testType:'sPecial'}); 
			});
			$('#summary').blur(function(){
				$(this).validator({required:true,requiredMsg:'简介不能为空'});
			});
			
			//回车提交表单
			$('#doctorAddForm').enterSub($('#go-submit'));
});