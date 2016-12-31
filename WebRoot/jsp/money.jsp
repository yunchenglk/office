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
				<div class="info-center">
					<div class=" padding-big-tb manage-head">
						<h6 class="padding-left manage-head-con">金币管理<span class="own text-normal">拥有金币：<em class="text-roseo h2 margin-right">150</em>枚</span></h6>
					</div>
					<div class="info-center-con">
						<div class="coin_attent">
							<p>
								某某金币是为了感谢对某某云商突出贡献的资深用户，长期支持某某云商用户特别设置的优惠货币。
							</p>
							<p>
								官方网站以及论坛、QQ群、微信以及微博会不定期举行活动，参与活动就有机会获得金币，某某金币无法直接购买，一枚币价值1.00元。
							</p>
						</div>
					</div>
					<div class="offcial-table table-margin clearfix">
						<div class="tr-th clearfix">
							<div class="th w30 text-center">
								明细
							</div>
							<div class="th w50 text-center">
								数量
							</div>
							<div class="th w20 text-center">
								时间
							</div>
						</div>
						<div class="tr clearfix border-bottom-none">
							<div class="td w30 padding-big-left">
								云市场跳票奖励
							</div>
							<div class="td w50 text-center text-roseo">
								100
							</div>
							<div class="td w20 text-center">
								2016-07-01 11:09:09
							</div>
						</div>
						<div class="tr clearfix border-bottom-none">
							<div class="td w30 padding-big-left">
								新老用户感恩回馈赠送金币
							</div>
							<div class="td w50 text-center text-roseo">
								50
							</div>
							<div class="td w20 text-center">
								2016-01-10 11:50:22
							</div>
						</div>
					</div>
				</div>
				<div class="page">
					<ul class="offcial-page margin-top margin-big-right">
						<li>共<em class="margin-small-left margin-small-right">2</em>条数据</li>
						<li>每页显示<em class="margin-small-left margin-small-right">15</em>条</li>
						<li><a class="next disable">上一页</a></li>
						<li></li>
						<li><a class="next disable">下一页</a></li>
						<li><span class="fl">共<em class="margin-small-left margin-small-right">1</em>页</span></li>
					</ul>
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