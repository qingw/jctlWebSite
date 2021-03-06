<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>服务管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/website/serve/serve/">服务列表</a></li>
		<shiro:hasPermission name="website:serve:serve:edit"><li><a href="${ctx}/website/serve/serve/form">服务添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="serve" action="${ctx}/website/serve/serve/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>标题：</label>
				<form:input path="title" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
		<thead>
		<tr>
			<th>所属导航</th>
			<th>上级菜单</th>
			<th>图片路径</th>
			<th>标题</th>
			<th>内容</th>

			<th>是否显示</th>
				<shiro:hasPermission name="website:serve:serve:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="serve">
			<tr>
				<td><a href="${ctx}/website/serve/serve/form?id=${serve.id}">
						${serve.navId}
				</a></td>
				<td>
						${serve.navParent}
				</td>
				<td>
						${serve.picPath}
				</td>
				<td>
						${serve.title}
				</td>
				<td>
						${serve.context}
				</td>

				<td>
					<c:choose>
						<c:when test="${serve.isShow == 1}">
							<img src='${ctxStatic}/images/default/dui.png'/>
						</c:when>
						<c:when test="${serve.isShow == 0}">
							<img src='${ctxStatic}/images/default/cuo.png'/>
						</c:when>

					</c:choose>
				</td>
				<shiro:hasPermission name="website:serve:serve:edit"><td>
    				<a href="${ctx}/website/serve/serve/form?id=${serve.id}">修改</a>
					<a href="${ctx}/website/serve/serve/delete?id=${serve.id}" onclick="return confirmx('确认要删除该服务吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>