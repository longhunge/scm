<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- EL表达式支持 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath %>">
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<title>供应链后台管理系统</title>
	
    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath %>bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Timeline CSS -->
    <link href="<%=basePath %>dist/css/timeline.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<%=basePath %>dist/css/sb-admin-2.css" rel="stylesheet">
	
	 <!-- DataTables CSS -->
    <link href="<%=basePath %>bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="<%=basePath %>bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="<%=basePath %>bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=basePath %>bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">

		function doImportExcel(){
	  		document.forms[0].action = "<%=basePath %>back/user_importExcel.action";
	  		document.forms[0].submit();
	  	}
		function doExportExcel(){
			document.forms[0].action = "<%=basePath %>back/user_exportExcel.action";
	  		document.forms[0].submit();
		}
		function doDeleteAll(){
      		document.forms[0].action = "<%=basePath %>back/user_deleteSelected.action";
      		document.forms[0].submit();
      	}
		
	   function funCheckAll(obj){  
	    var items = document.getElementsByTagName("input");  
	    for(var i=0;i<items.length;i++){  
	        if(items[i].type=="checkbox"&& items[i].name=="selectRaw")  
	            items[i].checked = obj.checked;  
	    	}  
		}		
	 </script>
	 
  </head>
  
  
<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%=basePath %>table.html">物流管理系统</a>
            </div>
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="<%=basePath %>#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="<%=basePath %>#">
                                <div>
                                    <strong>用户1</strong>
                                    <span class="pull-right text-muted">
                                        <em>时间</em>
                                    </span>
                                </div>
                                <div>摘要</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="<%=basePath %>#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="<%=basePath %>#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="<%=basePath %>#">
                                <strong>查看所有信息</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>

                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="<%=basePath %>#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="<%=basePath %>#"><i class="fa fa-user fa-fw"></i> 用户信息</a>
                        </li>
                        <li><a href="<%=basePath %>#"><i class="fa fa-gear fa-fw"></i> 设置</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="<%=basePath %>login.html"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                      
                        <li>
                            <a href="<%=basePath %>back/user_listui.action"><i class="fa fa-dashboard fa-fw"></i>主页</a>
                        </li>				
                    </ul>
                </div>
            </div>
        </nav>
		
		<!-------------------#######strart#########------------------------>
        <div id="page-wrapper">
		<!-------------------ENd------------------->
        <div class="row">        
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            	物流信息管理
                        </div>
						<form name="form1" action="" method="post" enctype="multipart/form-data">	
						<hr/>			
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
										<th><label class="checkbox-inline"><input type="checkbox" onclick="funCheckAll(this);">全选</label></th>
                                            <th>订单号</th>
											<th>地址</th>
                                            <th>收件人</th>
											<th>手机号</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="worder" items="${wolist}" varStatus="rowStatus">  
                                     <c:forEach var="order" items="${olist}" varStatus="rowStatus">
                                      <c:if test="${order.oid eq worder.oid }">
                                        <tr class="gradeC">
										    <td><input class="checkbox" name ="selectRaw" value="${user.u_id}" type="checkbox"></td>
                                            <td><c:out value="${worder.woid}"/></td>
											<td><c:out value="${order.address}"/></td>
                                            <td><c:out value="${order.uname}"/></td>
                                            <td><c:out value="${order.phone}"/></td>
                                            <td class="center">
                                              <a href="<%=basePath %>back/user_delete.action?user.u_id=${user.u_id}">删除</a>
                                            ||<a href="<%=basePath %>back/user_editui.action?user.u_id=${user.u_id}">更新状态</a>
                                            </td>
                                        </tr>
                                        </c:if>  
                                        </c:forEach>
                                      </c:forEach>                
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                       	 </form>
                    </div>
                    
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>

        </div>
	</div>


    <!-- jQuery -->
    <script src="<%=basePath %>bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=basePath %>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- DataTables JavaScript -->
    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=basePath %>bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="<%=basePath %>bower_components/jquery.dataTables.min.js"></script>
    <script src="<%=basePath %>bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
 
    
    
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
</body>
</html>
