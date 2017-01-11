<%@page import="office.entity.DEPT"%>
<%@page import="java.util.List"%>
<%@page import="office.util.Page"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
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

		List<DEPT> list = db.getPage(pageIndex, pageSize);
		request.setAttribute("list", list);
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
					<div class="info-center-con">
						<div class=" info-center-title h5 margin-big-top clearfix">
							<span class="fl padding-large-right manage-title"><a
								href="dept.jsp">部门列表</a></span> <span class="fl padding-large-right"><a
								href="dept_edit.jsp">添加部门</a></span>
						</div>
						<p style="width: 56px; left: 20px;" class="solid-slider"></p>
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
							<x:forEach var="entity" items="${list}" varStatus="status">
								<div class="tr clearfix border-bottom-none">
									<div class="td w10">${entity.DEPT_ID }</div>
									<div class="td w20">${entity.DEPT_NAME }</div>
									<div class="td w20">${entity.DEPT_FID }</div>
									<div class="td w30">
										<x:out value="${entity.DEPT_DESCRIPTION }" default="无" />
									</div>
									<div class="td w20">
										<a
											href="<%=request.getContextPath()%>/jsp/dept_edit.jsp?id=${entity.DEPT_ID }"
											class="button-word2 ">编辑</a> <a href="javascript:void(0);"
											msg="确定删除此信息吗？" callback="del(${entity.DEPT_ID });"
											class="button-word2 btn_ajax_confirm">删除</a>
									</div>
								</div>
							</x:forEach>
						</div>
					</div>
					<x:import url="rollPage.jsp">
						<x:param name="totalCount"
							value="<%=Integer.toString(totalCount)%>"></x:param>
						<x:param name="pageIndex" value="<%=Integer.toString(pageIndex)%>"></x:param>
						<x:param name="pageSize" value="<%=Integer.toString(pageSize)%>"></x:param>
						<x:param name="countPage" value="<%=Integer.toString(countPage)%>"></x:param>
					</x:import>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function del(id) {
			$.getJSON("../dept.do", {
				t : 'del',
				id : id
			}, function(data) {
				if (data.status)
					alert("操作成功");
				else
					alert("操作失败");
				location.href = data.url;
			})
		}
	</script>

</body>
</html>