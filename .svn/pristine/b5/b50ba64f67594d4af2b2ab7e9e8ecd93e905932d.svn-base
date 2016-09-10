//javascript Document
// author:jie yang -- 2015-10-27

function change(obj, fn) { // change()方法传入一个jQuery对象
    var str = obj.find('option:selected').html();
    obj.siblings('.emng-curselect').html(str);
    console.log(obj);
    fn && fn();
}

var _index = 0; // 定义为全局变量
// 获取主机地址之后的目录，如： ehealthmng/aaaaa
var pathName = window.document.location.pathname;
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
function changeLinkage(id) {
    var selectValue = '';
    var idx = parseInt(id.substr(3));
    $('#currentPage').val('1');

    selectValue = $('#' + id + ' option:selected').val();
    if (selectValue == '' && idx != 0) {
        selectValue = $('#dis' + (idx - 1) + ' option:selected').val();
    } else if (selectValue == '' && idx == 0) {
        selectValue = $("#loc_default option:selected").val();
    }
    ;
    $('#orgId').val(selectValue);
    if (idx < _index || (_index == 0 && idx >= _index)) {
        // 这里的10是随便加，只要超过select数就行，当前项目只到三级组织
        for (var i = idx + 1; i <= 10; i++) {
            $("#dis" + i).parent('.emng-select').remove();
        }
        _index = idx;
        getJson(idx + 1);
    } else if (_index == idx) {
        getJson(idx + 1);
    }

    function getJson(newId) {
        var arealist = '';
        var selectChoose = $('#' + id + ' option:selected').val(); // 虽然selectChoose和上面的selectValue获取的方式是一样的,但是作用不同selectValue用来放到表单中,selectChoose用来发送请求

        $
                .getJSON(
                        projectName + "/subOrg.json?type=all&orgId="
                                + selectChoose,
                        function(json) {
                            if (json.subOrgList == null || selectChoose == 0) {
                                return;
                            }
                            $('#' + id)
                                    .parent()
                                    .after(
                                            $('<a class="emng-select"><strong class="emng-curselect"></strong><select name="" class="loc" id="dis'
                                                    + newId
                                                    + '" onchange="changeLinkage(id)"><option value=""></option></select></a>'));
                            var select_root = $('#dis' + newId);
                            var areaArr = json.subOrgList;
                            for (var i = 0; i < areaArr.length; i++) {
                                arealist += '<option value="' + areaArr[i].id
                                        + '">' + areaArr[i].name + '</option>';
                            }
                            select_root.append($(arealist));
                            _index++;
                        });
    }
    ;

    function showChoose() {
        var str = $('#' + id).find('option:selected').html();
        $('#' + id).siblings('.emng-curselect').html(str);
    }
    ;
    showChoose();
}
