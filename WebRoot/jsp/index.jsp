<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>控制台</title>
</head>
<body>
	<jsp:include page="top.jsp" />
	<div class="view-body">
		<jsp:include page="left.jsp" />
		<div class="view-product background-color">
			<div class="padding-big background-color">
				<div class="account-info clearfix">
					<div class="text-box-main min-width-300 fl">
						<dl>
							<dt class="padding-big-left lists-border-list clearfix">
								<div class="title fl padding-big-top padding-big-bottom">
									<p>HI,小朱</p>
									<p class="margin-small-top clearfix">
										<span class="fl">账户安全级别：<em class="text-blue-deep">高</em></span>
										<!--没有实名认证-->
										<!-- <a class="button bg-blue-deep icon icon-button-blue fl margin-left" href="#">立即实名认证</a> -->
										<!--通过实名认证-->
										<a
											class="button bg-green-deep icon icon-button-green fl margin-left"
											href="#">通过实名认证</a>
									</p>
								</div>
								<span class="fr icon-head"> <img
									src="http://user.haidao.la/avatar.php?uid=1504&type=virtual&size=middle"
									alt="账户头像">
								</span>
							</dt>
							<dd class="padding-big clearfix">
								<p class="w50 fl">
									<i class="fl icon icon-mobile"></i> <span
										class="fl margin-left">手机：已绑定</span>
								</p>
								<p class="w50 fl">
									<i class="fl icon icon-email"></i> <span class="fl margin-left">邮箱：已绑定</span>
								</p>
								<p class="w50 fl">
									<i class="fl icon icon-wechat"></i> <span
										class="fl margin-left">微信：<a class="text-underline"
										href="#">未绑定</a></span>
								</p>
								<p class="w50 fl">
									<i class="fl icon icon-password"></i> <span
										class="fl margin-left">支付密码：<a class='text-underline'
										href="#"> 未设置</a></span>
								</p>
							</dd>
						</dl>
					</div>
					<div class="text-box-main min-width-360 fl">
						<dl>
							<dt class="padding-big lists-border-list clearfix">
								<div class="fl w50 title">
									<p>账户余额</p>
									<p class="margin-small-top clearfix">
										<span class="fl"><em class="h3 text-red-deep">0.00
										</em>元</span> <a class="fl margin-left button btn-red text-white" href="#">充值</a>
									</p>
								</div>
								<div class="fl w50 padding-left title">
									<p>短信条数</p>
									<p class="margin-small-top clearfix">
										<span class="fl"><em class="h3 text-blue-deep">0 </em>条</span>
										<a class="fl margin-left button btn-red text-white"
											target="view_window" href="#">购买</a>
									</p>
								</div>
							</dt>
							<dd class="padding-big">
								<div class="account-class text-hidden">
									<a href="#">未支付订单</a> <a href="#">已支付订单</a> <a href="#">充值记录</a>
									<a href="#">消费记录</a> <a href="#">提交工单</a>
								</div>
							</dd>
						</dl>
					</div>
					<div class="text-box-main min-width-300 fl margin-right-none">
						<dl>
							<dt class="padding-big lists-border-list clearfix">
								<div class="fl title">
									<p>交流群：</p>
									<p class="text-sliver text-default margin-small-top">
										<em class="h3 text-golden margin-big-right">❹群：</em>537054447
									</p>
								</div>
								<div class="fr">
									<a class="button btn-orange text-white"
										href="http://jq.qq.com/?_wv=1027&k=28Xajoq" target="_blank">点击加入</a>
								</div>
							</dt>
							<dd class="padding-big">
								<div class="account-class text-hidden">
									<p>您好，我是您的交流群：，在使用中有任何问题，欢迎随时联系！</p>
								</div>
							</dd>
						</dl>
					</div>
				</div>

				<!--产品-->
				<div class="account-product margin-big-top clearfix">
					<div class="text-box-main padding-big fl mine-product">
						<h2 class="h6 margin-big-bottom">我的产品</h2>
						<div class="mine-product-content clearfix">
							<ul class="w50 fl lists">
								<!-- <li class="w70 lists-border-list">
										<p class="border-list-text">云托管服务： <em class="orange">0</em>  台	
											<a class="text-main fr" href="#">查看</a>
										</p>
									</li>  -->
								<li class="w70 lists-border-list">
									<p class="border-list-text">
										云市场应用： <em class="orange">0</em> 台 <a class="text-main fr"
											href="#">查看</a>
									</p>
								</li>
								<li class="w70 lists-border-list">
									<p class="border-list-text">
										云市场模块： <em class="orange">0</em> 台 <a class="text-main fr"
											href="#">查看</a>
									</p>
								</li>
								<li class="w70 lists-border-list">
									<p class="border-list-text">
										云市场模板： <em class="orange">0</em> 台 <a class="text-main fr"
											href="#">查看</a>
									</p>
								</li>

							</ul>
							<ul class="w50 fl lists">
								<!-- <li class="w80 lists-border-list">
										<p class="border-list-text">15天内到期的云托管服务： <em class="orange">0</em>  台	
											<a class="text-main fr" href="#">查看</a>
										</p>
									</li>  -->
								<li class="w80 lists-border-list">
									<p class="border-list-text">
										15天内到期的云市场应用： <em class="orange">0</em> 台 <a
											class="text-main fr" href="#">查看</a>
									</p>
								</li>
								<li class="w80 lists-border-list">
									<p class="border-list-text">
										15天内到期的云市场模块： <em class="orange">0</em> 台 <a
											class="text-main fr" href="#">查看</a>
									</p>
								</li>
								<li class="w80 lists-border-list">
									<p class="border-list-text">
										15天内到期的云市场模板： <em class="orange">0</em> 台 <a
											class="text-main fr" href="#">查看</a>
									</p>
								</li>
							</ul>
						</div>
					</div>
					<div class="text-box-main padding-big fl w25">
						<h2 class="h6 margin-big-bottom">我的产品</h2>
						<ul class="lists">
							<li class="lists-list"><a href="#">05-10
									云托管服务临时维护公告管服务临时维护公告管服务临时维护公告管服务临时维护公告管服务临时维护公告管服务临时维护公告</a></li>
							<li class="lists-list"><a href="#">05-10 云托管服务临时维护公告</a></li>
							<li class="lists-list"><a href="#">05-10 云托管服务临时维护公告</a></li>
							<li class="lists-list"><a href="#">05-10 云托管服务临时维护公告</a></li>
							<li class="lists-list"><a href="#">05-10 云托管服务临时维护公告</a></li>
							<li class="lists-list"><a href="#">05-10 云托管服务临时维护公告</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>