<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="view-sidebar">
	<div class="sidebar-content">
		<div class="sidebar-nav">
			<div class="sidebar-title">
				<a href="#"> <span class="icon"><b
						class="fl icon-arrow-down"></b></span> <span class="text-normal">基础信息设置</span>
				</a>
			</div>
			<ul class="sidebar-trans">
				<li><a href="dept.jsp"> <b class="sidebar-icon"><img
							src="../Images/icon_author.png" width="16" height="16" /></b> <span
						class="text-normal">部门管理</span>
				</a></li>
				<li><a href="Employee.jsp"> <b class="sidebar-icon"><img
							src="../Images/icon_author.png" width="16" height="16" /></b> <span
						class="text-normal">员工管理</span>
				</a></li>
				
				
				<li><a href="webSet.jsp"> <b class="sidebar-icon"><img
							src="../Images/icon_author.png" width="16" height="16" /></b> <span
						class="text-normal">站点管理</span>
				</a></li>
				<li><a href="smsInfo.jsp"> <b class="sidebar-icon"><img
							src="../Images/icon_message.png" width="16" height="16" /></b> <span
						class="text-normal">短信</span>
				</a></li>
				<!-- <li>
								<a href="#">
									<b class="sidebar-icon"><img src="../Images/icon_market.png" width="16" height="16" /></b>
									<span class="text-normal">云市场</span>
								</a>
							</li> -->
			</ul>
		</div>
		<div class="sidebar-nav">
			<div class="sidebar-title">
				<a href="#"> <span class="icon"><b
						class="fl icon-arrow-down"></b></span> <span class="text-normal">用户中心</span>
				</a>
			</div>
			<ul class="sidebar-trans">
				<li><a href="userInfo.jsp"> <b class="sidebar-icon"><img
							src="../Images/icon_cost.png" width="16" height="16" /></b> <span
						class="text-normal">账号管理</span>
				</a></li>
				<li><a href="identify.jsp"> <b class="sidebar-icon"><img
							src="../Images/icon_authentication.png" width="16" height="16" /></b>
						<span class="text-normal">实名认证</span>
				</a></li>
				<li><a href="message.jsp"> <b class="sidebar-icon"><img
							src="../Images/icon_news.png" width="16" height="16" /></b> <span
						class="text-normal">消息中心</span>
				</a></li>
				<li><a href="money.jsp"> <b class="sidebar-icon"><img
							src="../Images/icon_gold.png" width="16" height="16" /></b> <span
						class="text-normal">金币管理</span>
				</a></li>
				<li><a href="order.jsp"> <b class="sidebar-icon"><img
							src="../Images/icon_order.png" width="16" height="16" /></b> <span
						class="text-normal">订单管理</span>
				</a></li>
			</ul>
		</div>
	</div>
</div>
<script>
	$(".sidebar-title").on('click', function() {
		if ($(this).parent(".sidebar-nav").hasClass("sidebar-nav-fold")) {
			$(this).next().slideDown(200);
			$(this).parent(".sidebar-nav").removeClass("sidebar-nav-fold");
		} else {
			$(this).next().slideUp(200);
			$(this).parent(".sidebar-nav").addClass("sidebar-nav-fold");
		}
	});
</script>