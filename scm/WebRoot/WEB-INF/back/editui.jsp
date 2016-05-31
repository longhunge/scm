<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<title>供应链后台管理系统</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath %>bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<%=basePath %>dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<%=basePath %>bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath %>js/bootstrapDatepickr-1.0.0.css">
	<script src="<%=basePath %>js/jquery-1.7.2.min.js"></script>
	<script>
			$(document).ready(function() {
				$("#calendar").bootstrapDatepickr({date_format: "Y-d-m"});
			});
	</script>	
	
</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				src="${basePath }###############">后台管理系统</a>
		</div>
		<!-- /.navbar-header -->
		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" src="${basePath }#"> <i
					class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-messages">
					<li><a src="${basePath }#">
							<div>
								<strong>用户1</strong> <span class="pull-right text-muted">
									<em>时间</em>
								</span>
							</div>
							<div>摘要</div>
					</a></li>
					<li class="divider"></li>
					<li><a src="${basePath }#">
							<div>
								<strong>John Smith</strong> <span class="pull-right text-muted">
									<em>Yesterday</em>
								</span>
							</div>
							<div>Lorem ipsum dolor sit amet, consectetur adipiscing
								elit. Pellentesque eleifend...</div>
					</a></li>
					<li class="divider"></li>
					<li><a src="${basePath }#">
							<div>
								<strong>John Smith</strong> <span class="pull-right text-muted">
									<em>Yesterday</em>
								</span>
							</div>
							<div>Lorem ipsum dolor sit amet, consectetur adipiscing
								elit. Pellentesque eleifend...</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" src="${basePath }#">
							<strong>查看所有信息</strong> <i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-messages --></li>

			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" src="${basePath }#"> <i
					class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a src="${basePath }#"><i
							class="fa fa-user fa-fw"></i> 用户信息</a></li>
					<li><a src="${basePath }#"><i
							class="fa fa-gear fa-fw"></i> 设置</a></li>
					<li class="divider"></li>
					<li><a src="${basePath }login.html"><i
							class="fa fa-sign-out fa-fw"></i> 退出</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">

					<li><a src="${basePath }table.html"><i
							class="fa fa-dashboard fa-fw"></i> -主页</a></li>
					<li><a src="${basePath }table_product.html"><i
							class="fa fa-pencil fa-fw"></i> -商品管理</a></li>
					<li><a src="${basePath }table_user.html"><i
							class="fa fa-bar-chart-o fa-fw"></i> -用户管理</span></a></li>
					<li><a src="${basePath }table_company.html"><i
							class="fa fa-truck fa-fw"></i> -物流公司管理</a></li>
					<li><a src="${basePath }table_manager.html"><i
							class="fa fa-android fa-fw"></i> -管理员账户管理</a></li>
					<li><a src="${basePath }table_order"><i
							class="fa fa-table fa-fw"></i> -订单管理</a></li>
					<li><a src="${basePath }table_pinglun"><i
							class="fa fa-linux fa-fw"></i> -评论管理</a></li>

				</ul>
			</div>
		</div>
		</nav>

		<!-------------------#######strart#########------------------------>
		<div id="page-wrapper">
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">添加用户</div>

						<div class="panel-body">
							<div class="row">
								<div class="col-lg-6">
									<form role="form" action="<%=basePath%>back/user_edit.action">
										<input type="hidden" value="${user.u_id }" name="user.u_id">
										<div class="form-group">
											<label>用户名: </label> <input class="form-control" type="text"
												name="user.u_account" value="${user.u_account}">
										</div>
										<div class="form-group">
											<label>密码</label> <input class="form-control" type="password"
												name="user.u_pwd">

										</div>
										<div class="form-group">
											<label>重复密码</label> <input class="form-control"
												type="password">

										</div>
										<div class="form-group">
											<label>姓名</label> <input class="form-control" placeholder="请输入姓名"
												name="user.u_name" value="${user.u_name}">
										</div>

										<div class="form-group">
											<label>头像</label> <input type="file">
										</div>

										<div class="form-group">
											<label>性别</label> <label class="radio-inline">
											 <input
												type="radio" name="user.u_sex" id="optionsRadiosInline1"
												value="0" checked>男
											</label> <label class="radio-inline"> <input type="radio"
												name="user.u_sex" id="optionsRadiosInline2" value="0">女
											</label> <label class="radio-inline"> <input type="radio"
												name="user.u_sex" id="optionsRadiosInline3" value="3">保密
											</label>
										</div>

										<div class="form-group">
											<label>权限</label> <select class="form-control"
												name="user.u_privilege">
												<option value="1">用户</option>
												<option value="2">物流公司</option>
												<option value="3">管理员</option>

											</select>
										</div>
										<div class="form-group">
											<label>生日</label>
											<input type="text" id="calendar" name="user.u_birthday" placeholder="请选择日期" class="form-control">
										</div>
										<div class="form-group">
											<label>状态</label> <label class="radio-inline"> <input
												type="radio" name="user.u_status" id="optionsRadiosInline1"
												value="1" checked>可用
											</label> <label class="radio-inline"> <input type="radio"
												name="user.u_status" id="optionsRadiosInline2" value="2">已激活
											</label> <label class="radio-inline"> <input type="radio"
												name="user.u_status" id="optionsRadiosInline3" value="3">不可用
											</label>
										</div>

										<button type="submit" class="btn btn-default">修改</button>
										<a href="<%=basePath %>back/user_listui.action"><button type="reset" class="btn btn-default">取消</button></a>
									</form>
								</div>
							</div>
							<!-- /.row (nested) -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->
	</div>
	
	<!-- jQuery -->
	<script src="<%=basePath %>bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath %>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath %>bower_components/metisMenu/dist/metisMenu.min.js"></script>
	<!-- 日期选择 -->
	<script src="<%=basePath %>dist/bootstrapDatepickr-1.0.0.min.js"></script>
</body>

</html>
