<%@page import="office.entity.DEPT"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="db" class="office.Server.deptService" />
<%
	String id = request.getParameter("id");
	DEPT entity = new DEPT();
	if (id != null) {
		entity = db.getByID(Integer.parseInt(id));
	}
	request.setAttribute("dept", entity);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门编辑</title>
</head>
<body>

	<jsp:include page="top.jsp" />
	<div class="view-body">
		<jsp:include page="left.jsp" />
		<div class="view-product">

			<div class="company_identify">
				<div class="manage-head">
					<h6 class="padding-left manage-head-con">编辑部门</h6>
				</div>
				<div class="info-center-con">
					<div class=" info-center-title h5 margin-big-top clearfix">
						<span class="fl padding-large-right"><a href="dept.jsp">部门列表</a></span>
						<span class="fl padding-large-right  manage-title"><a
							href="dept_edit.jsp">添加部门</a></span>
					</div>
					<p style="width: 56px; left: 105px;" class="solid-slider"></p>
				</div>
				<form name="setp0" action="../add" method="post" autocomplete="off">
					<input type="hidden" name="dbname" value="dept" /> <input
						type="hidden" name="url" value="jsp/dept.jsp" /> <input type="hidden"
						value="${dept.DEPT_ID }" name="DEPT_ID" />
					<div class="basic-info-detail clearfix" style="margin-top: 20px;">
						<div class="unit-style padding-big-lr clearfix">
							<h4 class="real-name-head margin-large-top">
								部门信息<span class="margin-left <text-normal></text-normal>">*</span>
							</h4>

							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">部门名称</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="DEPT_NAME" value="${dept.DEPT_NAME}">
								</div>
							</div>
							<div class="normal_licence clearfix">
								<div class="real-name-con height-main margin-top-25 clearfix">
									<p class="content-left-zoon">上级部门</p>
									<div class="content-right-zoon">
										<select class="width-main input" id="sel_fid" name="DEPT_FID">
										</select>
									</div>
								</div>
							</div>
							<div class="real-name-con margin-top-25 clearfix">
								<p class="content-left-zoon">部门简介</p>
								<div class="content-right-zoon">
									<textarea
										class="width-main height-large border-gray-around textarea"
										name="DEPT_DESCRIPTION">${dept.DEPT_DESCRIPTION }</textarea>
								</div>
							</div>

						</div>
						<div class="unit-style padding-large-tb clearfix">
							<div
								class="margin-large-top padding-left text-left content-right-zoon">
								<input type="submit" value="提交" class="submit fl">
							</div>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$.ajax({
				url : '../dept.do',
				type : 'GET',
				data : {
					t : 'getFid'
				},
				dataType : "json",
				success : function(data) {
					var options = '<option value=0>顶级部门</option>';
					$.each(data, function(i, n) {
						options += "<option value='"+n.DEPT_ID+"'>"
								+ n.DEPT_NAME + "</option>";
					});
					$("#sel_fid").html(options);
					$("#sel_fid").val(${dept.DEPT_FID} );
			})
		})
	</script>
</body>
</html>
