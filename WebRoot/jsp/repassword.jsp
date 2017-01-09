<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<title>控制台</title>
<meta name="keywords" content="ææç§æ" />
<meta name="description" content="ææç§æ" />
<link href="Css/layout.css" rel="stylesheet" type="text/css">
<link href="Css/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="Js/js.js"></script>
<style>
.gt_ajax_tip .ready {
	right: -56px;
}
</style>
</head>

<body class="login-bg">
	<div class="main ">
		<!--ç»å½-->
		<div class="login-dom login-max">
			<div class="logo text-center">
				<a href="#"> <img src="Images/logo.png" width="180px"
					height="180px">
				</a>
			</div>
			<div class="login container " id="login">
				<p class="text-big text-center logo-color">
					åå»ºææè´¦å·ï¼é©°éªçµå­åå¡</p>
				<p class=" text-center margin-small-top logo-color text-small">
					æ§å¶å° | äºå¹³å° | è®ºå | äºå¸åº</p>
				<form class="register-form" action="index.html" method="post"
					autocomplete="off">
					<div class="num-box ">
						<div class="area fl">+86(ä¸­å½)</div>
						<input type="text" placeholder="è¯·è¾å¥ææºå·"
							autofocus="true" id="num-name" name="mobile" datatype="m"
							nullmsg="è¯·å¡«åæ­£ç¡®çææºå·ç ">
					</div>
					<div class="slider-box">
						<div id="captcha" style="margin-left: 12px;"></div>
					</div>
					<input type="hidden" name="formhash" value="5abb5d21" /> <input
						type="submit" class="btn text-center login-btn"
						value="åééªè¯ç ">
					<div class="forget">
						<a href="repassword.html" class="forget-pwd text-small fl">å¿è®°ç»å½å¯ç ï¼</a><a
							href="login.html" class="forget-new text-small fr"
							id="forger-login">å·²æè´¦å·ï¼ç«å³ç»å½</a>
					</div>
				</form>
			</div>
		</div>
		<div class="footer text-center text-small ie">
			Copyright 2013-2016 ææç§ææéå¬å¸ çæææ <a href="#"
				target="_blank">æ»ICPå¤13005806å·</a> <span
				class="margin-left margin-right">|</span>
			<script src="#" language="JavaScript"></script>
		</div>
		<div class="popupDom">
			<div class="popup text-default"></div>
		</div>
	</div>
</body>
<script type="text/javascript" src="Js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
	
	function popup_msg(msg){
		$(".popup").html(""+msg+"");
			$(".popupDom").animate({
				"top": "0px"
			}, 400);
			setTimeout(function() {
				$(".popupDom").animate({
					"top": "-40px"
				}, 400);
			}, 2000);
		
	}
	/*å¨ç»ï¼æ³¨åï¼*/
	$(document).ready(function(e) {
		/*æéª*/
		var geetest_status = false;       
    
        var captchaObj = new Geetest({
        	gt: "",
            challenge: "",
            product: "float" // äº§åå½¢å¼  
        }); // å®ä¾åï¼configä¸ºéç½®åæ°
	
	    captchaObj.appendTo("#captcha"); // ç»å®å°idä¸ºcaptchaçåç´ ä¸
	
	    captchaObj.onSuccess(function () {
	        geetest_status=true;
	    });
		/*è°ç¨éªè¯*/
		$('.register-form').Validform({
			ajaxPost:true,
			tiptype:function(msg){
				if(msg)popup_msg(''+msg+'');
			},
			beforeSubmit:function(curform){
				if(geetest_status == false){
					popup_msg('è¯·æå¨æ»å,å®æéªè¯');
					return false;
				}
				return true;
			},
			callback:function(data){
				popup_msg(''+data.info+'');
				if(data.status == 1){
					window.location.href=""+data.url+""
				}
			}
		});	
	});
</script>
</html>