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
			<div class="authority">
				<div class="authority-head">
					<div class="manage-head">
						<h6 class="layout padding-left manage-head-con">
							站点管理 <span class="fr text-small text-normal padding-top">发布时间：2016-07-08</span>
							<span
								class="fr margin-large-right padding-top text-small text-normal">最新版本：<em
								class="text-main">2.4.0.160708</em></span>
						</h6>
					</div>
				</div>
				<div class="authority-content">
					<div class="list-content show">
						<div class="offcial-table tr-border margin-big-top clearfix">
							<div class="tr-th clearfix">
								<div class="th w20">站点名称</div>
								<div class="th w20">站点域名</div>
								<div class="th w15">版本号</div>
								<div class="th w15">安装时间</div>
								<div class="th w15">授权证书</div>
								<div class="th w15">操作</div>
							</div>
							<div class="tr clearfix border-bottom-none">
								<div class="td w20">我的系统</div>
								<div class="td w20">localhost</div>
								<div class="td w15">--</div>
								<div class="td w15">2016-01-10 11:54:07</div>
								<div class="td w15">
									<a href="#" class="button-word2">无</a>
								</div>
								<div class="td w15">
									<a href="#" msg="您是否删除此站点，如果删除会影响站点通信导致部分功能无法使用？"
										callback="del_site(624)" data-id=""
										class="button-word2 btn_ajax_confirm">删除</a>
								</div>
							</div>
						</div>
					</div>
					<div class="show-page padding-big-right">
						<div class="page">
							<div class="page">
								<ul class="offcial-page margin-top margin-big-right">
									<li>共<em class="margin-small-left margin-small-right">1</em>条数据
									</li>
									<li>每页显示<em class="margin-small-left margin-small-right">15</em>条
									</li>
									<li><a class="next disable">上一页</a></li>
									<li></li>
									<li><a class="next disable">下一页</a></li>
									<li><span class="fl">共<em
											class="margin-small-left margin-small-right">1</em>页
									</span></li>
								</ul>
							</div>
						</div>
					</div>
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