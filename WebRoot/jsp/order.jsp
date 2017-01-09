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
					<h6 class="padding-left manage-head-con">è®¢åç®¡ç</h6>
				</div>
				<div class="offcial-table input-table table-margin clearfix">
					<div class="tr-th clearfix">
						<div class="th w5 text-center">
							<!--<input class="margin-top-15" type="checkbox" />-->
						</div>
						<div class="th w20">è®¢åå·</div>
						<div class="th w20">äº§å</div>
						<div class="th w15">åå»ºæ¶é´</div>
						<div class="th w15">æ¯ä»/å¼éæ¶é´</div>
						<div class="th w10">
							æ¯ä»ç¶æ
							<!--<div class="select-table status-table fl status-left">
					        		<div>
					        			<input class="status-total" type="text" readonly="readonly" value="å·²æ¯ä»">
					        			<span class="bg-img"></span>
					        		</div>
					        		<ul>
					        			<li><a href="#">ææç¶æ</a></li>
					        			<li class="on"><a href="#">å·²æ¯ä»</a></li>
					        		</ul>
					        	</div>-->
						</div>
						<div class="th w10">éé¢</div>
						<div class="th w5 text-center">æä½</div>
					</div>
					<div class="tr non-info show border-bottom-none">
						<span>æ²¡æ¥è¯¢å°ç¬¦åæ¡ä»¶çè®°å½</span>
					</div>
				</div>
			</div>
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