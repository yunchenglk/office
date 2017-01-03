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
			<div class="company_identify">
				<div class="manage-head">
					<h6 class="padding-left manage-head-con">企业认证</h6>
				</div>
				<ul class="identify-step padding-large-tb margin-auto">
					<li class="margin-right-132">
						<p class="step-count bg-main text-white text-center margin-auto">
							1</p>
						<p class="text-main text-center">填写基本信息</p>
					</li>
					<li class="margin-right-144">
						<p
							class="step-count text-bg-b0 text-white text-center margin-auto">
							2</p>
						<p class="text-b0 text-center">上传证件照片</p>
					</li>
					<li>
						<p class="step-count icon icon-hook text-bg-b0 margin-auto"></p>
						<p class=" text-b0 text-center">提交成功</p>
					</li>
					<p class="step-going step-go-ps1 border-main border-dashed"></p>
					<p class="step-going step-go-ps2 border-b0 border-solid"></p>
				</ul>
				<form name="setp0" action="#" method="post" autocomplete="off">
					<div class="basic-info-detail clearfix">
						<div class="unit-style padding-big-lr clearfix">
							<h4 class="real-name-head margin-large-top">
								企业信息<span class="margin-left <text-normal></text-normal>">按照证书上的内容逐字填写</span>
							</h4>
							<div class="real-name-con margin-top-25 clearfix">
								<p class="content-left-zoon margin-small-top">证件类型</p>
								<div class="content-right-zoon margin-top-15">
									<label class="no-time"><span class="fl"> <input
											class="licence-class" type="radio" name="licence-class"
											checked="checked" data-hide="normal_licence"
											data-show="various_licence" value="0">
									</span><em class="fl">普通营业执照</em></label> <label class="no-time"><span
										class="fl"> <input
											class="licence-class1 margin-large-left" type="radio"
											name="licence-class" data-hide="various_licence"
											data-show="normal_licence" value="1">
									</span><em class="fl">多证合一营业执照</em></label>
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">企业名称</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" datatype="*"
										name="authname" value="">
								</div>
							</div>
							<div class="normal_licence clearfix hidden">
								<div class="real-name-con height-main margin-top-25 clearfix">
									<p class="content-left-zoon">社会信用代码</p>
									<div class="content-right-zoon">
										<input class="width-main input" type="text" name="credit_code"
											value="">
									</div>
								</div>
							</div>
							<div class="various_licence clearfix ">
								<div class="real-name-con height-main margin-top-25">
									<p class="content-left-zoon">工商执照注册号</p>
									<div class="text-a7 content-right-zoon">
										<input class="width-main input h6"
											placeholder="如: 000000000001234" type="text"
											name="registered_id" value="">
									</div>
								</div>
								<div class="real-name-con height-main margin-top-25">
									<p class="content-left-zoon">组织机构代码</p>
									<div class="text-a7 content-right-zoon">
										<input class="width-main input h6" placeholder="如: 00001234-1"
											type="text" name="organization_code" value="">
									</div>
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25 clearfix">
								<p class="content-left-zoon">单位所在地</p>
								<div class="content-right-zoon">
									<div class="select-table fl">
										<input type="hidden" name="district_id" value="" datatype="*">
										<div class="hd-select-city">
											<div class="select-country">
												<div class="country-title">请选择国家</div>
												<div class="menu-button-dropdown"></div>
												<input class="country-val" type="hidden">
												<div class="country-select-warp" style="display: none;">
													<a href="#" data-id="820000" data-level="1" data-text="城市">澳门</a><a
														href="#" data-id="700000" data-level="0"
														data-text="其它,城市,区县">港台</a><a href="#" data-id="100000"
														data-level="0" data-text="省份,城市,区县,乡镇">中国大陆</a>
												</div>
											</div>
											<div class="select-city">
												<div class="city-title">请选择省市区</div>
												<div class="menu-button-dropdown"></div>
												<input type="hidden" value="10000">
											</div>
										</div>
										<span id="check-area" class="text-mix">&nbsp;</span>
									</div>
								</div>
							</div>
							<div class="real-name-con margin-top-25 clearfix">
								<p class="content-left-zoon">详细地址</p>
								<div class="content-right-zoon">
									<textarea
										class="width-main height-large border-gray-around textarea"
										name="address"></textarea>
								</div>
							</div>
							<div class="real-name-con margin-top-25 clearfix">
								<p class="content-left-zoon">经营范围</p>
								<div class="content-right-zoon">
									<textarea
										class="width-main height-large border-gray-around textarea"
										name="generic_business_type"></textarea>
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25">
								<p class="content-left-zoon">营业期限</p>
								<div class="content-right-zoon">
									<div class="laydate-box fl">
										<input class="input laydate-icon hd-input" readonly="true"
											type="text" name="registered_date" placeholder="YYYY-MM-DD"
											tabindex="0"
											onclick="laydate({istime: false, format: 'YYYY-MM-DD' })"
											value="0">
									</div>
									<lable class="time"> <input type="checkbox"
										class="margin-big-left margin-top-12 fl"
										name="registered_check"> <span class="long-time fl">长期</span></lable>
								</div>
							</div>
						</div>
						<div class="unit-style padding-big-lr clearfix">
							<h4 class="real-name-head margin-large-top">法定代表人信息</h4>
							<div class="real-name-con height-main margin-top-25">
								<p class="content-left-zoon">法定代表人姓名</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text" name="legal_person"
										datatype="*" value="">
								</div>
							</div>
							<div class="real-name-con height-main margin-top-25">
								<p class="content-left-zoon">身份证号</p>
								<div class="content-right-zoon">
									<input class="width-main input" type="text"
										name="legal_idcard_number" datatype="*" value="">
								</div>
							</div>
							<div class="real-name-con margin-top-25">
								<p class="content-left-zoon ">填写人身份</p>
								<div class="content-right-zoon margin-top ">
									<label class="no-time1"><span class="fl"><input
											type="radio" name="race-class" checked="checked"
											data-hide="identify-agent" data-show="" value="0"></span><em
										class="fl">我是法定代表人</em></label> <label class="no-time1"><span
										class="fl"><input class="margin-large-left"
											type="radio" name="race-class" data-hide=""
											data-show="identify-agent" value="1"></span><em class="fl">我是代理人</em></label>
								</div>
							</div>
						</div>
						<div class="identify-agent hidden ">
							<div class="unit-style padding-big-lr clearfix">
								<h4 class="real-name-head margin-large-top">代理人信息</h4>
								<div class="real-name-con margin-top-25 clearfix">
									<p class="content-left-zoon">代理人姓名</p>
									<div class="content-right-zoon">
										<input class="width-main input" type="text"
											name="agent_person" value="">
									</div>
								</div>
								<div class="real-name-con height-main margin-top-25">
									<p class="content-left-zoon">身份证号</p>
									<div class="content-right-zoon">
										<input class="width-main input" type="text"
											name="agent_idcard_number" value="">
									</div>
								</div>
							</div>
						</div>
						<div class="unit-style padding-big-lr clearfix">
							<h4 class="real-name-head margin-large-top">联系方式</h4>
							<div class="real-name-con margin-tb-25 clearfix">
								<p class="content-left-zoon">联系人手机号码</p>
								<div class="content-right-zoon">
									<input class="width-main input text-a7 h6"
										placeholder="审核结果将通过短信发送至该手机" type="text" name="mobile"
										datatype="mobile" value="15501052244">
								</div>
							</div>
						</div>
					</div>
					<div class="unit-style padding-large-tb clearfix">
						<div
							class="margin-large-top padding-left text-left content-right-zoon">
							<input type="submit" value="下一步" class="submit fl">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>


</body>

</html>