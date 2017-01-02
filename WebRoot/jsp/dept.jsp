<%@page import="office.entity.dept"%>
<%@page import="java.util.List"%>
<%@page import="office.util.Page"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="db" class="office.Server.deptService" />
<jsp:useBean id="pager" class="office.util.Page" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门列表</title>
</head>
<body>
	<%
		String pageindex = request.getParameter("pageIndex");
		if (pageindex == null)
			pageindex = "1";
		int pageIndex = Integer.parseInt(pageindex);
		int totalCount = db.getRowCount();
		int pageSize = 2;
		pager.setPageIndex(pageIndex);
		pager.setPageSize(pageSize);
		pager.setRowCount(db.getRowCount());
		int countPage = pager.getTotalPageCount();
		if (pageIndex < 1)
			pageIndex = 1;
		else if (pageIndex >= countPage)
			pageIndex = countPage;

		List<dept> list = db.getPage(pageIndex, pageSize);
	%>
	<jsp:include page="top.jsp" />
	<div class="view-body">
		<jsp:include page="left.jsp" />
		<div class="view-product">
			<div class="authority">
				<div class="authority-head">
					<div class="manage-head">
						<h6 class="layout padding-left manage-head-con">
							部门管理 <span class="fr text-small text-normal padding-top">发布时间：2016-07-08</span>
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
								<div class="th w10">部门ID</div>
								<div class="th w20">部门名称</div>
								<div class="th w20">上级部门</div>
								<div class="th w30">部门简介</div>
								<div class="th w20">操作</div>
							</div>
							<%
								for (dept entity : list) {
							%>
							<div class="tr clearfix border-bottom-none">
								<div class="td w10"><%=entity.getDept_id()%></div>
								<div class="td w20"><%=entity.getDept_name()%>门
								</div>
								<div class="td w20"><%=entity.getDept_fid()%></div>
								<div class="td w30"><%=entity.getDept_description()%></div>
								<div class="td w20">
									<a href="#" msg="您是否删除此站点，如果删除会影响站点通信导致部分功能无法使用？"
										callback="del_site(624)" data-id=""
										class="button-word2 btn_ajax_confirm">删除</a>
								</div>
							</div>
							<%
								}
							%>
						</div>
					</div>
					<div class="show-page padding-big-right">
						<div class="page">
							<div class="page">
								<ul class="offcial-page margin-top margin-big-right">
									<li>共<em class="margin-small-left margin-small-right"><%=totalCount%></em>条数据
									</li>
									<li>每页显示<em class="margin-small-left margin-small-right"><%=pageSize%></em>条
									</li>

									<li><a class="next disable"
										href="<%=request.getContextPath()%>/jsp/dept.jsp?pageIndex=<%=pageIndex - 1%>">上一页</a></li>
									<li></li>
									<li><a class="next disable"
										href="<%=request.getContextPath()%>/jsp/dept.jsp?pageIndex=<%=pageIndex + 1%>">下一页</a></li>
									<li><span class="fl">共<em
											class="margin-small-left margin-small-right"><%=countPage%></em>页
									</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>