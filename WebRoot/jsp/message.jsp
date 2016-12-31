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
				<div class="manage-head">
					<h6 class=" padding-left manage-head-con ">消息中心</h6>
				</div>
				<div class="info-center-con">
					<div class=" info-center-title h5 margin-big-top clearfix">
						<span class="fl padding-large-right manage-title"><a
							href="#">全部消息</a></span> <span class="fl padding-large-right"><a
							href="#">已读消息(0)</a></span> <span class="fl"><a href="#">未读消息(0)</a></span>
					</div>
					<p style="width: 56px; left: 20px;" class="solid-slider"></p>
				</div>
				<div class="offcial-table input-table table-margin clearfix">
					<div class="tr-th clearfix">
						<div class="th w5 text-center"></div>
						<div class="padding-left-15 th w55">标题内容</div>
						<div class="th w25">提交时间</div>
						<div class="th w15">类型</div>
					</div>
					<div class="non-info">
						<span>没有任何消息</span>
					</div>
				</div>
			</div>
			<div class="show-page padding-top-0 layout hidden">
				<ul class="tr-float">
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