// 获取主机地址之后的目录，如： ehealthmng/aaaaa
var pathName = window.document.location.pathname, projectName = pathName
        .substring(0, pathName.substr(1).indexOf('/') + 1), _index = 0;

function change(obj, fn) { // change()方法传入一个jQuery对象
    var str = obj.find('option:selected').html();
    obj.siblings('.emng-curselect').html(str);
    fn && fn();
}

$('.loc').each(function(i, e) {
    // 先在前端加一个空option
    change($(e));
});

function getLoc(id) {
    // 展示被选中的option值
    function showChoose() {
        var str = $('#' + id).find('option:selected').html();
        $('#' + id).siblings('.emng-curselect').html(str);
    }
    ;
    showChoose();

    // 删除不符合条件的省市select
    var idx = parseInt(id.substr(3)), selectValue = '';
    selectValue = $("#" + id + " option:selected").val();
    if (selectValue == '') {
        selectValue = $('#dis' + (idx - 1) + ' option:selected').val();
    }
    $('#LocId').val(selectValue);
    if (idx < _index || (_index == 0 && idx >= _index)) {
        // 这里的10是随便加，只要超过select数就行，当前项目只到三级组织
        for (var i = idx + 1; i <= 6; i++) {
            $("#dis" + i).parent('.emng-select').remove();
        }
        _index = idx;
        getJson(idx + 1);
    } else if (_index == idx) {
        getJson(idx + 1);
    }
    ;

    function getJson(newId) {
        var arealist = '';
        var selectChoose = $('#' + id + ' option:selected').val();

        $
                .getJSON(
                        projectName + "/subLoc.json?locId=" + selectChoose,
                        function(json) {
                            if (json.subLocList == null) {
                                return;
                            }
                            $('#' + id)
                                    .parent()
                                    .after(
                                            $('<a class="emng-select org"><strong class="emng-curselect"></strong><select name="" class="loc" id="dis'
                                                    + newId
                                                    + '" onchange="getLoc(id)"><option value=""></option></select></a>'));
                            var select_root = $('#dis' + newId);
                            var areaArr = json.subLocList;
                            for (var i = 0; i < areaArr.length; i++) {
                                arealist += '<option value="'
                                        + areaArr[i].registerLoc + '">'
                                        + areaArr[i].locName + '</option>';
                            }
                            select_root.append($(arealist));
                            _index++;
                        });
    }
    ;
};