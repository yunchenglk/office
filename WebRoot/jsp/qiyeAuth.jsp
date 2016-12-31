<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>æ§å¶å°</title>
		<link rel="stylesheet" type="text/css" href="Css/identify.css" />
		<link rel="stylesheet" type="text/css" href="Css/layout.css" />
		<link rel="stylesheet" type="text/css" href="Css/account.css" />
		<link rel="stylesheet" type="text/css" href="Css/style.css" />
		<link rel="stylesheet" type="text/css" href="Css/control_index.css" />
		<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="Js/layer/layer.js"></script>
		<script type="text/javascript" src="Js/haidao.offcial.general.js"></script>
		<script type="text/javascript" src="Js/select.js"></script>
		<script type="text/javascript" src="Js/haidao.validate.js"></script>
	</head>

	<body>
		<div class="view-topbar">
			<div class="topbar-console">
				<div class="tobar-head fl">
					<a href="#" class="topbar-logo fl">
					<span><img src="Images/logo.png" width="20" height="20"/></span>
					</a>
					<a href="index.html" class="topbar-home-link topbar-btn text-center fl"><span>ç®¡çæ§å¶å°</span></a>
				</div>
			</div>
			<div class="topbar-info">
				<ul class="fr">
					<li class="fl dropdown topbar-notice topbar-btn">
					<a href="#" class="dropdown-toggle">
					<span class="icon-notice"></span>
					<span class="topbar-num have">0</span>
					<!--haveè¡¨ç¤ºææ¶æ¯ï¼æ²¡ææ¶æ¯å»æhave-->
					</a>
					</li>
					<!-- 					<li class="fl topbar-info-item strong">
					<div class="dropdown">
						<a href="#" class="dropdown-toggle topbar-btn">
						<span class="fl">å·¥åæå¡</span>
						<span class="icon-arrow-down"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">æçå·¥å</a></li>
							<li><a href="#">æäº¤å·¥å</a></li>
						</ul>
					</div>
					</li>
					 -->
					<li class="fl topbar-info-item">
					<div class="dropdown">
						<a href="#" class="topbar-btn">
						<span class="fl text-normal">å¸®å©ä¸ææ¡£</span>
						<span class="icon-arrow-down"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">æ¨¡æ¿å¼åæå</a></li>
							<li><a href="#">æææ°æ®å­å¸</a></li>
						</ul>
					</div>
					</li>
					<li class="fl topbar-info-item">
					<div class="dropdown">
						<a href="#" class="topbar-btn">
						<span class="fl text-normal">å°æ±</span>
						<span class="icon-arrow-down"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="login.html">éåº</a></li>
						</ul>
					</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="view-body">
			<div class="view-sidebar">
				<div class="sidebar-content">
					<div class="sidebar-nav">
						<div class="sidebar-title">
							<a href="#">
								<span class="icon"><b class="fl icon-arrow-down"></b></span>
								<span class="text-normal">äº§åä¸æå¡</span>
							</a>
						</div>
						<ul class="sidebar-trans">
							<li>
								<a href="webSet.html">
									<b class="sidebar-icon"><img src="Images/icon_author.png" width="16" height="16" /></b>
									<span class="text-normal">ç«ç¹ç®¡ç</span>
								</a>
							</li>
							<li>
								<a href="smsInfo.html">
									<b class="sidebar-icon"><img src="Images/icon_message.png" width="16" height="16" /></b>
									<span class="text-normal">ç­ä¿¡</span>
								</a>
							</li>
							<!-- <li>
								<a href="#">
									<b class="sidebar-icon"><img src="Images/icon_market.png" width="16" height="16" /></b>
									<span class="text-normal">äºå¸åº</span>
								</a>
							</li> -->
						</ul>
					</div>
					<div class="sidebar-nav">
						<div class="sidebar-title">
							<a href="#">
								<span class="icon"><b class="fl icon-arrow-down"></b></span>
								<span class="text-normal">ç¨æ·ä¸­å¿</span>
							</a>
						</div>
						<ul class="sidebar-trans">
							<li>
								<a href="userInfo.html">
									<b class="sidebar-icon"><img src="Images/icon_cost.png" width="16" height="16" /></b>
									<span class="text-normal">è´¦å·ç®¡ç</span>
								</a>
							</li>
							<li>
								<a href="identify.html">
									<b class="sidebar-icon"><img src="Images/icon_authentication.png" width="16" height="16" /></b>
									<span class="text-normal">å®åè®¤è¯</span>
								</a>
							</li>
							<li>
								<a href="message.html">
									<b class="sidebar-icon"><img src="Images/icon_news.png" width="16" height="16" /></b>
									<span class="text-normal">æ¶æ¯ä¸­å¿</span>
								</a>
							</li>
							<li>
								<a href="money.html">
									<b class="sidebar-icon"><img src="Images/icon_gold.png" width="16" height="16" /></b>
									<span class="text-normal">éå¸ç®¡ç</span>
								</a>
							</li>
							<li>
								<a href="order.html">
									<b class="sidebar-icon"><img src="Images/icon_order.png" width="16" height="16" /></b>
									<span class="text-normal">è®¢åç®¡ç</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="view-product">
				<div class="company_identify">
					<div class="manage-head">
						<h6 class="padding-left manage-head-con">ä¼ä¸è®¤è¯</h6>
					</div>
					<ul class="identify-step padding-large-tb margin-auto">
						<li class="margin-right-132">
						<p class="step-count bg-main text-white text-center margin-auto">
							1
						</p>
						<p class="text-main text-center">
							å¡«ååºæ¬ä¿¡æ¯
						</p>
						</li>
						<li class="margin-right-144">
						<p class="step-count text-bg-b0 text-white text-center margin-auto">
							2
						</p>
						<p class="text-b0 text-center">
							ä¸ä¼ è¯ä»¶ç§ç
						</p>
						</li>
						<li>
						<p class="step-count icon icon-hook text-bg-b0 margin-auto">
						</p>
						<p class=" text-b0 text-center">
							æäº¤æå
						</p>
						</li>
						<p class="step-going step-go-ps1 border-main border-dashed">
						</p>
						<p class="step-going step-go-ps2 border-b0 border-solid">
						</p>
					</ul>
					<form name="setp0" action="#" method="post" autocomplete="off">
						<div class="basic-info-detail clearfix">
							<div class="unit-style padding-big-lr clearfix">
								<h4 class="real-name-head margin-large-top">ä¼ä¸ä¿¡æ¯<span class="margin-left <text-normal></text-normal>">æç§è¯ä¹¦ä¸çåå®¹éå­å¡«å</span></h4>
								<div class="real-name-con margin-top-25 clearfix">
									<p class="content-left-zoon margin-small-top">
										è¯ä»¶ç±»å
									</p>
									<div class="content-right-zoon margin-top-15">
										<label class="no-time"><span class="fl">
										<input class="licence-class" type="radio" name="licence-class" checked="checked" data-hide="normal_licence" data-show="various_licence" value="0">
										</span><em class="fl">æ®éè¥ä¸æ§ç§</em></label>
										<label class="no-time"><span class="fl">
										<input class="licence-class1 margin-large-left" type="radio" name="licence-class" data-hide="various_licence" data-show="normal_licence" value="1">
										</span><em class="fl">å¤è¯åä¸è¥ä¸æ§ç§</em></label>
									</div>
								</div>
								<div class="real-name-con height-main margin-top-25 clearfix">
									<p class="content-left-zoon">
										ä¼ä¸åç§°
									</p>
									<div class="content-right-zoon">
										<input class="width-main input" type="text" datatype="*" name="authname" value="">
									</div>
								</div>
								<div class="normal_licence clearfix hidden">
									<div class="real-name-con height-main margin-top-25 clearfix">
										<p class="content-left-zoon">
											ç¤¾ä¼ä¿¡ç¨ä»£ç 
										</p>
										<div class="content-right-zoon">
											<input class="width-main input" type="text" name="credit_code" value="">
										</div>
									</div>
								</div>
								<div class="various_licence clearfix ">
									<div class="real-name-con height-main margin-top-25">
										<p class="content-left-zoon">
											å·¥åæ§ç§æ³¨åå·
										</p>
										<div class="text-a7 content-right-zoon">
											<input class="width-main input h6" placeholder="å¦: 000000000001234" type="text" name="registered_id" value="">
										</div>
									</div>
									<div class="real-name-con height-main margin-top-25">
										<p class="content-left-zoon">
											ç»ç»æºæä»£ç 
										</p>
										<div class="text-a7 content-right-zoon">
											<input class="width-main input h6" placeholder="å¦: 00001234-1" type="text" name="organization_code" value="">
										</div>
									</div>
								</div>
								<div class="real-name-con height-main margin-top-25 clearfix">
									<p class="content-left-zoon">
										åä½æå¨å°
									</p>
									<div class="content-right-zoon">
										<div class="select-table fl">
											<input type="hidden" name="district_id" value="" datatype="*">
											<div class="hd-select-city">
												<div class="select-country">
													<div class="country-title">
														è¯·éæ©å½å®¶
													</div>
													<div class="menu-button-dropdown">
													</div>
													<input class="country-val" type="hidden">
													<div class="country-select-warp" style="display: none;">
														<a href="#" data-id="820000" data-level="1" data-text="åå¸">æ¾³é¨</a><a href="#" data-id="700000" data-level="0" data-text="å¶å®,åå¸,åºå¿">æ¸¯å°</a><a href="#" data-id="100000" data-level="0" data-text="çä»½,åå¸,åºå¿,ä¹¡é">ä¸­å½å¤§é</a>
													</div>
												</div>
												<div class="select-city">
													<div class="city-title">
														è¯·éæ©çå¸åº
													</div>
													<div class="menu-button-dropdown">
													</div>
													<input type="hidden" value="10000">
												</div>
											</div>
											<span id="check-area" class="text-mix">&nbsp;</span>
										</div>
									</div>
								</div>
								<div class="real-name-con margin-top-25 clearfix">
									<p class="content-left-zoon">
										è¯¦ç»å°å
									</p>
									<div class="content-right-zoon">
										<textarea class="width-main height-large border-gray-around textarea" name="address"></textarea>
									</div>
								</div>
								<div class="real-name-con margin-top-25 clearfix">
									<p class="content-left-zoon">
										ç»è¥èå´
									</p>
									<div class="content-right-zoon">
										<textarea class="width-main height-large border-gray-around textarea" name="generic_business_type"></textarea>
									</div>
								</div>
								<div class="real-name-con height-main margin-top-25">
									<p class="content-left-zoon">
										è¥ä¸æé
									</p>
									<div class="content-right-zoon">
										<div class="laydate-box fl">
											<input class="input laydate-icon hd-input" readonly="true" type="text" name="registered_date" placeholder="YYYY-MM-DD" tabindex="0" onclick="laydate({istime: false, format: 'YYYY-MM-DD' })" value="0">
										</div>
										<lable class="time"><input type="checkbox" class="margin-big-left margin-top-12 fl" name="registered_check"><span class="long-time fl">é¿æ</span></lable>
									</div>
								</div>
							</div>
							<div class="unit-style padding-big-lr clearfix">
								<h4 class="real-name-head margin-large-top">æ³å®ä»£è¡¨äººä¿¡æ¯</h4>
								<div class="real-name-con height-main margin-top-25">
									<p class="content-left-zoon">
										æ³å®ä»£è¡¨äººå§å
									</p>
									<div class="content-right-zoon">
										<input class="width-main input" type="text" name="legal_person" datatype="*" value="">
									</div>
								</div>
								<div class="real-name-con height-main margin-top-25">
									<p class="content-left-zoon">
										èº«ä»½è¯å·
									</p>
									<div class="content-right-zoon">
										<input class="width-main input" type="text" name="legal_idcard_number" datatype="*" value="">
									</div>
								</div>
								<div class="real-name-con margin-top-25">
									<p class="content-left-zoon ">
										å¡«åäººèº«ä»½
									</p>
									<div class="content-right-zoon margin-top ">
										<label class="no-time1"><span class="fl"><input type="radio" name="race-class" checked="checked" data-hide="identify-agent" data-show="" value="0"></span><em class="fl">ææ¯æ³å®ä»£è¡¨äºº</em></label>
										<label class="no-time1"><span class="fl"><input class="margin-large-left" type="radio" name="race-class" data-hide="" data-show="identify-agent" value="1"></span><em class="fl">ææ¯ä»£çäºº</em></label>
									</div>
								</div>
							</div>
							<div class="identify-agent hidden ">
								<div class="unit-style padding-big-lr clearfix">
									<h4 class="real-name-head margin-large-top">ä»£çäººä¿¡æ¯</h4>
									<div class="real-name-con margin-top-25 clearfix">
										<p class="content-left-zoon">
											ä»£çäººå§å
										</p>
										<div class="content-right-zoon">
											<input class="width-main input" type="text" name="agent_person" value="">
										</div>
									</div>
									<div class="real-name-con height-main margin-top-25">
										<p class="content-left-zoon">
											èº«ä»½è¯å·
										</p>
										<div class="content-right-zoon">
											<input class="width-main input" type="text" name="agent_idcard_number" value="">
										</div>
									</div>
								</div>
							</div>
							<div class="unit-style padding-big-lr clearfix">
								<h4 class="real-name-head margin-large-top">èç³»æ¹å¼</h4>
								<div class="real-name-con margin-tb-25 clearfix">
									<p class="content-left-zoon">
										èç³»äººææºå·ç 
									</p>
									<div class="content-right-zoon">
										<input class="width-main input text-a7 h6" placeholder="å®¡æ ¸ç»æå°éè¿ç­ä¿¡åéè³è¯¥ææº" type="text" name="mobile" datatype="mobile" value="15501052244">
									</div>
								</div>
							</div>
						</div>
						<div class="unit-style padding-large-tb clearfix">
							<div class="margin-large-top padding-left text-left content-right-zoon">
								<input type="submit" value="ä¸ä¸æ­¥" class="submit fl">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<script>
			$(".sidebar-title").live('click', function() {
				if ($(this).parent(".sidebar-nav").hasClass("sidebar-nav-fold")) {
					$(this).next().slideDown(200);
					$(this).parent(".sidebar-nav").removeClass("sidebar-nav-fold");
				} else {
					$(this).next().slideUp(200);
					$(this).parent(".sidebar-nav").addClass("sidebar-nav-fold");
				}
			});
		</script>
	</body>

</html>