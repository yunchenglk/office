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

			<div class="company_identify">
				<div class="manage-head">
					<h6 class="padding-left manage-head-con">编辑员工</h6>
				</div>
				<div class="info-center-con">
					<div class=" info-center-title h5 margin-big-top clearfix">
						<span class="fl padding-large-right"><a href="Employee.jsp">员工列表</a></span>
						<span class="fl padding-large-right  manage-title"><a
							href="Employee_edit.jsp">添加员工</a></span>
					</div>
					<p style="width: 56px; left: 105px;" class="solid-slider"></p>
				</div>
				<form id="form" name="setp0" action="../add" method="post"
					autocomplete="off">
					<input type="hidden" name="dbname" value="dept" /> <input
						type="hidden" name="url" value="dept.jsp" /> <input type="hidden"
						value="${dept.DEPT_ID }" name="DEPT_ID" />
					<div class="basic-info-detail clearfix" style="margin-top: 20px;">
						<div class="unit-style padding-big-lr clearfix">
							<h4 class="real-name-head margin-large-top">
								部门信息<span class="margin-left <text-normal></text-normal>">*</span>
							</h4>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">员工编号</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="EMP_CODE" value="${entity.EMP_CODE}">
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">员工姓名</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="EMP_PWD" value="${entity.EMP_PWD}">
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">登陆密码</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="EMP_PWD" value="${entity.EMP_PWD}">
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">员工性别</p>
								<div class="content-right-zoon">
									<label class="no-time"><span class="fl"> <input
											class="licence-class" type="radio" name="EMP_SEX"
											checked="checked" data-hide="normal_licence"
											data-show="various_licence" value="0">
									</span><em class="fl">男</em></label> <label class="no-time"><span
										class="fl"> <input
											class="licence-class1 margin-large-left" type="radio"
											name="EMP_SEX" data-hide="various_licence"
											data-show="normal_licence" value="1">
									</span><em class="fl">女</em></label>
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">入职时间</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="EMP_JOINDATE" value="${entity.EMP_JOINDATE}">
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">员工生日</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="EMP_BIRTH" value="${entity.EMP_BIRTH}">
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">家庭地址</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="EMP_ADDRESS" value="${entity.EMP_ADDRESS}">
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">员工邮箱</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="EMP_EMAIL" value="${entity.EMP_EMAIL}">
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">员工电话</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="EMP_PHONE" value="${entity.EMP_PHONE}">
								</div>
							</div>



							<div class="real-name-con margin-top-25 clearfix">
								<p class="content-left-zoon">备注</p>
								<div class="content-right-zoon">
									<textarea
										class="width-main height-large border-gray-around textarea"
										name="EMP_DESCRIPTION">${dept.EMP_DESCRIPTION }</textarea>
								</div>
							</div>
							<div class="normal_licence clearfix">
								<div class="real-name-con height-main margin-top-25 clearfix">
									<p class="content-left-zoon">所属部门</p>
									<div class="content-right-zoon">
										<select class="width-main input" id="sel_fid" name="DEPT_ID">

										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="unit-style padding-large-tb clearfix">
							<div
								class="margin-large-top padding-left text-left content-right-zoon">
								<input type="submit" value="提交" class="submit fl">
							</div>
						</div>
						<h3>DatePicker</h3>
						<input type="text" id="datetimepicker" /><br> <br>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$('#datetimepicker').datetimepicker();
	</script>

</body>
</html>