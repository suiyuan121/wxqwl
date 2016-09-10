//author --- jie yang
// 获取主机地址之后的目录，如： ehealthmng/aaaaa
var pathName = window.document.location.pathname;
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

function change(obj,fn){       //change()方法传入一个jQuery对象
	var str = obj.find('option:selected').html();
	obj.siblings('.emng-curselect').html(str);
	fn && fn();
}

//获取省市信息,同时获取医院信息
function getLoc(id){
	//展示被选中的option值
	function showChoose(){
		var str = $('#'+id).find('option:selected').html();
	    $('#'+id).siblings('.emng-curselect').html(str);
    };
    showChoose();
    
    //删除不符合条件的省市select
	var idx = parseInt(id.substr(3)),
	    selectValue = '';
	    selectValue = selectValue = $("#" + id + " option:selected").val();
	    if(selectValue == ''){
	    	if(idx == 0 && $('#dis1').length != 0){
	    		$('#hospitalId option').remove();
	    		$('#hospitalId').append('<option value=""></option>');
	    		$('#dis1').parents('a').remove();
	    	}
	    	return;
	    }
	    $('#LocId').val(selectValue);
    	for(var i=idx+1; i<3; i++){
    		$('#dis'+i).parents('a').remove();
    	}
        getJson(idx+1);
	    getHos();
	    
	    //发送请求获取省市信息
	    function getJson(newId){
	    	var locList = '';
	    	if(newId>=2){
	    		return
	    	}
	    	var selectChoose = $("#" + id + " option:selected").val();
	    	if(selectChoose == ''){selectChoose = 0;}
	    	$.getJSON(projectName+'/subLoc.json?locId='+selectChoose,function(json){
	    		if(json.subLocList.length == 0){
	    			return;
	    		}
	    		$('#'+id).parent().after($('<a class="emng-select org"><strong class="emng-curselect"></strong><select class="loc" id="dis'+newId+'" onchange="getLoc(id)"><option value=""></option></select></a>'));
	    	    var select_root = $('#dis'+newId);
	    	    var locArr = json.subLocList;
	    	    var len = locArr.length;
	    	    for (var i = 0; i < len; i++) {
                    locList+='<option value="'+locArr[i].registerLoc+'">'+locArr[i].locName+'</option>'
                }
	    	    select_root.append($(locList));
	    	});
	    };
	    
	    //在获取省市信息的同时获取医院列表
	    function getHos(){
	    	var locId = $('#LocId').val(),
	    	    hosList = '<option value=""></option>';
	    	if(locId != ''){
	    		$.getJSON(projectName+'/hospitals.json?locId='+locId,function(json){
	    			if(json.success){
	    				var hosArr = json.hospitalList;
	    				if(hosArr != null){
	    					var len = hosArr.length;
		    				for(var i=0; i<len; i++){
		    					hosList+='<option value="'+hosArr[i].id+'">'+hosArr[i].hosName+'</option>'
		    				};
		    				$('#hospitalId').siblings('strong').html('');
	    				}
	    				$('#hospitalId option').remove();
	    				$('#hospitalId').append($(hosList))
	    			}
	    		});
	    	}
	    }
};

//获取医生职称
function getDocTitle(){
	var docList = '';
	$.getJSON(projectName+'/docTitles.json',function(json){
		if(json.success){
			var docArr = json.docTitleList;
			var len = docArr.length;
			for(var i=0; i<len; i++){
				docList+='<option value="'+docArr[i].id+'">'+docArr[i].titleName+'</option>'
			}
			$('#doctorTitleSelect').append($(docList));
		}
	});
}
getDocTitle();

//科室初始化;
function depInit(){
	var depList = '';
	$.getJSON(projectName+'/depByParentId.json?parentId=0',function(json){
		if(json.success){
			var depArr = json.docDepOfHosList;
			var len = depArr.length;
			for(var i=0; i<len; i++){
				depList+='<option value="'+depArr[i].id+'">'+depArr[i].depName+'</option>';
			};
			$('#office_1').append($(depList));
		}
	});
}
depInit();   

//select改变时获取科室
function getDep(){
	var v = $('#office_1').val();
	var dep2List = '';
	if(v != ''){
	  	$.getJSON(projectName+'/depByParentId.json?parentId='+v,function(json){
	  		if(json.success){
	  			var dep2Arr = json.docDepOfHosList;
	  			if(dep2Arr == null){
	  				$('#office_2').parents('a').remove();
	  			}else{
	  				var len = dep2Arr.length;
	  				$('#office_1').parent().after('<a class="emng-select org"><strong class="emng-curselect"></strong><select name="office2" class="loc" id="office_2" onchange="change($(this))"><option value=""></option></select></a>');
	  			    for(var i=0; i<len; i++){
	  			    	dep2List+='<option value="'+dep2Arr[i].id+'">'+dep2Arr[i].depName+'</option>'
	  			    };
	  			    $('#office_2').append($(dep2List));
	  			}
	  		}
	  	});
	}else{
		$('#office_2').parents('a').remove();
	}
}

