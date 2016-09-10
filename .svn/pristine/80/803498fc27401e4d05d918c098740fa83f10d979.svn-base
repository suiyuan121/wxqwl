//author --- jie yang
var show = null;
// 获取主机地址之后的目录，如： ehealthmng/aaaaa
var pathName = window.document.location.pathname;
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

function change(obj,fn){       //change()方法传入一个jQuery对象
	var str = obj.find('option:selected').html();
	obj.siblings('.emng-curselect').html(str);
	fn && fn();
}

function changeDep2(obj,fn){
	var str = obj.find('option:selected').html();
	obj.siblings('.emng-curselect').html(str);
	fn && fn();
	$('#depSelect').val(obj.val());
	$('#mainDepId').val('');
}

//编辑时,默认显示已有的医生相关信息,因为所有的ajax请求都是异步的所以,要将这些方法在请求函数内部进行调用
function disMsg(){};
disMsg.prototype = {
	showHos:function(){    //显示医院
         this.publicFn($('#hospitalIdSelected').val(),$('#hospitalId'));
	},
	showTit:function(){   //显示职称
		this.publicFn($('#docTitleSelected').val(),$('#doctorTitleSelect'));
	},
	showDep1:function(){  //显示一级科室
		this.publicFn($('#mainDepId').val(),$('#office_1'));
	},
	showDep2:function(){ //显示二级科室
		this.publicFn($('#depSelect').val(),$('#office_2'));
	},
	publicFn:function(x,obj){
		obj.find('option[value='+x+']').attr('selected',true);
		$('.loc').each(function(i,e){
			change($(e));
		});
	}
};
show = new disMsg();

//在获取医院列表
function getHos(f){
	var locId = $('#LocId').val(),
	    hosList = '<option value=""></option>';
	$('#hospitalId').siblings('strong').html('');    
	if(locId != ''){
		$.getJSON(projectName+'/hospitals.json?locId='+locId,function(json){
			if(json.success){
				var hosArr = json.hospitalList;
				if(hosArr != null){
					var len = hosArr.length;
    				for(var i=0; i<len; i++){
    					hosList+='<option value="'+hosArr[i].id+'">'+hosArr[i].hosName+'</option>'
    				};
				}
				$('#hospitalId option').remove();
				$('#hospitalId').append($(hosList));
				if(f){    //只有在初始话的时候才调用show对象
					show.showHos();
				}
			}
		});
	};
	
};
getHos(true);

//获取省市信息
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
	    	var locList = '<option value=""></option>';
	    	if(newId>=2){
	    		return
	    	}
	    	var selectChoose = $("#" + id + " option:selected").val();
	    	if(selectChoose == ''){selectChoose = 0;}
	    	$.getJSON(projectName+'/subLoc.json?locId='+selectChoose,function(json){
	    		if(json.subLocList.length == 0){
	    			return;
	    		}
	    		$('#'+id).parent().after($('<a class="emng-select org"><strong class="emng-curselect"></strong><select class="loc" id="dis'+newId+'" onchange="getLoc(id)"></select></a>'));
	    	    var select_root = $('#dis'+newId);
	    	    var locArr = json.subLocList;
	    	    var len = locArr.length;
	    	    for (var i = 0; i < len; i++) {
                    locList+='<option value="'+locArr[i].registerLoc+'">'+locArr[i].locName+'</option>'
                }
	    	    select_root.append($(locList));
	    	});
	    };
};

//获取医生职称
function getDocTitle(f){
	var docList = '';
	$.getJSON(projectName+'/docTitles.json',function(json){
		if(json.success){
			var docArr = json.docTitleList;
			var len = docArr.length;
			for(var i=0; i<len; i++){
				docList+='<option value="'+docArr[i].id+'">'+docArr[i].titleName+'</option>'
			}
			$('#doctorTitleSelect').append($(docList));
		};
		show.showTit();
	});
}
getDocTitle();

//一级科室初始化;
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
		};
		show.showDep1();
	});
}
depInit();   

//select改变时获取科室,参数f是用来判断是否做初始话的标识
function getDep(f){
	var v = $('#office_1 option:selected').val(); //只有在office_1触发change事件的时候才会有value值
	$('#mainDepId').val(v);
	if(!f){  //当不是初始话状态时,也就是change事件触发了getDep方法时,将二级科室所在隐藏表单的value值清空
	   $('#depSelect').val('');
	}
	var dep2List = '';
	if(v != ''){
	  	$.getJSON(projectName+'/depByParentId.json?parentId='+v,function(json){
	  		if(json.success){
	  			var dep2Arr = json.docDepOfHosList;
	  			if(dep2Arr == null){
	  				$('#office_2').parents('a').remove();
	  			}else{
	  				var len = dep2Arr.length;
	  				$('#office_1').parent().after('<a class="emng-select org"><strong class="emng-curselect"></strong><select name="office2" class="loc" id="office_2" onchange="changeDep2($(this))"><option value=""></option></select></a>');
	  			    for(var i=0; i<len; i++){
	  			    	dep2List+='<option value="'+dep2Arr[i].id+'">'+dep2Arr[i].depName+'</option>'
	  			    };
	  			    $('#office_2').append($(dep2List));
	  			}
	  		};
	  		if(f){
	  		  show.showDep2();
	  		}
	  	});
	}else{
		$('#office_2').parents('a').remove();
	}
};
setTimeout(function(){  //加一个延迟,让前面一个科室加载完成,这样才能获取到相应的value,对二级科室进行初始化
	getDep(true);
},300);
  