<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<div class="show-page padding-big-right">
	<div class="page">
		<div class="page">
			<ul class="offcial-page margin-top margin-big-right">
				<li>共<em class="margin-small-left margin-small-right">${param.totalCount }</em>条数据
				</li>
				<li>每页显示<em class="margin-small-left margin-small-right">${param.pageSize }</em>条
				</li>
				<x:if test="${param.pageIndex > 1}">
					<li><a class="next disable"
						href="<%=request.getContextPath()%>/jsp/dept.jsp?pageIndex=${param.pageIndex -1} ">上一页</a></li>
				</x:if>
				<li></li>
				<x:if test="${param.pageIndex < param.countPage}">
					<li><a class="next disable"
						href="<%=request.getContextPath()%>/jsp/dept.jsp?pageIndex=${param.pageIndex +1}">下一页</a></li>
				</x:if>
				<li><span class="fl">共<em
						class="margin-small-left margin-small-right">${param.countPage }</em>页
				</span></li>
			</ul>
		</div>
	</div>
</div>