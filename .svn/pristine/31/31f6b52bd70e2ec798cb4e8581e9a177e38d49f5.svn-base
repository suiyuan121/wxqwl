<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<head>
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
<title>幸运大转盘</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<style type="text/css">
input::-webkit-inner-spin-button {
	-webkit-appearance: none;
}

input::-webkit-outer-spin-button {
	-webkit-appearance: none;
}

body {
	padding: 0;
	margin: 0;
}

.main_pt {
	width: 80%;
	position: relative;
	margin: 0 auto;
}

.pointer {
	margin: 0 auto;
	position: absolute;
	top: 20%;
	left: 38%;
	width: 24%;
	height: 48%;
	cursor: pointer;
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jQueryRotate.2.2.js"></script>
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script>
    var degree = 0;
    var myname = '';
    var myphone = 0;
    var is_working = 0;
    var mycode = '1q2w3e4r!@#$';
    function bodyonload() {

    }
    function toPlay() {

        $("#diskbtn").attr("style", "width:70%");
        var degree = '';
        var msg = '';
        $.ajax({
            url : "getdegree.json",
            type : "get",
            dataType : 'json',
            async : false,
            success : function(result) {
                degree = result.degree;
                msg = result.errMsg;
            },
            error : function(json) {
                alert("系统繁忙!");
            }
        });

        if (msg == 'fail') {
            alert("系统繁忙!");
            return;
        }
        if (degree != null && degree != '') {
            var rotateAngle = 360 * 5 - degree;
            $("#diskbtn").css({
                "transform" : "rotate(" + rotateAngle + "deg)",
                "-webkit-transform" : "rotate(" + rotateAngle + "deg)",
                "-o-transform" : "rotate(" + rotateAngle + "deg)",
                "-moz-transform" : "rotate(" + rotateAngle + "deg)",
                "-webkit-transition" : "all ease 5s",
                "-otransition" : "all ease 5s",
                "-moz-transition" : "all ease 5s",
            });
            setTimeout(function() {
                if (degree > 45 && degree < 90) {
                    $('#two').css('display', 'block');
                    //alert('恭喜您，中了二等奖！');
                } else if (degree > 135 && degree < 180) {
                    $('#three').css('display', 'block');
                    //alert('恭喜您，中了三等奖！');
                } else if (degree > 225 && degree < 270) {
                    $('#one').css('display', 'block');
                    //alert('恭喜您，中了一等奖！');
                } else if (degree > 315 && degree < 360) {
                    $('#four').css('display', 'block');
                    //alert('恭喜您，中了幸运奖！');
                } else {
                    $('#five').css('display', 'block');
                }
            }, 6000);
        }
        ;

    }
    function openid(obb) {
        document.getElementById(obb).style.display = "block";
    }
    function turnoff(obj) {
        document.getElementById(obj).style.display = "none";
    }

    function searchresult() {

        $
                .ajax({
                    url : "searchresult.json",
                    type : "post",
                    data : "phone=" + myphone,
                    success : function(data, textStatus) {
                        if (data != undefined && data != "") {
                            var list = eval(data);
                            var content = '';
                            if (list.length <= 0) {
                                content = '<p>没有抽奖纪录！</p>';
                            }
                            var max_length = 10;
                            if (list.length < 10) {
                                max_length = list.length;
                            }
                            for (var i = 0; i < max_length; i++) {
                                content = content + '<p>' + list[i].time
                                        + '&nbsp;&nbsp;&nbsp;&nbsp; '
                                        + list[i].grade + '</p>'
                            }
                            $('#lotteryresult').html(content);
                            document.getElementById('prize_jl').style.display = "block";

                        }
                    },
                    error : function(json) {
                        alert("系统繁忙!");
                        //  $('#startplaybtn').css('display','block');
                        // $('#startplaybtn').removeAttr('disabled');
                    }
                });

    }
    $(function() {
        $("#startbtn").rotate({
            bind : {
                click : function() {
                    toPlay();
                }
            }
        });
    });
</script>
</head>



<body>
	<!--主体div-->
	<div class="main_one" style="width: 100%; margin: 0 auto;">

		<!--大转盘界面div-->
		<div id="main" style="width: 100%">
			<div class="main_title">
				<img src="images/title.png" width="60%" />
			</div>
			<div style="width: 100%; height: 20px;"></div>
			<div class="monkey">

				<div style="clear: both;"></div>
			</div>
			<div class="msg" style="width: 100%;"></div>

			<!--底盘与时针div-->
			<div>
				<div class="demo" style="width: 100%:clear:both;">
					<div class="main_pt">
						<img src="images/lottrey_bg.png" id="diskbtn" style="width: 70%;" />
						<img class="pointer" src="images/lottrey_pointer1.png"
							id="startbtn" style="" />
					</div>
					<div style="clear: both;"></div>
				</div>
				<div style="clear: both;"></div>
			</div>

			<!--立即抽奖与中奖纪录按钮-->
			<div class="button_cj">
				<a href="javascript:void(0);" onclick="toPlay()"> <img
					src="images/ljcj.png" width="40%" /></a> <a onClick="searchresult()">
					<img src="images/zjjl.png" width="40%" />
				</a>
			</div>

			<!--活动介绍div-->
			<div class="hdgz">
				<div class="main_textbg">
					<div class="main_text">
						<div style="text-align: center;">
							<p>
								<b>活动介绍</b>
							</p>
						</div>
						<p>2016年4月20日起</p>
						<p>
							<b>一、活动对象：</b>
						</p>
						<p>南通大学绑定注册公众平台的用户</p>
						<p>
							<b>二、活动内容：</b>
						</p>
						<p>点击转盘抽奖即可获得相应奖品</p>
						<p>
							如有疑问请致电<b>18362156503</b>。
						</p>
					</div>
				</div>
			</div>

		</div>
		<!--大转盘界面div  结束-->



		<!--一等奖div-->
		<div id="one" class="prize" style="display: none;">
			<div class="main_info">
				<div class="out">
					<a onClick="javascript:turnoff('one')"><img
						src="images/out.png" width="35" /></a>
				</div>
				<div style="height: 10px; width: 100%;"></div>
				<div class="info_div">
					<div class="center_div">
						<img src="images/coin1.png" width="40%" />
					</div>

					<div class="center_div">
						<img src="images/text1.png" width="70%" />
					</div>

					<div class="center_div jxcj">
						<a onClick="javascript:turnoff('one')"> <img
							src="images/jxcj.png" width="60%;" />
						</a>
					</div>
				</div>
			</div>
		</div>

		<!--二等奖div-->
		<div id="two" class="prize" style="display: none;">
			<div class="main_info">
				<div class="out">
					<a onClick="javascript:turnoff('two')"><img
						src="images/out.png" width="35" /></a>
				</div>
				<div style="height: 10px; width: 100%;"></div>
				<div class="info_div">
					<div class="center_div">
						<img src="images/coin2.png" width="40%" />
					</div>

					<div class="center_div">
						<img src="images/text2.png" width="70%" />
					</div>

					<div class="center_div jxcj">
						<a onClick="javascript:turnoff('two')"> <img
							src="images/jxcj.png" width="60%;" />
						</a>
					</div>
				</div>
			</div>
		</div>

		<!--三等奖div-->
		<div id="three" class="prize" style="display: none;">
			<div class="main_info">
				<div class="out">
					<a onClick="javascript:turnoff('three')"><img
						src="images/out.png" width="35" /></a>
				</div>
				<div style="height: 10px; width: 100%;"></div>
				<div class="info_div">
					<div class="center_div">
						<img src="images/coin1.png" width="40%" />
					</div>

					<div class="center_div">
						<img src="images/text3.png" width="70%" />
					</div>

					<div class="center_div jxcj">
						<a onClick="javascript:turnoff('three')"> <img
							src="images/jxcj.png" width="60%;" />
						</a>
					</div>
				</div>
			</div>
		</div>

		<!--幸运奖div-->
		<div id="four" class="prize" style="display: none;">
			<div class="main_info">
				<div class="out">
					<a onClick="javascript:turnoff('four')"><img
						src="images/out.png" width="35" /></a>
				</div>
				<div style="height: 10px; width: 100%;"></div>
				<div class="info_div">
					<div class="center_div">
						<img src="images/coin2.png" width="40%" />
					</div>

					<div class="center_div">
						<img src="images/text4.png" width="70%" />
					</div>

					<div class="center_div jxcj">
						<a onClick="javascript:turnoff('four')"> <img
							src="images/jxcj.png" width="60%;" />
						</a>
					</div>
				</div>
			</div>
		</div>

		<!--未中奖div-->
		<div id="five" class="prize" style="display: none;">
			<div class="main_info">
				<div class="out">
					<a onClick="javascript:turnoff('five')"><img
						src="images/out.png" width="35" /></a>
				</div>
				<div style="height: 10px; width: 100%;"></div>
				<div class="info_div">
					<div class="center_div">
						<img src="images/coin3.png" width="40%" />
					</div>

					<div class="center_div">
						<img src="images/text5.png" width="70%" />
					</div>

					<div class="center_div jxcj">
						<a onClick="javascript:turnoff('five')"> <img
							src="images/jxcj.png" width="60%;" />
						</a>
					</div>
				</div>
			</div>
		</div>

		<!--中奖纪录div-->
		<div id="prize_jl" class="prize" style="display: none;">
			<div class="main_info">
				<div class="out">
					<a onClick="javascript:turnoff('prize_jl')"><img
						src="images/out.png" width="35" /></a>
				</div>
				<div style="height: 10px; width: 100%;"></div>
				<div class="info_div">
					<div class="center_div">
						<img src="images/prize_jl.png" width="60%" />
					</div>

					<div id="lotteryresult" class="center_div"></div>
				</div>
			</div>
		</div>
		<div style="width: 100%; height: 10px;"></div>
		<div class="copyright">
			<div
				style="position: relative; width: 80%; margin: 0 auto; text-align: center;">
				<p style="margin-bottom: 0px;">南通大学交通学院</p>
			</div>
			<div style="width: 100%; height: 10px;"></div>
		</div>


	</div>
</body>