<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<title>ææç§æ</title>
<meta name="keywords" content="ææç§æ" />
<meta name="description" content="ææç§æ" />
<link href="Css/layout.css" rel="stylesheet" type="text/css">
<link href="Css/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="Js/js.js"></script>
</head>

<body class="login-bg">
	<!--ç»å½-->
	<div class="main login-dom">
		<div class="successDom">
			<div class="four-top">
				<div class="logo1 text-center ">
					<a href="#"> <img src="Images/logo.png" width="180px"
						height="180px">
				</div>
				</a>
				<div class="logo-color margin-big-top text-big text-center">
					éåºæå</div>
				<div class="logo-color margin-big-top text-center text-small">
					<a class="text-white" id="href" href="#">
						é¡µé¢æ­£å¨è·³è½¬ï¼è¯·ç¨ç­ <b id="wait">2
					</a></b>
				</div>
			</div>
		</div>
		<div class="footer text-center text-small ">
			Copyright 2013-2016 ææç§ææéå¬å¸ çæææ
			æ»ICPå¤13005806å· <span class="margin-left margin-right">|</span>
		</div>
		<div class="popupDom">
			<div class="popup text-default"></div>
		</div>
	</div>
</body>
<script type="text/javascript">
		$(".successDom").fadeIn("fast", function() {
			$(".successDom").animate({
				"top": "50%"
			}, 500);
		})
	</script>
<script type="text/javascript">
		(function() {
			var wait = document.getElementById('wait'),
				href = document.getElementById('href').href;
			var interval = setInterval(function() {
				var time = --wait.innerHTML;
				if (time <= 0) {
					location.href = href;
					clearInterval(interval);
				};
			}, 1000);
		})();
	</script>

</html>