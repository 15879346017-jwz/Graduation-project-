<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Basic -->
    	<meta charset="UTF-8" />
		<title>管理员</title>

		<!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		
		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="assets/ico/apple-touch-icon-152x152.png" />
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		<link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->
		<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />	
		<link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
		<link href="assets/plugins/bootstrap-datepicker/css/datepicker-theme.css" rel="stylesheet" />
		<link href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" />
		<link href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css" rel="stylesheet" />
		<link href="assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css" rel="stylesheet" />
		
		<!-- Theme CSS -->
		<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->
		<link href="assets/css/style.css" rel="stylesheet" />		
		
		<!-- end: CSS file-->	
	    
		
		<!-- Head Libs -->
		<script src="assets/plugins/modernizr/js/modernizr.js"></script>
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->		
		
		<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
		<script type="text/javascript">
			function logout(){
				if(confirm("您确定要退出系统吗？")){
					window.location.href="logout";
				}
			}
		</script>
		<script type="text/javascript">
			function adminusersave(){
		        var adminuser_username = document.getElementById('adminuser_username').value;
		        if (adminuser_username == '') {
		        	alert("管理员名称不能为空");
		        } else {
					var adminuser_password = document.getElementById('adminuser_password').value;
		        	if (adminuser_password == '') {
		        		alert("管理员密码不能为空！");
		        	} else {
	
						var adminuser_iphone = document.getElementById('adminuser_iphone').value;
						if (adminuser_iphone == '') {
							alert("手机号码不能为空！");
						} else {
							var adminuser_email = document.getElementById('adminuser_email').value;
							if (adminuser_email == '') {
								alert("电子邮箱不能为空！");
							} else {
								var adminuserId = document.getElementById('adminuserId').value;
								var adminuser_sn = document.getElementById('adminuser_sn').value;
								$.post(
										"adminusersave",
										{
											adminuserId : adminuserId,
											adminuser_sn : adminuser_sn,
											adminuser_username : adminuser_username,
											adminuser_password : adminuser_password,
											adminuser_iphone : adminuser_iphone,
											adminuser_email : adminuser_email
										},
										function(result) {
											var result = eval('(' + result + ')');
											if (result.result == "failone") {
												alert("用户名已存在");
											} else if (result.result == "successone") {
												alert("修改管理员信息成功");
												window.location.href = "adminuserlist";
											} else if (result.result == "failtwo") {
												alert("修改管理员信息失败");
											} else if (result.result == "successtwo") {
												alert("添加管理员成功");
												window.location.href = "adminuserlist";
											} else if (result.result == "failthree") {
												alert("添加管理员失败");
											}
									});
							}
						}
		        	}
				}
		        return flag;
			}
		</script>
		
	</head>
	
	<body>
	
		<!-- Start: Header -->
		<div class="navbar" role="navigation">
			<div class="container-fluid container-nav">
				<!-- Navbar Action -->
				<ul class="nav navbar-nav navbar-actions navbar-left">
					<li class="visible-md visible-lg"><a href="#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
					<li class="visible-xs visible-sm"><a href="#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>			
				</ul>
				<!-- Navbar Right -->
				<div class="navbar-right">					
					<div class="userbox">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<c:if test="${currentAdminUser.role_id==1}">
								<figure class="profile-picture hidden-xs">
									<img src="assets/img/avatar.jpg" class="img-circle" alt="" />
								</figure>
							</c:if>
							<div class="profile-info">
								<span class="name">${currentAdminUser.adminuser_username }</span>
								<span class="role"><i class="fa fa-circle bk-fg-success"></i> 
									<c:if test="${currentAdminUser.role_id==1}">
										管理员
									</c:if>
								</span>
							</div>
							<i class="fa custom-caret"></i>
						</a>
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">						
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%;">
											100%
										</div>
									</div>							
								</li>	
								<li>
									<a href="javascript:logout()"><i class="fa fa-power-off"></i> 退出系统</a>
								</li>
							</ul>
						</div>						
					</div>
					<!-- End Userbox -->
				</div>
				<!-- End Navbar Right -->
			</div>		
		</div>
		<!-- End: Header -->
		
		<!-- Start: Content -->
		<div class="container-fluid content">	
			<div class="row">
			
				<!-- Sidebar -->
				<div class="sidebar">
					<div class="sidebar-collapse">
						<!-- Sidebar Header Logo-->
						<div class="sidebar-header">
							<img src="assets/img/logo.png" class="img-responsive" alt="" />
						</div>
						<!-- Sidebar Menu-->
						<div class="sidebar-menu">
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-sidebar">
									<c:if test="${currentAdminUser.role_id==1}">
										<li class="active">
											<a href="main">
												<i class="fa fa-laptop" aria-hidden="true"></i><span>欢迎页</span>
											</a>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-envelope" aria-hidden="true"></i><span>管理员管理</span>
											</a>
											<ul class="nav nav-children">
												<li><a href="adminuserlist"><span class="text"> 管理员管理</span></a></li>
												<li><a href="adminuserupdatepassword"><span class="text"> 修改密码</span></a></li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-tasks" aria-hidden="true"></i><span>关于我们 </span>
											</a>
											<ul class="nav nav-children">
												<li><a href="aboutlist"><span class="text"> 关于我们 </span></a></li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-calendar" aria-hidden="true"></i><span>课程管理</span>
											</a>
											<ul class="nav nav-children">
												<li><a href="courselist"><span class="text"> 课程管理</span></a></li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-copy" aria-hidden="true"></i><span>师资管理 </span>
											</a>
											<ul class="nav nav-children">
												<li><a href="teacherlist"><span class="text"> 师资管理</span></a></li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-list-alt" aria-hidden="true"></i><span>用户管理 </span>
											</a>
											<ul class="nav nav-children">
												<li><a href="userlist"><span class="text"> 用户管理 </span></a></li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-table" aria-hidden="true"></i><span>订单管理 </span>
											</a>
											<ul class="nav nav-children">
												<li><a href="buylist"><span class="text"> 订单管理 </span></a></li>
											</ul>
										</li>
									</c:if>
								</ul>
							</nav>
						</div>
					</div>
					<div class="sidebar-footer">					
						<div class="small-chart-visits">
							<div class="small-chart" id="sparklineLineVisits"></div>
						</div>
					</div>
				</div>
		
				<!-- Main Page -->
				<div class="main ">
					<!-- Page Header -->
					<div class="page-header">
						<div class="pull-left">
							<ol class="breadcrumb visible-sm visible-md visible-lg">								
								<li><a><i class="icon fa fa-home"></i>Home</a></li>
								<li><a><i class="fa fa-list-alt"></i>管理员管理</a></li>
								<li class="active"><i class="fa fa-indent"></i>${title}</li>
							</ol>						
						</div>
						<div class="pull-right">
							<h2>${title}</h2>
						</div>					
					</div>
					<!-- End Page Header -->

					<div class="row">
						<div class="col-lg-12">				
							<div class="panel panel-default">
								<div class="panel-heading bk-bg-white">
									<h6><i class="fa fa-indent red"></i>${title}</h6>						
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>							
								<div class="panel-body bk-bg-white bk-padding-top-30 bk-padding-bottom-20">
									<form class="form-horizontal form-bordered">
										<input type="hidden" id="adminuserId" name="adminuserId" value="${adminuserId}">
										<div class="form-group">
											<label class="col-md-3 control-label" for="text-input">管理员编号</label>
											<div class="col-md-6">
												<c:choose>
												    <c:when test="${adminuser.adminuser_sn != '' && adminuser.adminuser_sn != null}">
														<input type="text" class="form-control" id="adminuser_sn" name="adminuser_sn" value="${adminuser.adminuser_sn}" readonly="readonly">
													</c:when>
													<c:otherwise>
														<input type="text" class="form-control" id="adminuser_sn" name="adminuser_sn" value="${adminuser_sn_max}" readonly="readonly">
													</c:otherwise>
												</c:choose>
												<span class="help-block">管理员编号由系统自动生成，不可编辑</span>
											</div>
										</div>	
										<div class="form-group">
                                             <label class="col-md-3 control-label">管理员名称</label>
                                             <div class="col-md-6">
                                            	 <input type="text" class="form-control" id="adminuser_username" name="adminuser_username" placeholder="请输入管理员名称" value="${adminuser.adminuser_username}">
                                        	 </div>
                                        </div>						
										<div class="form-group">
                                             <label class="col-md-3 control-label">管理员密码</label>
                                             <div class="col-md-6">
                                            	 <input type="password" class="form-control" id="adminuser_password" name="adminuser_password" placeholder="请输入密码" value="${adminuser.adminuser_password}">
                                        	 </div>
                                        </div>
                                        <div class="form-group">
                                             <label class="col-md-3 control-label">手机号码</label>
                                             <div class="col-md-6">
                                            	 <input type="number" class="form-control" id="adminuser_iphone" name="adminuser_iphone" placeholder="请输入手机号码" value="${adminuser.adminuser_iphone}">
                                        	 </div>
                                        </div>
                                        <div class="form-group">
                                             <label class="col-md-3 control-label">电子邮箱</label>
                                             <div class="col-md-6">
                                             	<input type="text" class="form-control" id="adminuser_email" name="adminuser_email" placeholder="请输入电子邮箱" value="${adminuser.adminuser_email}">
                                             </div>
                                        </div>
                                        <div class="form-group" align="center">
					                         <button type="button" class="btn btn-success" onclick="adminusersave();">提交</button>
					                         <button type="button" class="btn btn-default" onclick="javascript:history.back()">返回</button>
					                    </div>
									</form>
								</div>
							</div>					
						</div>
					</div>
				</div>
			
			</div>
		</div>
		
		<div class="clearfix"></div>		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		<script src="assets/vendor/js/jquery.min.js"></script>
		<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/vendor/skycons/js/skycons.js"></script>	
		<script src="assets/vendor/js/pace.min.js"></script>
		
		<!-- Plugins JS-->
		<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="assets/plugins/touchpunch/js/jquery.ui.touch-punch.min.js"></script>		
		<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
		<script src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
		<script src="assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>
		<script src="assets/plugins/maskedinput/js/jquery.maskedinput.js"></script>
		<script src="assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>
		
		<!-- Theme JS -->		
		<script src="assets/js/jquery.mmenu.min.js"></script>
		<script src="assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="assets/js/pages/form-elements.js"></script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>