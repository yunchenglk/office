<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
							员工管理 <span class="fr text-small text-normal padding-top">发布时间：2016-07-08</span>
							<span
								class="fr margin-large-right padding-top text-small text-normal">最新版本：<em
								class="text-main">2.4.0.160708</em></span>
						</h6>

					</div>
					<div class="info-center-con">
						<div class=" info-center-title h5 margin-big-top clearfix">
							<span class="fl padding-large-right"><a
								href="Employee.jsp">员工列表</a></span> <span
								class="fl padding-large-right  manage-title"><a
								href="Employee_edit.jsp">添加员工</a></span>
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

				</div>
			</div>
		</div>
	</div>
</body>
</html>