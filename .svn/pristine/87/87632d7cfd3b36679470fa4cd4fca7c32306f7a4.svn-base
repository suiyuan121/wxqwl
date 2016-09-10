/**
 * @param formName
 * @param pageList
 */
function showPageLabel(formName, pageList) {
    init(formName);
}

function init(formName) {
    var totalCount = parseInt($("#totalCount").val());
    var pageSize = parseInt($("#pageSize").val());
    var pageNum = parseInt($("#pageNum").val());
    var currentPage = parseInt($("#currentPage").val());
    // alert(currentPage)

    var first = firstPage('javascript:gotoPage(' + formName + ',' + 1 + ')');

    var prev = beforePage('javascript:gotoPage(' + formName + ','
            + (currentPage - 1) + ')', currentPage);

    var next = nextPage('javascript:gotoPage(' + formName + ','
            + (currentPage + 1) + ')', currentPage);

    var last = lastPage('javascript:gotoPage(' + formName + ',' + pageNum + ')');

    if (totalCount > 0) {
        if (pageNum == 1) {
            $('#pagination')
                    .html('共一页    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
        } else {
            $('#pagination').html(first + prev + next + last);
        }
    }

}

function gotoPage(formName, pageNum) {
    var formId = '#' + formName;
    var frm = $(formName);
    if (pageNum == 0) {
        pageNum = 1;
    }
    $('#currentPage').val(pageNum);
    frm.submit();
}

function firstPage(link) {
    var first = '<li class="first"><a href="' + link + '">首页</a></li>';
    return first;
}
function beforePage(link, currentPage) {
    var before = '<li class="prev"><a href="' + link
            + '"><i class="arrow arrow2"></i>上一页</a></li>';
    return before;
}
function nextPage(link, currentPage) {
    var next = '<li class="next"><a href="' + link
            + '">下一页<i class="arrow arrow3"></i></a></li>';
    return next;
}
function lastPage(link) {
    var last = '<li class="last"><a href="' + link + '">末页</a></li>';
    return last;
}