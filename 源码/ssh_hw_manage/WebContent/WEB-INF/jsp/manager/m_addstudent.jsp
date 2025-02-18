<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
    <!-- 包含头部信息用于适应不同设备 -->
    <meta name="viewport" content="width=device-width, initial-scale=1
    	user-scalable=no">
    <!-- 包含 bootstrap 样式表 -->
    <link rel="stylesheet" href="/ssh_hw_manage/BootStrap/css/bootstrap.min.css">
	<title>学生管理-增加</title>
	
	<script type="text/javascript">  
	    function addStudent(){  
	        var form = document.forms[0];  
	        form.action = "/ssh_hw_manage/manager/addStudent";  
	        form.method="post";  
	        form.submit();  
	    }  
	</script> 
	
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
			
				<form class="form-horizontal" role="form" action="" name="studentForm">
					<div class="form-group">
						 <label for="inputEmail3" class="col-sm-2 control-label">学号:</label>
						<div class="col-sm-2">
							<input type="text" name="s_account" class="form-control" id="inputEmail3" />
						</div>
					</div>
					<div class="form-group">
						 <label for="inputEmail3" class="col-sm-2 control-label">姓名:</label>
						<div class="col-sm-2">
							<input type="text" name="s_name" class="form-control" id="inputEmail3" />
						</div>
					</div>
					<div class="form-group">
						 <label for="inputEmail3" class="col-sm-2 control-label">性别:</label>
						<div class="col-sm-2">
							<input type="radio" name="s_sex" value="男" />
							<label>男</label>&nbsp;
							<input type="radio" name="s_sex" value="女" />
							<label>女</label>
						</div>
					</div>
					<div class="form-group">
						 <label for="inputEmail3" class="col-sm-2 control-label">班级:</label>
						<div class="col-sm-2">
							<input type="text" name="s_c_id" class="form-control" id="inputEmail3" />
						</div>
					</div>
					<div class="form-group">
						 <label for="inputEmail3" class="col-sm-2 control-label">密码:</label>
						<div class="col-sm-2">
							<input type="text" name="s_password" class="form-control" id="inputEmail3" />
						</div>
					</div>
					<div class="form-group">
						 <label for="inputEmail3" class="col-sm-2 control-label">学院:</label>
						<div class="col-sm-2">
							<input type="text" name="s_dept" class="form-control" id="inputEmail3" />
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							 <button type="button" class="btn btn-default" onclick="addStudent()">添加</button>&nbsp;&nbsp;&nbsp;
							 <button type="reset" class="btn btn-default">重置</button>
						</div>
					</div>
				</form>
				
			</div>
		</div>
	</div>

<!-- JavaScript 放置在文档最后面可以使页面加载速度更快 -->
    <!-- 可选: 包含 jQuery 库 -->
    <script src="/ssh_hw_manage/BootStrap/js/jquery-3.1.1.js"></script>
    <!-- 可选: 合并了 Bootstrap JavaScript 插件 -->
    <script src="/ssh_hw_manage/BootStrap/js/bootstrap.min.js"></script>
</body>
</html>