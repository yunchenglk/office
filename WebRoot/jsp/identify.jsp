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
		<div class="view-product">
			<div class="indentify clearfix">
				<div class="manage-head">
					<h6 class="padding-left manage-head-con text-sub">认证类型</h6>
				</div>
				<div class="indentify-class padding-lr clearfix">
					<p class="margin-big-tb text-sub text-default">
						请选择认证类型，个人认证后续可升级为企业认证，企业认证一旦认证成功，无法变更为个人认证</p>
					<ul class="class-content clearfix">
						<li class="fl margin-large-35"><a class="class-detail fl "
							href="#">
								<div class="class-detail-top">
									<div class="text-center indentify-icon">
										<img src="../Images/identify_personal.png">
									</div>
									<h3 class="text-center">个人认证</h3>
									<p class="margin-tb padding-bottom text-justify info">
										用于个人或个体经营户认证，认证通过可获得短信模板自定义及认证用户特权</p>
									<ul class="class-detail-has margin-top text-lh-big">
										<li><span class="text-black-gray">自定义短信条数</span> <span
											class="fr text-gray-white">5条</span></li>
										<li><span class="text-black-gray">云市场认证优惠</span> <span
											class="fr text-gray-white">有</span></li>
										<li><span class="text-black-gray">个人认证勋章</span> <span
											class="fr text-gray-white">有</span></li>
									</ul>
								</div>
								<p class="continue text-big">选择并继续使用</p>
						</a></li>
						<li class="fl margin-large-35"><a class="class-detail fl "
							href="#">
								<div class="class-detail-top">
									<div class="text-center indentify-icon">
										<img src="../Images/identify_enterprise.png">
									</div>
									<h3 class="text-center">企业认证</h3>
									<p class="margin-tb padding-bottom text-justify info">
										用于企事业单位认证，认证通过可获得短信模板自定义及认证用户特权</p>
									<ul class="class-detail-has margin-top text-lh-big">
										<li><span class="text-black-gray">自定义短信条数</span> <span
											class="fr text-gray-white">10条</span></li>
										<li><span class="text-black-gray">云市场认证优惠</span> <span
											class="fr text-gray-white">有</span></li>
										<li><span class="text-black-gray">企业认证勋章</span> <span
											class="fr text-gray-white">有</span></li>
										<li><span class="text-black-gray">免费400电话(含800元话费)</span>
											<span class="fr text-gray-white">有</span></li>
									</ul>
								</div>
								<p class="continue text-big">选择并继续使用</p>
						</a></li>
						<li class="fl "><a class="class-detail fl disabled" href="#">
								<div class="class-detail-top">
									<div class="text-center indentify-icon">
										<img src="../Images/identify_developer.png">
									</div>
									<h3 class="text-center">服务商认证</h3>
									<p class="margin-tb padding-bottom text-justify info">
										服务商认证需先通过个人或企业认证，认证服务商可以入驻云市场，通过某某云市场销售获得报酬</p>
									<ul class="class-detail-has margin-top text-lh-big">
										<li><span class="text-black-gray">服务商认证勋章</span> <span
											class="fr text-gray-white">有</span></li>
										<li><span class="text-black-gray">云市场插件销售</span> <span
											class="fr text-gray-white">有</span></li>
										<li><span class="text-black-gray">云市场模板销售</span> <span
											class="fr text-gray-white">有</span></li>
										<li><span class="text-black-gray">云市场模块销售</span> <span
											class="fr text-gray-white">有</span></li>
									</ul>
								</div>
								<p class="continue text-big">即将推出</p>
						</a></li>
					</ul>
				</div>
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