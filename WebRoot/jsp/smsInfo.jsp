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
			<div class="message-manage">
				<div class="manage-head">
					<h6 class="padding-left manage-head-con">短信管理</h6>
				</div>
				<div class="manage-detail">
					<h6 class="h5">某某的短信平台只需站点后台绑定账号并开启即可使用，多个站点均可通用短信余额</h6>
					<div class="margin-tb manage-detail-con clearfix">
						<span class="h5 fl">短信剩余：<em class="h2">0 </em>条
						</span> <a class="h5 recharge fl" href="#">充值</a> <a
							class="h5 margin-large-left custom fl" href="#">自定义短信</a>
					</div>
				</div>
				<div class="manage-record margin-lr">
					<h6 class="margin-big-top">
						<span class="fl manage-title border-bottom-main">发送记录</span> <span
							class="fr record-fond">
							<div class="select-table sel_small fr">
								<div>
									<input readonly="readonly" value="全部站点" type="text"> <span>
										<img src="/statics/console/images/icon_lit1.png" width="10">
									</span>
								</div>
								<ul>
								</ul>
							</div> <span class="fr margin-small-top">按站点查找：</span>
						</span>
						<div class="clear"></div>
					</h6>
					<div class="offcial-table margin-top clearfix">
						<div class="tr-th clearfix">
							<div class="th w35">
								<div class="w80 text-center">发送内容</div>
							</div>
							<div class="th w20 text-center">发送时间</div>
							<div class="th w20 text-center">使用站点</div>
							<div class="th w15 text-center">条数</div>
							<div class="th w10 text-center">状态</div>
						</div>
						<div class="non-info" style="display: block">
							<span>没有任何记录</span>
						</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
			<div class="show-page padding-big-right hidden">
				<div class="page"></div>
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