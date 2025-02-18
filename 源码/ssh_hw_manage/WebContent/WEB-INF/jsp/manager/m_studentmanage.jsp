<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
    <!-- 包含头部信息用于适应不同设备 -->
    <meta name="viewport" content="width=device-width, initial-scale=1
    	user-scalable=no">
    <!-- 包含 bootstrap 样式表 -->
    <link rel="stylesheet" href="/ssh_hw_manage/BootStrap/css/bootstrap.min.css">
	<title>学生管理</title>
	
	<script type="text/javascript">
		//删除学生
		function del(id){
			$.get("/ssh_hw_manage/manager/delStudent?id=" + id,function(data){
				/* alert(data.result); */
				if("success" == data.result){
					alert("删除成功!");
					window.location.reload(); 
				}else{
					alert("删除失败!")
				}
			});
		}
		
		//若学生信息修改有错-->则提示学生信息修改出错
		function error(){	
			var error = "${error}";
			if(error.value!=null){		//如果不等于空，说明返回来时出错
				alert(error.value);
			}
		}
		window.onload = error;
		
		//面包屑导航
		function setbreadcrumb(){
			$("ol.breadcrumb",parent.document).html("<li><a href='javascript:void(0)''>首页</a></li>"+"<li class='active'>修改学生<li>");
		}
	</script>
	
</head>
<body>

	<%
		int a = 0;
	%>

	<div class="text-center">
		<strong style="font-size:20px;">学生总览</strong>
		<!-- <strong class="pull-right">总人数：xx</strong> -->
	</div>
	<table class="table table-hover table-bordered table-striped">
		<thead>
			<tr>
				<th>序号</th>
				<th>学号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>班级</th>
				<th>密码</th>
				<th>学院</th>
				<th>修改</th>
				<th style="width: 45px;">
					删除
				</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${!empty student}" >
				<c:forEach items="${student}" var="s">
					<%-- <c:if test="${status.count%2==0 } ">
						<tr class="success" >
					</c:if>
					<c:if test="${status.count%2!=0 }" > --%>
						<tr>
					<%-- </c:if> --%>
						<td><%=++a %></td>
						<td>${ s.s_account }</td>
						<td>${ s.s_name }</td>
						<td>${ s.s_sex }</td>
						<td>${ s.s_c_id }</td>
						<td>${ s.s_password }</td>
						<td>${ s.s_dept }</td>
						<td><a href="/ssh_hw_manage/manager/updateStudent_jsp?id=${s.id }" onclick="setbreadcrumb()">修改</a></td>
						<td>
							<a type="button" class="close" href = "javascript:del('${s.id }')">
								<span class="glyphicon glyphicon-trash"></span>
								<span class="sr-only">关闭</span>
							</a>
						</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>

<!-- JavaScript 放置在文档最后面可以使页面加载速度更快 -->
    <!-- 可选: 包含 jQuery 库 -->
    <script src="/ssh_hw_manage/BootStrap/js/jquery-3.1.1.js"></script>
    <!-- 可选: 合并了 Bootstrap JavaScript 插件 -->
    <script src="/ssh_hw_manage/BootStrap/js/bootstrap.min.js"></script>
</body>
</html>