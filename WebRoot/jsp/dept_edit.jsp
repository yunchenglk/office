<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<span class="fl padding-large-right manage-title"><a
							href="dept.jsp">部门列表</a></span> <span class="fl padding-large-right"><a
							href="dept_edit.jsp">添加部门</a></span>
					</div>
					<p style="width: 56px; left: 105px;" class="solid-slider"></p>
				</div>

				<form name="setp0" action="<%=request.getContextPath()%>/dept.do"
					method="post" autocomplete="off">
					<div class="basic-info-detail clearfix" style="margin-top: 20px;">
						<div class="unit-style padding-big-lr clearfix">
							<h4 class="real-name-head margin-large-top">
								部门信息<span class="margin-left <text-normal></text-normal>">*</span>
							</h4>

							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">部门名称</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="dept_name" value="">
								</div>
							</div>
							<div class="normal_licence clearfix">
								<div class="real-name-con height-main margin-top-25 clearfix">
									<p class="content-left-zoon">上级部门</p>
									<div class="content-right-zoon">
										<select class="width-main input" id="sel_fid">

										</select>
									</div>
								</div>
							</div>
							<div class="real-name-con margin-top-25 clearfix">
								<p class="content-left-zoon">部门简介</p>
								<div class="content-right-zoon">
									<textarea
										class="width-main height-large border-gray-around textarea"
										name="dept_desc"></textarea>
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
				success : function(data) {
					var options = '';
					$.each(data, function(i, n) {
						alert(n.dept_name);
						options += "<option value='"+n.dept_id+"'>"
								+ n.dept_name + "</option>";
					}); 
					$("#sel_fid").html(options);
				}

			})
		})
	</script>
</body>
</html>
